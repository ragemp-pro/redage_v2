global.entity = null;
global.nearestObject = null;

var lastEntCheck = 0;
var checkInterval = 200;

var backlightColor = [196, 17, 21];

var blockcontrols = false;
global.cuffed = false;
var hasmoney = false;
var isInSafeZone = false;

var lastCuffUpdate = new Date().getTime();

function getLookingAtEntity() {
    let startPosition = mp.players.local.getBoneCoords(12844, 0.5, 0, 0);
    var resolution = mp.game.graphics.getScreenActiveResolution(1, 1);
    let secondPoint = mp.game.graphics.screen2dToWorld3d([resolution.x / 2, resolution.y / 2, (2 | 4 | 8)]);
    if (secondPoint == undefined) return null;

    startPosition.z -= 0.3;
    const result = mp.raycasting.testPointToPoint(startPosition, secondPoint, mp.players.local, (2 | 4 | 8 | 16));

    if (typeof result !== 'undefined') {
        if (typeof result.entity.type === 'undefined') return null;
        if (result.entity.type == 'object' && result.entity.getVariable('TYPE') == undefined) return null;

        let entPos = result.entity.position;
        let lPos = mp.players.local.position;
        if (mp.game.gameplay.getDistanceBetweenCoords(entPos.x, entPos.y, entPos.z, lPos.x, lPos.y, lPos.z, true) > 8) return null;
        return result.entity;
    }
    return null;
}

function getNearestObjects() {

    var tempO = null;
    if (mp.players.local.isInAnyVehicle(false)) {
        var players = mp.players.toArray();
        players.forEach(
            (player) => {
                var posL = mp.players.local.position;
                var posO = player.position;
                var distance = mp.game.gameplay.getDistanceBetweenCoords(posL.x, posL.y, posL.z, posO.x, posO.y, posO.z, true);
                if (mp.players.local != player && mp.players.local.dimension === player.dimension && distance < 2) {
                    if (tempO === null) tempO = player;
                    else if (mp.game.gameplay.getDistanceBetweenCoords(posL.x, posL.y, posL.z, posO.x, posO.y, posO.z, true) <
                        mp.game.gameplay.getDistanceBetweenCoords(posL.x, posL.y, posL.z, tempO.position.x, tempO.position.y, tempO.position.z, true))
                        tempO = player;
                }
            });
    }
    else {
        var objects = mp.objects.toArray();
        objects.forEach(
            (object) => {
                var posL = mp.players.local.position;
                var posO = object.position;
                var distance = mp.game.gameplay.getDistanceBetweenCoords(posL.x, posL.y, posL.z, posO.x, posO.y, posO.z, true);
                if (object.getVariable('TYPE') != undefined && mp.players.local.dimension === object.dimension && distance < 3) {
                    if (tempO === null) tempO = object;
                    else if (mp.game.gameplay.getDistanceBetweenCoords(posL.x, posL.y, posL.z, posO.x, posO.y, posO.z, true) <
                        mp.game.gameplay.getDistanceBetweenCoords(posL.x, posL.y, posL.z, tempO.position.x, tempO.position.y, tempO.position.z, true))
                        tempO = object;
                }
            });
    }
    global.nearestObject = tempO;
}

mp.events.add('blockMove', function (argument) {
    blockcontrols = argument;
});

mp.events.add('CUFFED', function (argument) {
    global.cuffed = argument;
});

mp.events.add('hasMoney', function (argument) {
    hasmoney = argument;
    if (!argument) mp.players.local.setEnableHandcuffs(false);
});

mp.events.add('safeZone', function (argument) {
    isInSafeZone = argument;
});

mp.keys.bind(0x47, false, function () { // G key
    if (global.menuCheck() || global.cuffed || mp.players.local.getVariable('InDeath') == true && !mp.players.local.isInAnyVehicle(false)) return;
    if (global.circleOpen) {
        global.CloseCircle();
        return;
    }
    if (!global.loggedin || global.chatActive || global.entity == null || new Date().getTime() - global.lastCheck < 1000) return;
    switch (global.entity.type) {
        case "object":
            if (global.entity && mp.objects.exists(global.entity)) {
                mp.events.callRemote('oSelected', global.entity);
            }
            global.entity = null;
            return;
        case "player":
            mp.gui.cursor.visible = true;
            global.OpenCircle('Игрок', 0);
            break;
        case "vehicle":
            mp.gui.cursor.visible = true;
            global.OpenCircle('Машина', 0);
            break;
    }
    global.lastCheck = new Date().getTime();
});

mp.keys.bind(0x71, false, function () { // F2 key
    if (global.menuCheck() || mp.players.local.getVariable('InDeath') == true) return;
    // player
    if (global.circleOpen) {
        global.CloseCircle();
        return;
    }
    if (!global.loggedin || global.chatActive || global.nearestObject == null || new Date().getTime() - global.lastCheck < 1000) return;

    if (global.nearestObject && global.nearestObject.type == 'object' && mp.objects.exists(global.nearestObject)) {
        mp.events.callRemote('oSelected', global.nearestObject);
    }
    else if (global.nearestObject && mp.players.exists(global.nearestObject)) {
        global.entity = global.nearestObject;
        mp.gui.cursor.visible = true;
        global.OpenCircle('Игрок', 0);
    }

    global.lastCheck = new Date().getTime();
});


var truckorderveh = null;

mp.events.add('SetOrderTruck', (vehicle) => {
    try {
        if(truckorderveh == null) truckorderveh = vehicle;
		else truckorderveh = null;
    } catch (e) {
	}
});

mp.events.add('render', () => {
	try {
        if (!global.loggedin) return;
		if (!global.admingm) mp.players.local.setInvincible(false);
        if (mp.players.local.isSprinting() || mp.players.local.isOnAnyBike()) mp.game.player.restoreStamina(100);
        mp.game.player.setLockonRangeOverride(1.5);
        mp.game.controls.disableControlAction(1, 7, true);
		// thanks to kemperrr
		if (mp.game.invoke(getNative('IS_CUTSCENE_ACTIVE'))) {
	        mp.game.invoke(getNative('STOP_CUTSCENE_IMMEDIATELY'))
		}

	    if (mp.game.invoke(getNative('GET_RANDOM_EVENT_FLAG'))) {
	        mp.game.invoke(getNative('SET_RANDOM_EVENT_FLAG'), false);
		}

		if (mp.game.invoke(getNative('GET_MISSION_FLAG'))) {
			mp.game.invoke(getNative('SET_MISSION_FLAG'), false);
		}


		if (pocketEnabled) {
	        mp.game.controls.disableControlAction(2, 0, true);
	    }

	    if (blockcontrols) {
		    mp.game.controls.disableAllControlActions(2);
			mp.game.controls.enableControlAction(2, 30, true);
	        mp.game.controls.enableControlAction(2, 31, true);
		    mp.game.controls.enableControlAction(2, 32, true);
			mp.game.controls.enableControlAction(2, 1, true);
	        mp.game.controls.enableControlAction(2, 2, true);
		}
		if (hasmoney) {
	        mp.players.local.setEnableHandcuffs(true);
        }
        if (isInSafeZone) {
            mp.game.controls.disableControlAction(2, 24, true);
            mp.game.controls.disableControlAction(2, 69, true);
            mp.game.controls.disableControlAction(2, 70, true);
            mp.game.controls.disableControlAction(2, 92, true);
            mp.game.controls.disableControlAction(2, 114, true);
            mp.game.controls.disableControlAction(2, 121, true);
            mp.game.controls.disableControlAction(2, 140, true);
            mp.game.controls.disableControlAction(2, 141, true);
            mp.game.controls.disableControlAction(2, 142, true);
            mp.game.controls.disableControlAction(2, 257, true);
            mp.game.controls.disableControlAction(2, 263, true);
            mp.game.controls.disableControlAction(2, 264, true);
            mp.game.controls.disableControlAction(2, 331, true);
        }
		if (mp.keys.isDown(32) && global.cuffed && new Date().getTime() - lastCuffUpdate >= 3000) {
			mp.events.callRemote("cuffUpdate");
	        lastCuffUpdate = new Date().getTime();
		}

		if (!mp.players.local.isInAnyVehicle(false) && !mp.players.local.isDead()) {
	        if (!global.circleOpen)
		        global.entity = getLookingAtEntity();
	        getNearestObjects();
		    if (global.entity != null && global.entity.getVariable('INVISIBLE') == true) global.entity = null;
		}
        else {
            getNearestObjects();
            if (global.entity !=  global.nearestObject) global.entity = null;
		}

	    if ( global.nearestObject != null && (global.entity == null || global.entity.type != "object")) {
		    mp.game.graphics.drawText("F2", [global.nearestObject.position.x, global.nearestObject.position.y, global.nearestObject.position.z], {
			    font: 0,
	            color: [255, 255, 255, 185],
		        scale: [0.4, 0.4],
			    outline: true
			});
		}
        else if (global.entity != null && !mp.players.local.isInAnyVehicle(false)) {
			if(truckorderveh == null || global.entity != truckorderveh) {
				mp.game.graphics.drawText("G", [global.entity.position.x, global.entity.position.y, global.entity.position.z], {
					font: 0,
					color: [255, 255, 255, 185],
					scale: [0.4, 0.4],
					outline: true
				});
			} else if(global.entity == truckorderveh) {
				mp.game.graphics.drawText("Su pedido", [global.entity.position.x, global.entity.position.y, global.entity.position.z], {
					font: 1,
					color: [255, 255, 255, 255],
					scale: [1.2, 1.2],
					outline: true
				});
			}
		}
	} catch (e) {
        mp.game.graphics.notify('RE:' + e.toString());
    }
});