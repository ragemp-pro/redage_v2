﻿const getMinimapAnchor = require('./bigmap.js')

var cruiseSpeed = -1;
var cruiseLastPressed = 0;
var showHint = true;

var hudstatus =
{
    safezone: null, // Last safezone size
    online: 0, // Last online int

    street: null,
    area: null,

    invehicle: false,
    updatespeedTimeout: 0, // Timeout for optimization speedometer
    engine: false,
    belt: false,
    doors: true,
    fuel: 0,
    health: 0
}

// fishing
let fishingState = 0;
let fishingSuccess = 0;
let fishingBarPosition = 0;
let fishingBarMin = 0;
let fishingBarMax = 0;
let movementRight = true;
let fishingAchieveStart = 0;
let isEnter = false;

mp.events.add('fishingBaitTaken', () => {
	fishingBarMin = 0.277;
    fishingBarMax = 0.675;
	fishingAchieveStart = Math.random() * 0.39 + fishingBarMin;
    isEnter=true;
    fishingBarPosition = 0.476;
    fishingSuccess = 0;
    fishingState = 3;
});

function drawFishingMinigame() {

    if(mp.game.controls.isControlPressed(0, 24) && mp.game.controls.isControlJustPressed(0, 24)) {
         switch(fishingState) {
         case 2:
             fishingState = -1;
             mp.events.callRemote('stopFishDrop');
             isEnter=false;
             break;
         case 3:
             if(fishingBarPosition > fishingAchieveStart-0.01 && fishingBarPosition < fishingAchieveStart+0.01) {
                 fishingSuccess++;
                 if(fishingSuccess == 1) {
                     fishingState = -1;
                     mp.events.callRemote('giveRandomFish');
                     isEnter=false;
                 } else {

                     movementRight = true;
                     fishingBarPosition = 0.476;
                     fishingAchieveStart = Math.random() * 0.39 + fishingBarMin;
                 }
             } else {
                 fishingState = -1;
                 mp.events.callRemote('stopFishDrop');
                 isEnter=false;
             }
             break;
     }
     return;
 }

 if(fishingState == 3) {
     mp.game.graphics.drawRect(0.47, 0.2, 0.39, 0.025, 60, 60, 60, 120);
     // x y w h r g b a
     mp.game.graphics.drawRect(fishingAchieveStart, 0.2, 0.030, 0.025, 0, 255, 0, 255);
     mp.game.graphics.drawRect(fishingBarPosition, 0.19, 0.002, 0.026, 255, 255, 255, 255);
     if(movementRight) {
         fishingBarPosition += 0.001;
         if(fishingBarPosition > fishingBarMax) {
             fishingBarPosition = fishingBarMax;
             movementRight = false;
         }
     } else {
         fishingBarPosition -= 0.001;
         if(fishingBarPosition < fishingBarMin) {
             fishingBarPosition = fishingBarMin;
             movementRight = true;
         }
     }
 }
}

// end fishing

// HUD events
mp.events.add('notify', (type, layout, msg, time) => {
    if (global.loggedin) mp.gui.execute(`notify(${type},${layout},'${msg}',${time})`);
    else mp.events.call('authNotify', type, layout, msg, time)
});

global.INTERACTIONCHECK = false;
mp.events.add('playerInteractionCheck', function (state){
    global.INTERACTIONCHECK = state;
});
mp.events.add('render', () => {
    if (global.INTERACTIONCHECK === true && !global.menuOpened) {
        
        mp.game.ui.resetHudComponentValues(10);
        mp.game.ui.setHudComponentPosition(10, 0.77, 0.92);
        mp.game.ui.setTextComponentFormat('STRING');
        mp.game.ui.addTextComponentSubstringPlayerName("~h~Нажмите ~g~ ~INPUT_CONTEXT~ ~s~ для взаимодействия.");
        mp.game.ui.displayHelpTextFromStringLabel(0, false, true, -1);
    }
});

mp.events.add('showHUD', (show) => {
    try {
    global.showhud = show;
    if (!show) mp.gui.execute(`hidehelp(${!global.showhud})`);
    else if (show && showHint) mp.gui.execute(`hidehelp(${!global.showhud})`);

    if (show) {
        mp.gui.execute(`HUD.server=${serverid};`);
        mp.gui.execute(`HUD.playerId=${mp.players.local.remoteId}`);
    }
    mp.gui.execute(`hidehud(${!global.showhud})`);


    var screen = mp.game.graphics.getScreenActiveResolution(0,0);
    mp.gui.execute(`updateSafeZoneSize(${screen.x},${screen.y},${hudstatus.safezone})`);

    var minimap = getMinimapAnchor();
    mp.gui.execute(`HUD.minimapFix=${minimap.rightX * 100}`);
	
    var playerId = mp.players.local.getVariable('REMOTE_ID');
    
    var personId = mp.players.local.getVariable('PERSON_ID');
	mp.gui.execute(`HUD.personId='${personId}'`);
	
	mp.gui.execute(`HUD.playerId='${playerId}'`);
	
    mp.game.ui.displayAreaName(global.showhud);
    mp.game.ui.displayRadar(global.showhud);
    mp.game.ui.displayHud(global.showhud);
    mp.gui.chat.show(global.showhud);
    }
    catch(e)
    {
        mp.game.graphics.notify(`error: ${e} ${global.showhud} ${show}`);
    }
});

mp.events.add('UpdateMoney', function (temp, amount) {
    let money = temp.toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1 ");
    mp.gui.execute(`HUD.money="${money}"`);
});

mp.events.add('UpdateBank', function (temp, amount) {
    let money = temp.toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1 ");
    mp.gui.execute(`HUD.bank="${money}"`);
});

mp.events.add('setWanted', function (lvl) {
    mp.game.gameplay.setFakeWantedLevel(lvl);
});
var blips = {};
class BlipHelper {
    static createBlip(name, position, color) {
        if (blips.length != 0 && blips[name] !== undefined && blips[name] !== null) {
            blips[name].destroy();
            blips[name] = null;
        }

        var blip = mp.blips.new(1, position, {
            name: name,
            color: color,

            shortRange: false,
        });
        blips[name] = blip;
        return blip;
    }
    static createBlipExt(name, position, color, size, sprite = 0, shortRange = false, bname = null) {
        if (blips.length != 0 && blips[name] !== undefined && blips[name] !== null) {
            blips[name].destroy();
            blips[name] = null;
        }
        var blip;

        if (bname == null) {
            blip = mp.blips.new(1, position, {
                //name: name,
                color: color,
                scale: size,
                shortRange: false,
            });
        } else {
            blip = mp.blips.new(1, position, {
                name: bname,
                color: color,
                scale: size,
                shortRange: false,
            });
        }

        blips[name] = blip;
        blips[name].setColour(color);
        blips[name].setAsShortRange(shortRange);
        blips[name].setScale(size);
        blips[name].name = name;



        if (sprite != 0) blips[name].setSprite(sprite);
        return blip;
    }

    static removeBlip(name) {
        if (blips.length != 0 && blips[name] !== undefined && blips[name] !== null) {
            blips[name].destroy();
            blips[name] = null;
        }
        //mp.game.ui.removeBlip(blips[name]);
        //blips[name] = null;
    }

    static moveBlip(name, position) {
        if (blips[name] == null) {
            return;
        }
        blips[name].setCoords(position);
    }

    static colorBlip(name, color) {
        if (blips[name] == null) {
            return;
        }
        blips[name].setColour(color);
    }

    static SetRoute(name, enabled) {
        if (blips[name] == null) {
            return;
        }
        blips[name].setRoute(enabled);
    }
}
mp.events.add('blip_create_ext', function (name, position, color, size, sprite = 0, range = false, bname = null) {
    BlipHelper.createBlipExt(name, position, color, size, sprite, range, bname);
    BlipHelper.colorBlip(name, color);
});
mp.events.add('blip_remove', function (name) {
    BlipHelper.removeBlip(name);
});
mp.events.add('blip_move', function (name, position) {
    BlipHelper.moveBlip(name, position);
});
mp.events.add('blip_color', function (name, color) {
    BlipHelper.colorBlip(name, color);
});
mp.keys.bind(Keys.VK_F5, false, function () { // F5 key
    if (global.menuOpened) {
        global.menuClose();
        mp.gui.cursor.visible = false;
    }
    if (global.showhud && showHint) {
        showHint = false;
        mp.gui.execute(`hidehelp(${!showHint})`);
    }
    else if (global.showhud) {
        global.showhud = !showhud;
        mp.events.call('showHUD', global.showhud);
    }
    else {
        showHint = true;
        mp.gui.execute(`hidehelp(${!showHint})`);
        global.showhud = !global.showhud;
        mp.events.call('showHUD', global.showhud);
    }
});
mp.keys.bind(Keys.VK_J, false, function () { // belt system (J key)
    if (!global.loggedin || global.chatActive || global.editing || new Date().getTime() - global.lastCheck < 400 || global.menuOpened) return;
    if (mp.players.local.isInAnyVehicle(false)) {
        global.lastCheck = new Date().getTime();

        if (hudstatus.belt) {
            mp.players.local.setConfigFlag(32, true);
            //mp.events.call('notify', 2, 2, "Вы отстегнули ремень безопасности", 2000);
            mp.game.graphics.notify('~r~Вы отстегнули ремень безопасности');
        }
        else {
            mp.players.local.setConfigFlag(32, false);
            //mp.events.call('notify', 2, 2, "Вы пристегнули ремень безопасности", 2000);
            mp.game.graphics.notify('~g~Вы пристегнули ремень безопасности');
        }

        hudstatus.belt = !hudstatus.belt;
        mp.gui.execute(`HUD.belt=${hudstatus.belt}`);

        var testBelt = mp.players.local.getConfigFlag(32, true);
        //mp.gui.chat.push(`flag32: ` + testBelt + ` hud.belt ` + hudstatus.belt);

        mp.events.callRemote('beltCarPressed', testBelt);
    }
});

// CRUISE CONTROL //
mp.keys.bind(Keys.VK_6, false, function () { // 5 key - cruise mode on/off
    if (!global.loggedin || global.chatActive || global.editing || global.menuOpened) return;
    if (!mp.players.local.isInAnyVehicle(true) || mp.players.local.vehicle.getPedInSeat(-1) != mp.players.local.handle) return;
	let vclass = mp.players.local.vehicle.getClass();
	if(vclass == 14 || vclass == 15 || vclass == 16) return;
	if(mp.players.local.vehicle.isOnAllWheels() == false) return;
    if (new Date().getTime() - cruiseLastPressed < 300) {
        mp.events.call('openInput', 'Круиз-контроль', 'Укажите скорость в км/ч', 3, 'setCruise');
    } else {
        var veh = mp.players.local.vehicle;
        if (cruiseSpeed == -1) {
            var vspeed = veh.getSpeed();
            if (vspeed > 1) {
                veh.setMaxSpeed(vspeed);
                mp.gui.execute(`HUD.cruiseColor='#eebe00'`);
                cruiseSpeed = vspeed;
            }
        }
        else {
            cruiseSpeed = -1;
            veh.setMaxSpeed(mp.game.vehicle.getVehicleModelMaxSpeed(veh.model));
            mp.gui.execute(`HUD.cruiseColor='#ffffff'`);
        }
    }
    cruiseLastPressed = new Date().getTime();
});

mp.events.add('setCruiseSpeed', function (speed) {
    speed = parseInt(speed);
    if (speed === NaN || speed < 1) return;
    if (!mp.players.local.isInAnyVehicle(true) || mp.players.local.vehicle.getPedInSeat(-1) != mp.players.local.handle) return;
	let vclass = mp.players.local.vehicle.getClass();
	if(vclass == 14 || vclass == 15 || vclass == 16) return;
	if(mp.players.local.vehicle.isOnAllWheels() == false) return;
	var veh = mp.players.local.vehicle;
	var curSpeed = veh.getSpeed();
	if(speed < curSpeed) {
		mp.events.call('notify', 4, 9, "Нельзя установить скорость меньше, чем она есть на данный момент, снизьте скорость и попробуйте еще раз.", 6000);
		return;
	}
    speed = speed / 3.6; // convert from kph to mps
    var maxSpeed = mp.game.vehicle.getVehicleModelMaxSpeed(veh.model);
    if (speed > maxSpeed) speed = maxSpeed;
    veh.setMaxSpeed(speed);
    mp.gui.execute(`HUD.cruiseColor='#eebe00'`);
    cruiseSpeed = speed;
});

mp.events.add('newPassport', function (player, pass) {
    if (player && mp.players.exists(player))
        global.passports[player.name] = pass;
});

mp.events.add('newFriend', function (player) {
    if (player && mp.players.exists(player)) {
        mp.storage.data.friends[player.name] = true;
        mp.storage.flush();
    }
});

var showAltTabHint = false;
mp.events.add('showAltTabHint', function () {
    showAltTabHint = true;
    setTimeout(function () { showAltTabHint = false; }, 10000);
});

mp.events.add('sendRPMessage', (type, msg, players) => {

    var chatcolor = ``;

    players.forEach((id) => {
        var player = mp.players.atRemoteId(id);
        if (mp.players.exists(player)) {

            if (type === "chat" || type === "s") {
                let localPos = mp.players.local.position;
                let playerPos = player.position;
                let dist = mp.game.system.vdist(playerPos.x, playerPos.y, playerPos.z, localPos.x, localPos.y, localPos.z);
                var color = (dist < 2) ? "FFFFFF" :
                    (dist < 4) ? "F7F9F9" :
                        (dist < 6) ? "DEE0E0" :
                            (dist < 8) ? "C5C7C7" : "ACAEAE";

                chatcolor = color;
            }
			
			var name = "";
			if(player.getVariable('IS_MASK') == true) {
				name = (player === mp.players.local || mp.players.local.getVariable('IS_ADMIN') == true) ? `${player.name.replace("_", " ")} (${player.getVariable('REMOTE_ID')})` : `Незнакомец (${id})`;
			} else {
				name = (player === mp.players.local || mp.players.local.getVariable('IS_ADMIN') == true || global.passports[player.name] != undefined || mp.storage.data.friends[player.name] != undefined) ? `${player.name.replace("_", " ")} (${player.getVariable('REMOTE_ID')})` : `Незнакомец (${id})`;
			}
            msg = msg.replace("{name}", name);
        }
    });

    if (type === "chat" || type === "s")
        msg = `!{#${chatcolor}}${msg}`;

    mp.gui.chat.push(msg);
});

mp.events.add('render', () => {

    if (!global.loggedin) return;
    if(fishingState > 0) {
        drawFishingMinigame();
    }
    // Disable HUD components.    
    mp.game.ui.hideHudComponentThisFrame(2); // HUD_WEAPON_ICON
    mp.game.ui.hideHudComponentThisFrame(3); // HUD_CASH
    mp.game.ui.hideHudComponentThisFrame(6); // HUD_VEHICLE_NAME
    mp.game.ui.hideHudComponentThisFrame(7); // HUD_AREA_NAME
    mp.game.ui.hideHudComponentThisFrame(8); // HUD_VEHICLE_CLASS
    mp.game.ui.hideHudComponentThisFrame(9); // HUD_STREET_NAME

    mp.game.ui.hideHudComponentThisFrame(19); // HUD_WEAPON_WHEEL
    mp.game.ui.hideHudComponentThisFrame(20); // HUD_WEAPON_WHEEL_STATS
    mp.game.ui.hideHudComponentThisFrame(22); // MAX_HUD_WEAPONS

    // Update online counter in logotype.
    if (hudstatus.online != mp.players.length) {

        hudstatus.online = mp.players.length;
        mp.gui.execute(`HUD.online=${hudstatus.online}`);
    }

    // Update street & district
    var street = mp.game.pathfind.getStreetNameAtCoord(mp.players.local.position.x, mp.players.local.position.y, mp.players.local.position.z, 0, 0);
    let area  = mp.game.zone.getNameOfZone(mp.players.local.position.x, mp.players.local.position.y, mp.players.local.position.z);
    if(hudstatus.street != street || hudstatus.area != area)
    {
        hudstatus.street = street;
        hudstatus.area = area;   
        
        mp.gui.execute(`HUD.street='${mp.game.ui.getStreetNameFromHashKey(street.streetName)}'`);
        mp.gui.execute(`HUD.crossingRoad='${mp.game.ui.getLabelText(hudstatus.area)}'`);
    }
    
    // Update CEF safezone.
    var lastsafezone = mp.game.graphics.getSafeZoneSize();
    if(lastsafezone != hudstatus.safezone) {
        
        hudstatus.safezone = lastsafezone;
        var resolution = mp.game.graphics.getScreenActiveResolution(0,0);
        mp.gui.execute(`updateSafeZoneSize(${resolution.x},${resolution.y},${hudstatus.safezone})`);
    }

    
    if (mp.players.local.isInAnyVehicle(false)) {

		if(mp.players.local.vehicle.getPedInSeat(-1) == mp.players.local.handle) {
			if (!hudstatus.invehicle) mp.gui.execute(`HUD.inVeh=1`);
			hudstatus.invehicle = true;

			var veh = mp.players.local.vehicle;

			if (veh.getVariable('FUELTANK') !== undefined) {
				let fueltank = veh.getVariable('FUELTANK');
				mp.game.graphics.drawText(`Загружено: ${fueltank}/1000л`, [0.93, 0.80], {
					font: 0,
					color: [255, 255, 255, 185],
					scale: [0.4, 0.4],
					outline: true
				});
			}
			if (veh.getVariable('PETROL') !== undefined && veh.getVariable('MAXPETROL') !== undefined) {
				let petrol = veh.getVariable('PETROL');
				let maxpetrol = veh.getVariable('MAXPETROL');

				if (hudstatus.fuel != petrol && petrol >= 0) {
					mp.gui.execute(`HUD.fuel=${petrol}`);
					hudstatus.fuel = petrol;
					
					if (petrol <= (maxpetrol * 0.2)) ifuel = 0;
					else if (petrol <= (maxpetrol * 0.6)) ifuel = 1;
					else ifuel = 2;
					mp.gui.execute(`HUD.ifuel=${ifuel}`);
				}
			}

			var engine = veh.getIsEngineRunning();
			if (engine != null && engine !== hudstatus.engine) {
				if (engine == true) mp.gui.execute(`HUD.engine=1`);
				else mp.gui.execute(`HUD.engine=0`);

				hudstatus.engine = engine;
			}

            if (veh.getVariable('LOCKED') !== undefined) 
            {
                var locked = veh.getVariable('LOCKED');
                
				if (hudstatus.doors !== locked) {
					if (locked == true) mp.gui.execute(`HUD.doors=0`);
					else mp.gui.execute(`HUD.doors=1`)

					hudstatus.doors = locked;
				}
			}

			var hp = veh.getHealth() / 10;
			hp = hp.toFixed();
			if (hp !== hudstatus.health) {
				mp.gui.execute(`HUD.hp=${hp}`);
				hudstatus.health = hp;
			}

			if (new Date().getTime() - hudstatus.updatespeedTimeout > 50) {
				let speed = (veh.getSpeed() * 3.6).toFixed();
				mp.gui.execute(`HUD.updateSpeed(${speed})`);
				hudstatus.updatespeedTimeout = new Date().getTime();

				if (cruiseSpeed != -1) // kostyl'
					veh.setMaxSpeed(cruiseSpeed);
			}
		}
    } 
    else 
    {
        if (hudstatus.invehicle) mp.gui.execute(`HUD.inVeh=0`);
        hudstatus.invehicle = false;
        hudstatus.belt = false;
        mp.gui.execute(`HUD.belt=${hudstatus.belt}`);
    }
});

mp.events.add('UpdateEat', function (temp, amount) {
    mp.gui.execute(`HUD.eat=${temp}`);
});

mp.events.add('UpdateWater', function (temp, amount) {
    mp.gui.execute(`HUD.water=${temp}`);
});

mp.events.add('updlastbonus', function (bonus) {
    mp.gui.execute(`HUD.lastbonus="${bonus}"`);
});

exports = { showhud, passports };