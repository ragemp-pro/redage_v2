var cam = mp.cameras.new('default', new mp.Vector3(0, 0, 0), new mp.Vector3(0, 0, 0), false);
var effect = '';
global.loggedin = false;
global.lastCheck = 0;
global.chatLastCheck = 0;
global.pocketEnabled = false;

//var emscol = mp.colshapes.newSphere(264.5199, -1352.684, 23.446, 50, 0);

var Peds = [
    // black market
    { Hash: -39239064, Pos: new mp.Vector3(1395.184, 3613.144, 34.9892), Angle: 270.0 }, 
    { Hash: -1176698112, Pos: new mp.Vector3(166.6278, 2229.249, 90.73845), Angle: 47.0 }, 
    { Hash: 1161072059, Pos: new mp.Vector3(2887.687, 4387.17, 50.65578), Angle: 174.0 }, 
    { Hash: -1398552374, Pos: new mp.Vector3(2192.614, 5596.246, 53.75177), Angle: 318.0 },
    { Hash: -459818001, Pos: new mp.Vector3(-215.4299, 6445.921, 31.30351), Angle: 262.0 },

    // gang work
    { Hash: 0x9D0087A8, Pos: new mp.Vector3(480.9385, -1302.576, 29.24353), Angle: 224.0 },
    
    // gang spawn
    { Hash: 1706635382, Pos: new mp.Vector3(-222.5464, -1617.449, 34.86932), Angle: 309.2058 },
    { Hash: 588969535, Pos: new mp.Vector3(85.79006, -1957.156, 20.74745), Angle: 320.4474 },
    { Hash: -812470807, Pos: new mp.Vector3(892.2745, -2172.252, 32.28627), Angle: 180.0 },
    { Hash: 653210662, Pos: new mp.Vector3(485.6168, -1529.195, 29.28829), Angle: 0.0 },
    { Hash: 663522487, Pos: new mp.Vector3(1408.224, -1486.415, 60.65733), Angle: 172.3141 },

    // mafia
    { Hash: 645279998, Pos: new mp.Vector3(-113.9224, 985.793, 235.754), Angle: 110.9234 },
    { Hash: -236444766, Pos: new mp.Vector3(-1811.368, 438.4105, 128.7074), Angle: 348.107 },
    { Hash: -1427838341, Pos: new mp.Vector3(-1549.287, -89.35114, 54.92917), Angle: 7.874235 },
    { Hash: -2034368986, Pos: new mp.Vector3(1392.098, 1155.892, 114.4433), Angle: 82.24557 },

    // lspd
    { Hash: -1920001264, Pos: new mp.Vector3(452.2527, -993.119, 30.68958), Angle: 357.7483 },
    { Hash: 368603149, Pos: new mp.Vector3(441.169, -978.3074, 30.6896), Angle: 160.1411 },
    { Hash: 1581098148, Pos: new mp.Vector3(454.121, -980.0575, 30.68959), Angle: 86.12 },

    // fbi
    { Hash: 941695432, Pos: new mp.Vector3(149.1317, -758.3485, 242.152), Angle: 66.82055 },
    { Hash: 1558115333, Pos: new mp.Vector3(120.0836, -726.7773, 242.152), Angle: 248.3546 },

    // army
    { Hash: 1925237458, Pos: new mp.Vector3(-2347.958, 3268.936, 32.81076), Angle: 240.8822 },

    // mayor
    { Hash: 988062523, Pos: new mp.Vector3(253.9357, 228.9332, 101.6832), Angle: 250.3564 },
    { Hash: 2120901815, Pos: new mp.Vector3(262.7953, 220.5285, 101.6832), Angle: 337.26 },
    { Hash: 826475330, Pos: new mp.Vector3(247.6933, 219.5379, 106.2869), Angle: 65.78249 },

    // ems
    { Hash: -1420211530, Pos: new mp.Vector3(251.4247, -1346.499, 24.5378), Angle: 223.6044 },
    { Hash: 1092080539, Pos: new mp.Vector3(262.3232, -1359.772, 24.53779), Angle: 49.42155 },
    { Hash: -1306051250, Pos: new mp.Vector3(257.5671, -1344.612, 24.54937), Angle: 229.3922 },

    // works
    { Hash: -907676309, Pos: new mp.Vector3(724.8585, 134.1029, 80.95643), Angle: 245.0083 },

    // lspd jail
	{ Hash: 940330470, Pos: new mp.Vector3(458.7059, -995.118, 25.35196), Angle: 176.8092 },
    { Hash: 1596003233, Pos: new mp.Vector3(459.7471, -1000.333, 24.91329), Angle: 177.2829 },

    // sheriff
    { Hash: -520477356, Pos: new mp.Vector3(-455.9738, 6014.119, 31.59654), Angle: 357.7483 },
    { Hash: -1614285257, Pos: new mp.Vector3(-449.8658, 6012.458, 31.59655), Angle: 308.1411 },
    { Hash: -1699520669, Pos: new mp.Vector3(-429.0482, 5997.3, 31.59655), Angle: 86.12 },
];

/*mp.colshapes.forEach( 
	(colshape) => {
		if(colshape == emscol) mp.gui.chat.push("You are near EMS");
	}
);*/

setTimeout(function () {
    Peds.forEach(ped => {
        mp.peds.new(ped.Hash, ped.Pos, ped.Angle, 0);
    });
}, 10000);

mp.game.gameplay.disableAutomaticRespawn(true);
mp.game.gameplay.ignoreNextRestart(true);
mp.game.gameplay.setFadeInAfterDeathArrest(false);
mp.game.gameplay.setFadeOutAfterDeath(false);
mp.game.gameplay.setFadeInAfterLoad(false);

mp.events.add('freeze', function (toggle) {
    localplayer.freezePosition(toggle);
});

mp.events.add('destroyCamera', function () {
    cam.destroy();
    mp.game.cam.renderScriptCams(false, false, 3000, true, true);
});

mp.events.add('carRoom', function () {
    cam = mp.cameras.new('default', new mp.Vector3(-42.3758, -1101.672, 27.52235), new mp.Vector3(0, 0, 0), 50);
    cam.pointAtCoord(-42.79771, -1095.676, 26.0117);
    cam.setActive(true);
    mp.game.cam.renderScriptCams(true, false, 0, true, false);
});

var lastScreenEffect = "";
mp.events.add('startScreenEffect', function (effectName, duration, looped) {
	try {
		lastScreenEffect = effectName;
		mp.game.graphics.startScreenEffect(effectName, duration, looped);
	} catch (e) { }
});

mp.events.add('stopScreenEffect', function (effectName) {
	try {
		var effect = (effectName == undefined) ? lastScreenEffect : effectName;
		mp.game.graphics.stopScreenEffect(effect);
	} catch (e) { }
});

mp.events.add('stopAndStartScreenEffect', function (stopEffect, startEffect, duration, looped) {
	try {
		mp.game.graphics.stopScreenEffect(stopEffect);
		mp.game.graphics.startScreenEffect(startEffect, duration, looped);
	} catch (e) { }
});

mp.events.add('setHUDVisible', function (arg) {
    mp.game.ui.displayHud(arg);
    mp.gui.chat.show(arg);
    mp.game.ui.displayRadar(arg);
});

mp.events.add('setPocketEnabled', function (state) {
    pocketEnabled = state;
    if (state) {
        mp.gui.execute("fx.set('inpocket')");
        mp.game.invoke(getNative("SET_FOLLOW_PED_CAM_VIEW_MODE"), 4);
    }
    else {
        mp.gui.execute("fx.reset()");
    }
});

mp.keys.bind(Keys.VK_Y, false, function () {
    if (!loggedin || chatActive || editing || new Date().getTime() - lastCheck < 1000 || global.menuOpened) return;
    mp.events.callRemote('acceptPressed');
    lastCheck = new Date().getTime();
});

mp.keys.bind(Keys.VK_N, false, function () {
    if (!loggedin || chatActive || editing || new Date().getTime() - lastCheck < 1000 || global.menuOpened) return;
    mp.events.callRemote('cancelPressed');
    lastCheck = new Date().getTime();
});

mp.events.add('connected', function () {
    mp.game.ui.displayHud(false);
    cam = mp.cameras.new('default', startCamPos, startCamRot, 90.0);
    cam.setActive(true);
    mp.game.graphics.startScreenEffect('SwitchSceneMichael', 5000, false);
    var effect = 'SwitchSceneMichael';
});

mp.events.add('ready', function () {
    mp.game.ui.displayHud(true);
    //cam.setActive(false);
    //mp.game.graphics.stopScreenEffect(effect);
});

mp.events.add('kick', function (notify) {
    mp.events.call('notify', 4, 9, notify, 10000);
    mp.events.callRemote('kickclient');
});

mp.events.add('loggedIn', function () {
    loggedin = true;
});

mp.events.add('setFollow', function (toggle, entity) {
    if (toggle) {
        if (entity && mp.players.exists(entity))
            localplayer.taskFollowToOffsetOf(entity.handle, 0, 0, 0, 1, -1, 1, true)
    }
    else
        localplayer.clearTasks();
});

setInterval(function () {
    if (localplayer.getArmour() <= 0 && localplayer.getVariable('HASARMOR') === true) {
        mp.events.callRemote('deletearmor');
    }
}, 600);

mp.keys.bind(Keys.VK_U, false, function () { // Animations selector
    if (!loggedin || chatActive || editing || new Date().getTime() - lastCheck < 1000 || global.menuOpened) return;
    if (localplayer.isInAnyVehicle(true)) return;
    OpenCircle("Категории", 0);
});

// телепорт на метку
let waypoint;
let lastWaypointCoords;

mp.keys.bind(Keys.VK_P, false, function () { // Телепорт (P)
    if (!loggedin || chatActive || editing || global.menuCheck() || cuffed || localplayer.getVariable('InDeath') == true) return;
    
    if (!global.localplayer.getVariable('IS_ADMIN')) return;
    if(!lastWaypointCoords){mp.game.graphics.notify(`Ошибка: ~n~~h~~r~Нет записи последнего waypoint'a.`); return;}
    mp.events.call('tpToWaypoint');
    
    lastCheck = new Date().getTime();
});

function findZ(mp, maxAttempts, delay, wpos, oldpos) {
    mp.players.local.position = new mp.Vector3(wpos.x, wpos.y, 0);
    mp.players.local.freezePosition(true);
    attempts = 1;
    timeout = setTimeout(function getZ() {
        wpos.z = mp.game.gameplay.getGroundZFor3dCoord(wpos.x, wpos.y, 1000, 0, false);
        if (!wpos.z && attempts < 10){
            attempts++;
            mp.players.local.position = new mp.Vector3(wpos.x, wpos.y, attempts*50);
            timeout = setTimeout(getZ, delay) 
        } else if(!wpos.z && attempts == maxAttempts) {
            mp.players.local.position = oldpos;
            mp.game.graphics.notify(`Ошибка: ~n~~h~~r~Не удалось получить координату Z.`);
            mp.players.local.freezePosition(false);
            clearTimeout(timeout);
        } else { //if z found - tp to wpos
            mp.players.local.position = new mp.Vector3(wpos.x, wpos.y, wpos.z+2);
            mp.players.local.freezePosition(false);
            mp.events.callRemote('notifyCoords', 'Телепорт пo координатам:', wpos.x, wpos.y, wpos.z+1);
            clearTimeout(timeout);
        }
    }, delay)
}

function findWP(mp){
    let wpos = Object.assign({}, lastWaypointCoords);
    let oldpos = mp.players.local.position;

    if (wpos.z != 20) {
        mp.players.local.position = new mp.Vector3(wpos.x, wpos.y, wpos.z+2);
        mp.events.callRemote('notifyCoords', 'Телепорт по координатам:', wpos.x, wpos.y, wpos.z+1);
        return;
    }
    findZ(mp, 10, 150, wpos, oldpos);
}

mp.events.add('tpToWaypoint', () => {
    findWP(mp);
});

mp.events.add('render', () => {
    if(waypoint !== mp.game.invoke('0x1DD1F58F493F1DA5')){
        waypoint = mp.game.invoke('0x1DD1F58F493F1DA5');
        if (waypoint) {
            let blip = mp.game.invoke('0x1BEDE233E6CD2A1F', 8);
            let coords = mp.game.ui.getBlipInfoIdCoord(blip);
            lastWaypointCoords = coords;
            //mp.events.call('tpToWaypoint');
        }  
    }
});
//

mp.keys.bind(Keys.VK_E, false, function () { // E key
    if (!loggedin || chatActive || editing || new Date().getTime() - lastCheck < 1000 || global.menuOpened) return;
    mp.events.callRemote('interactionPressed');
    lastCheck = new Date().getTime();
    global.acheat.pos();
});

mp.keys.bind(Keys.VK_L, false, function () { // L key
    if (!loggedin || chatActive || editing || new Date().getTime() - lastCheck < 1000 || global.menuOpened) return;
    mp.events.callRemote('lockCarPressed');
    lastCheck = new Date().getTime();
});

mp.keys.bind(Keys.VK_LEFT, true, () => {
	if(mp.gui.cursor.visible || !loggedin) return;
	if(localplayer.vehicle) {
		if(localplayer.vehicle.getPedInSeat(-1) != localplayer.handle) return;
		if(new Date().getTime() - lastCheck > 500) {
			lastCheck = new Date().getTime();
			if(localplayer.vehicle.getVariable('leftlight') == true) mp.events.callRemote("VehStream_SetIndicatorLightsData", localplayer.vehicle, 0, 0);
			else mp.events.callRemote("VehStream_SetIndicatorLightsData", localplayer.vehicle, 1, 0);
		}
	}
});

mp.keys.bind(Keys.VK_RIGHT, true, () => {
	if(mp.gui.cursor.visible || !loggedin) return;
	if(localplayer.vehicle) {
		if(localplayer.vehicle.getPedInSeat(-1) != localplayer.handle) return;
		if(new Date().getTime() - lastCheck > 500) {
			lastCheck = new Date().getTime();
			if(localplayer.vehicle.getVariable('rightlight') == true) mp.events.callRemote("VehStream_SetIndicatorLightsData", localplayer.vehicle, 0, 0);
			else mp.events.callRemote("VehStream_SetIndicatorLightsData", localplayer.vehicle, 0, 1);
		}
	}
});

mp.keys.bind(Keys.VK_DOWN, true, () => {
	if(mp.gui.cursor.visible || !loggedin) return;
	if(localplayer.vehicle) {
		if(localplayer.vehicle.getPedInSeat(0) != localplayer.handle) return;
		if(new Date().getTime() - lastCheck > 500) {
			lastCheck = new Date().getTime();
			if(localplayer.vehicle.getVariable('leftlight') == true && localplayer.vehicle.getVariable('rightlight') == true) mp.events.callRemote("VehStream_SetIndicatorLightsData", localplayer.vehicle, 0, 0);
			else mp.events.callRemote("VehStream_SetIndicatorLightsData", localplayer.vehicle, 1, 1);
		}
	}
});

mp.keys.bind(Keys.VK_B, false, function () { // 2 key
    if (!loggedin || chatActive || editing || new Date().getTime() - lastCheck < 400 || global.menuOpened) return;
    if (localplayer.isInAnyVehicle(false) && localplayer.vehicle.getSpeed() <= 3) {
        lastCheck = new Date().getTime();
        mp.events.callRemote('engineCarPressed');
    }
});

/*
mp.keys.bind(Keys.VK_UP, false, function () { // стрелка вверх
    if (!loggedin || chatActive || editing || global.menuCheck() || cuffed || localplayer.getVariable('InDeath') == true || new Date().getTime() - lastCheck < 400) return;
    mp.events.callRemote('openPlayerMenu');
	mp.game.mobile.createMobilePhone(3);
	mp.game.mobile.setMobilePhoneScale (0);
	mp.game.mobile.scriptIsMovingMobilePhoneOffscreen(false);
	mp.game.mobile.setPhoneLean(false);
    lastCheck = new Date().getTime();
});

mp.keys.bind(Keys.VK_DOWN, true, function() {   // стрелка вниз
    mp.game.invoke ('0x3BC861DF703E5097', mp.players.local.handle, true);
	//mp.events.call("phoneHide");
	//mp.events.call("phoneClose");
    mp.events.callRemote("closePlayerMenu");
});
*/

mp.keys.bind(Keys.VK_M, false, function () {

    if (!loggedin || chatActive || editing || global.menuCheck() || cuffed || localplayer.getVariable('InDeath') == true || new Date().getTime() - lastCheck < 400) return;
    
    if (global.phoneOpen)
    {
        mp.game.invoke ('0x3BC861DF703E5097', mp.players.local.handle, true);
        mp.events.callRemote("closePlayerMenu");

        global.phoneOpen = 0;
    }
    else
    {
        mp.events.callRemote('openPlayerMenu');
        mp.game.mobile.createMobilePhone(3);
        mp.game.mobile.setMobilePhoneScale (0);
        mp.game.mobile.scriptIsMovingMobilePhoneOffscreen(false);
        mp.game.mobile.setPhoneLean(false);
        lastCheck = new Date().getTime();

        global.phoneOpen = 1;
    }
});
setInterval(function () {
    var MobileObject = mp.game.invoke ('0x2AFE52F782F25775', mp.players.local.handle);
    //mp.gui.chat.push(`render: MobileObject: ${MobileObject}, global.menuOpened: ${global.menuOpened}, Cursor: ${mp.gui.cursor.visible}, Phone: ${global.phoneOpen}`);
    if(MobileObject && !mp.gui.cursor.visible)
    {
        mp.game.invoke ('0x3BC861DF703E5097', mp.players.local.handle, true);
        global.phoneOpen = 0;

        mp.events.callRemote("closePlayerMenu");
    }
}, 1000);

mp.keys.bind(0x77, true, function () {  //F8-Key
    var date = new Date();
    var name = "sanstreetlife-" + date.getDate() + "." + date.getMonth() + "." + date.getFullYear() + "-" + date.getHours() + "." + date.getMinutes() + "." + date.getSeconds() + ".png";
    mp.gui.takeScreenshot(name, 1, 100, 0);
});

mp.keys.bind(Keys.VK_X, false, function () { // X key
    if (!loggedin || chatActive || editing || new Date().getTime() - lastCheck < 1000 || global.menuOpened) return;
    mp.events.callRemote('playerPressCuffBut');
    lastCheck = new Date().getTime();
});

mp.keys.bind(Keys.VK_Z, false, function () { // Z key
    if (!loggedin || chatActive || editing || new Date().getTime() - lastCheck < 1000 || global.menuOpened) return;
    if (localplayer.isInAnyVehicle(false)) {
        CheckMyWaypoint();
    } else mp.events.callRemote('playerPressFollowBut');
    lastCheck = new Date().getTime();
});

function CheckMyWaypoint() {
    try {
        if(mp.game.invoke('0x1DD1F58F493F1DA5')) {
            let foundblip = false;
            let blipIterator = mp.game.invoke('0x186E5D252FA50E7D');
            let totalBlipsFound = mp.game.invoke('0x9A3FF3DE163034E8');
            let FirstInfoId = mp.game.invoke('0x1BEDE233E6CD2A1F', blipIterator);
            let NextInfoId = mp.game.invoke('0x14F96AA50D6FBEA7', blipIterator);
            for (let i = FirstInfoId, blipCount = 0; blipCount != totalBlipsFound; blipCount++, i = NextInfoId) {
                if (mp.game.invoke('0x1FC877464A04FC4F', i) == 8) {
                    var coord = mp.game.ui.getBlipInfoIdCoord(i);
                    foundblip = true;
                    break;
                }
            }
            if(foundblip)
            {
                mp.events.callRemote('syncWaypoint', coord.x, coord.y);
            }
        }
    } catch (e) { }
}

mp.events.add('syncWP', function (bX, bY, type) {
    if(!mp.game.invoke('0x1DD1F58F493F1DA5')) {
		mp.game.ui.setNewWaypoint(bX, bY);
		if(type == 0) mp.events.call('notify', 2, 9, "Пассажир передал Вам информацию о своём маршруте!", 3000);
		else if(type == 1) mp.events.call('notify', 2, 9, "Человек из списка контактов Вашего телефона передал Вам метку его местоположения!", 3000);
	} else {
		if(type == 0) mp.events.call('notify', 4, 9, "Пассажир попытался передать Вам информацию о маршруте, но у Вас уже установлен другой маршрут.", 5000);
		else if(type == 1) mp.events.call('notify', 4, 9, "Человек из списка контактов Вашего телефона попытался передать Вам метку его местоположения, но у Вас уже установлена другая метка.", 5000);
	}
});

mp.keys.bind(Keys.VK_U, false, function () { // U key
    if (!loggedin || chatActive || editing || global.menuOpened || new Date().getTime() - lastCheck < 1000) return;
    mp.events.callRemote('openCopCarMenu');
    lastCheck = new Date().getTime();
});

mp.keys.bind(Keys.VK_OEM_3, false, function () { // ` key
    if (chatActive || (global.menuOpened && mp.gui.cursor.visible)) return;
    mp.gui.cursor.visible = !mp.gui.cursor.visible;
});

var lastPos = new mp.Vector3(0, 0, 0);

mp.game.gameplay.setFadeInAfterDeathArrest(false);
mp.game.gameplay.setFadeInAfterLoad(false);

var deathTimerOn = false;
var deathTimer = 0;

mp.events.add('DeathTimer', (time) => {
    if (time === false)
    {
        deathTimerOn = false;
        mp.players.local.freezePosition(false);
    }
    else {
        deathTimerOn = true;
        deathTimer = new Date().getTime() + time;
        mp.players.local.freezePosition(true);
    }
});

mp.events.add('render', () => {
    if (localplayer.getVariable('InDeath') == true) {
        mp.game.controls.disableAllControlActions(0);
        mp.game.controls.disableAllControlActions(1);
        mp.game.controls.disableAllControlActions(2);
        mp.game.controls.enableControlAction(2, 1, true);
        mp.game.controls.enableControlAction(2, 2, true);
        mp.game.controls.enableControlAction(2, 3, true);
        mp.game.controls.enableControlAction(2, 4, true);
        mp.game.controls.enableControlAction(2, 5, true);
        mp.game.controls.enableControlAction(2, 6, true);
    }

    mp.players.forEachInStreamRange(player => {
        if(player !== mp.players.local)
        {
            if (player.getVariable('InDeath') == true)
            {
                player.freezePosition(true);
            }
        }
    });

    if (deathTimerOn) {
        var secondsLeft = Math.trunc((deathTimer - new Date().getTime()) / 1000);
        if(secondsLeft)
        {
            var minutes = Math.trunc(secondsLeft / 60);
            var seconds = secondsLeft % 60;
            mp.game.graphics.drawText(`До смерти осталось ${('0'+minutes).slice(-2)}:${('0'+seconds).slice(-2)}`, [0.5, 0.8], {
                font: 0,
                color: [255, 255, 255, 200],
                scale: [0.35, 0.35],
                outline: true
            });
        }
        else
        {
            deathTimerOn = false;
            mp.players.local.freezePosition(false);
        }
    }

    if (mp.game.controls.isControlPressed(0, 32) || 
        mp.game.controls.isControlPressed(0, 33) || 
        mp.game.controls.isControlPressed(0, 321) ||
        mp.game.controls.isControlPressed(0, 34) || 
        mp.game.controls.isControlPressed(0, 35) || 
        mp.game.controls.isControlPressed(0, 24) || 
        localplayer.getVariable('InDeath') == true) 
    {
        afkSecondsCount = 0;
    }
    else if (localplayer.isInAnyVehicle(false) && localplayer.vehicle.getSpeed() != 0) 
    {
        afkSecondsCount = 0;
    } 
    else if(spectating) 
    { // Чтобы не кикало администратора в режиме слежки
		afkSecondsCount = 0;
	}
});

mp.events.add("playerRuleTriggered", (rule, counter) => {
    if (rule === 'ping' && counter > 5) {
        mp.events.call('notify', 4, 2, "Ваш ping слишком большой. Зайдите позже", 5000);
        mp.events.callRemote("kickclient");
    }
    /*if (rule === 'packetLoss' && counter => 10) {
        mp.events.call('notify', 4, 2, "У Вас большая потеря пакетов. Зайдите позже", 5000);
        mp.events.callRemote("kickclient");
    }*/
});
