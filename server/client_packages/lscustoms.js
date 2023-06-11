var lsc = mp.browsers.new('package://cef/lscustoms/home.html');
lsc.active = false;
var lscSpeed = 0;
var lscBrakes = 0;
var lscBoost = 0;
var lscСlutch = 0;
var lscPage = 'home';
var lscSettedMod = -1;
var lscSettedWheelType = 0;
var lscSelected = -1;

var lscRGB = { r: 0, g: 0, b: 0 };
var lscPrimary = { r: 0, g: 0, b: 0 };
var lscSecondary = { r: 0, g: 0, b: 0 };
var lscNeon = { r: 0, g: 0, b: 0 };
var opened = false;
var priceMod = 1;
var isBike = false;
var modelPriceMod = 1;
var carName = "";

mp.events.add('hideTun', () => {
    lsc.execute(`show(${false});`);
    lsc.active = false;
});
mp.events.add('browserDomReady', (browser) => {
    if (browser === lsc && !opened) {
        lsc.execute(`show(${false});`);
        lsc.active = false;
    }
});
// Switch global page //
mp.events.add('tpage', (id) => {
    if (!opened) return;

    if (id == "exit_menu") {
        lsc.execute(`show(${false});`);
        lsc.active = false;
        global.menuClose();
        tunCam.destroy();
        mp.game.cam.renderScriptCams(false, false, 500, true, false);
        mp.events.callRemote('exitTuning');
        mp.events.call("hideColorp");
        opened = false;
    }
    else {
        lsc.execute(`window.location = 'package://cef/lscustoms/${id}.html'`);
        lsc.execute(`set(${lscSpeed},${lscBrakes},${lscBoost},${lscСlutch})`);

        if (id == "home") {
            setTimeout(function () { lsc.execute(`disable(${JSON.stringify(toDisable)});`); }, 150);
            mp.players.local.vehicle.setHeading(148.9986);

            var camFrom = tunCam;
            tunCam = mp.cameras.new('default', new mp.Vector3(-333.7966, -137.409, 40.58963), new mp.Vector3(0, 0, 0), 60);
            tunCam.pointAtCoord(-338.7966, -137.409, 37.88963);
            tunCam.setActiveWithInterp(camFrom.handle, 500, 1, 1);

            if (lscPage == "numbers_menu") {
                mp.players.local.vehicle.setNumberPlateTextIndex(lscSettedMod);
            }
            else if (lscPage == "paint_menu_three") {
                mp.players.local.vehicle.setNeonLightEnabled(0, false);
                mp.players.local.vehicle.setNeonLightEnabled(1, false);
                mp.players.local.vehicle.setNeonLightEnabled(2, false);
                mp.players.local.vehicle.setNeonLightEnabled(3, false);
                mp.events.call("hideColorp");
            }
            else if (lscPage == "glasses_menu") {
                mp.players.local.vehicle.setWindowTint(lscSettedMod);
            }
            else if (lscPage != "paint_menu") {
                if (lscPage == "turbo_menu")
                    mp.players.local.vehicle.toggleMod(18, false);
                else if (lscPage == "lights_menu") {
                    mp.game.invoke('0xE41033B25D003A07', mp.players.local.vehicle.handle, 0);
                    mp.players.local.vehicle.setLights(0);
                    mp.players.local.vehicle.toggleMod(22, false);
                } else if (lscPage == "wheels_menu")
                    mp.players.local.vehicle.setWheelType(lscSettedWheelType);

                if (categoryModsIds[lscPage] == undefined) return;
                mp.players.local.vehicle.setMod(categoryModsIds[lscPage], lscSettedMod);
            }
        }
        else if (categoryIds[id] != undefined) {
            var camFrom = tunCam;
            tunCam = mp.cameras.new('default', categoryPositions[categoryIds[id]].CamPosition, new mp.Vector3(0, 0, 0), 60);
            tunCam.pointAtCoord(-338.7966, -137.409, 37.88963);
            tunCam.setActiveWithInterp(camFrom.handle, 500, 1, 1);

            mp.players.local.vehicle.setHeading(categoryPositions[categoryIds[id]].CarHeading);

            if (id == "numbers_menu") {
                lscSettedMod = mp.players.local.vehicle.getNumberPlateTextIndex();
            }
            else if (id == "glasses_menu") {
                lscSettedMod = mp.players.local.vehicle.getWindowTint();
            }
            else if (id == "paint_menu") {
                if (lscPage != "home") {
                    mp.events.call("hideColorp");
                    mp.players.local.vehicle.setCustomPrimaryColour(lscPrimary.r, lscPrimary.g, lscPrimary.b);
                    mp.players.local.vehicle.setCustomSecondaryColour(lscSecondary.r, lscSecondary.g, lscSecondary.b);
                    mp.players.local.vehicle.setNeonLightEnabled(0, true);
                    mp.players.local.vehicle.setNeonLightEnabled(1, true);
                    mp.players.local.vehicle.setNeonLightEnabled(2, true);
                    mp.players.local.vehicle.setNeonLightEnabled(3, true);
                    mp.players.local.vehicle.setNeonLightsColour(lscNeon.r, lscNeon.g, lscNeon.b);
                }
                else {
                    lscPrimary = mp.players.local.vehicle.getCustomPrimaryColour(1, 1, 1);
                    lscSecondary = mp.players.local.vehicle.getCustomSecondaryColour(1, 1, 1);
                    lscNeon = mp.players.local.vehicle.getNeonLightsColour(1, 1, 1);
                }
            }
            else
            {
                if (lscPage == "home")
                {
                    if (id == "lights_menu")
                    {
                        mp.players.local.vehicle.setLights(1);
                        mp.players.local.vehicle.toggleMod(22, true);
                        if (id >= 0)
                        {
                            mp.game.invoke('0xE41033B25D003A07', mp.players.local.vehicle.handle, lscSettedMod);
                        } else if (id == "wheels_menu")

                        lscSettedWheelType = mp.players.local.vehicle.getWheelType();
                        lscSettedMod = mp.players.local.vehicle.getMod(categoryModsIds[id]);
                    }
                }
            }

            if (categoryIds[id] <= 18) {
                var prices = [];
                for (var key in global.tuningStandart[categoryIds[id]]) {
                    var price = global.tuningStandart[categoryIds[id]][key] * modelPriceMod * priceMod;
                    prices.push([`${key}`, price.toFixed()]);
                }
                setTimeout(function () { lsc.execute(`price(${JSON.stringify(prices)})`); }, 150);
            }
			else if (categoryIds[id] <= 26) {
                var prices = [];
                for (var key in global.tuningStandart[categoryIds[id]]) {
                    var price = global.tuningStandart[categoryIds[id]][key];
                    prices.push([`${key}`, price.toFixed()]);
                }
                setTimeout(function () { lsc.execute(`price(${JSON.stringify(prices)})`); }, 150);
            }
        }
        else if (wheelsTypes[id] != undefined) {
            mp.players.local.vehicle.setWheelType(wheelsTypes[id]);
            var prices = [];
            for (var key in global.tuningWheels[wheelsTypes[id]]) {
                var price = global.tuningWheels[wheelsTypes[id]][key] * priceMod;
                prices.push([`${key}`, price.toFixed()]);
            }
            setTimeout(function () { lsc.execute(`price(${JSON.stringify(prices)})`); }, 150);
        }
        else if (id == "paint_menu_one" || id == "paint_menu_two") {
            var price = 5000 * priceMod;
            var prices = ["buy", price.toFixed()];
            setTimeout(function () { lsc.execute(`price(${JSON.stringify(prices)})`); }, 150);
            mp.events.call("showColorp");
        }
        else if (id == "paint_menu_three") {
            var price = 250000 * priceMod;
            var prices = ["buy", price.toFixed()];
            setTimeout(function () { lsc.execute(`price(${JSON.stringify(prices)})`); }, 150);
            if (!isBike) mp.events.call("showColorp");
        }
        if (toDisable.includes(id)) {
            mp.events.call('tpage', "home");
            mp.events.call('notify', 1, 4, "Этот раздел недоступен для Вашего транспорта.", 3000);
        }

        setTimeout(function () { mp.events.call('tupd'); }, 150);
        lscPage = id;
    }
})
// Forced update //
mp.events.add('tupd', () => {
    lscSpeed = (mp.game.vehicle.getVehicleModelMaxSpeed(mp.players.local.vehicle.model) / 1.2).toFixed();
    lscBrakes = mp.players.local.vehicle.getMaxBraking() * 100;
    lscBoost = mp.players.local.vehicle.getAcceleration() * 100;
    lscСlutch = mp.players.local.vehicle.getMaxTraction() * 10;
    lsc.execute(`set(${lscSpeed},${lscBrakes},${lscBoost},${lscСlutch})`);
})
// Click on element //
mp.events.add('tclk', (id) => {
    if (id == undefined) return;

    id = parseInt(id);
    var setted = false;
    switch (lscPage) {
        case "muffler_menu":
            if (vehicleComponents.Muffler == id) setted = true;
            break;
        case "skirt_menu":
            if (vehicleComponents.SideSkirt == id) setted = true;
            break;
        case "hood_menu":
            if (vehicleComponents.Hood == id) setted = true;
            break;
        case "spoiler_menu":
            if (vehicleComponents.Spoiler == id) setted = true;
            break;
        case "lattice_menu":
            if (vehicleComponents.Lattice == id) setted = true;
            break;
        case "wings_menu":
            if (vehicleComponents.Wings == id) setted = true;
            break;
        case "roof_menu":
            if (vehicleComponents.Roof == id) setted = true;
            break;
        case "flame_menu":
            if (vehicleComponents.Vinyls == id) setted = true;
            break;
        case "bamper_menu_front":
            if (vehicleComponents.FrontBumper == id) setted = true;
            break;
        case "bamper_menu_back":
            if (vehicleComponents.RearBumper == id) setted = true;
            break;
        case "engine_menu":
            if (vehicleComponents.Engine == id) setted = true;
            break;
        case "turbo_menu":
            if (vehicleComponents.Turbo == id) setted = true;
            break;
        case "horn_menu":
            if (vehicleComponents.Horn == id) setted = true;
            break;
        case "transmission_menu":
            if (vehicleComponents.Transmission == id) setted = true;
            break;
        case "glasses_menu":
            if (vehicleComponents.WindowTint == id) setted = true;
            break;
        case "suspention_menu":
            if (vehicleComponents.Suspension == id) setted = true;
            break;
        case "brakes_menu":
            if (vehicleComponents.Brakes == id) setted = true;
            break;
        case "lights_menu":
            if (vehicleComponents.Headlights == id) setted = true;
            break;
        case "numbers_menu":
            if (vehicleComponents.NumberPlate == id) setted = true;
            break;
        case "wheels_exclusive":
        case "wheels_lowrider":
        case "wheels_musclecar":
        case "wheels_4x4":
        case "wheels_sport":
        case "wheels_4x4_2":
        case "wheels_tuner":
            if (vehicleComponents.WheelsType == wheelsTypes[lscPage] && vehicleComponents.Wheels == id) setted = true;
            break;
    }

    if (setted)
        mp.events.call('notify', 1, 9, "У Вас уже установлена данная модификация", 3000);
    else {
        lsc.execute(`show(${false});`);
        lsc.active = false;
        opened = false;
        lscSelected = id;

        if (lscPage === "paint_menu_one" || lscPage === "paint_menu_two" || lscPage === "paint_menu_three" || lscPage === "paint_menu_four")
            mp.events.call("hideColorp");

        var title = (lscPage === "paint_menu_one" || lscPage === "paint_menu_two" || lscPage === "paint_menu_three") ? "Вы действительно хотите покрасить машину в данный цвет?" : "Вы действительно хотите установить данную модификацию?";
        mp.events.call('openDialog', 'tuningbuy', title);
    }
})
// Hover on element //
mp.events.add('thov', (id) => {
    if (lscPage === "wheels_menu") return;

    if (lscPage == "numbers_menu") {
        mp.players.local.vehicle.setNumberPlateTextIndex(parseInt(id));
    }
    else if (lscPage == "glasses_menu") {
        mp.players.local.vehicle.setWindowTint(parseInt(id));
    }
    else if (lscPage == "horn_menu") {
        //mp.players.local.vehicle.startHorn(1000, hornNames[id], false);
    }
    else if (lscPage == "lights_menu")
    {
        mp.players.local.vehicle.setLights(2);
        if (id >= 0)
        {
            mp.players.local.vehicle.setMod(22, 0);
            mp.players.local.vehicle.toggleMod(22, true);
            mp.game.invoke('0xE41033B25D003A07', mp.players.local.vehicle.handle, parseInt(id));
        } else mp.players.local.vehicle.setMod(22, -1);
    }
    else {
        if (categoryModsIds[lscPage] != undefined) {
            if (lscPage == "turbo_menu")
                mp.players.local.vehicle.toggleMod(18, true);
            mp.players.local.vehicle.setMod(categoryModsIds[lscPage], parseInt(id));
            mp.events.call('tupd');
        }
        else if (wheelsTypes[lscPage] != undefined) {
            mp.players.local.vehicle.setMod(23, parseInt(id));
        }
    }
})
// Buy element //
mp.events.add('tunbuy', (state) => {
    if (state) {
        if (wheelsTypes[lscPage] != undefined)
            mp.events.callRemote('buyTuning', 19, lscSelected, wheelsTypes[lscPage]);
        else if (lscPage === "paint_menu_one" || lscPage === "paint_menu_two" || lscPage === "paint_menu_three" || lscPage === "paint_menu_four") {
            var paintType;
            if (lscPage === "paint_menu_one") paintType = 0;
            else if (lscPage === "paint_menu_two") paintType = 1;
            else if (lscPage === "paint_menu_three") paintType = 2;
            else if (lscPage === "paint_menu_four" && lscSelected == -1) paintType = 3;
            if (paintType == 2 && isBike) {
                mp.events.call('notify', 1, 4, "Этот раздел недоступен для мотоциклов.", 3000);
                lsc.execute(`show(${true});`);
                lsc.active = true;
                opened = true;
            }
            else if (lscPage === "paint_menu_four")
			{
				mp.events.callRemote('buyTuning', 21, lscSelected);
				lscMyColor = lscSelected;
			}
            else mp.events.callRemote('buyTuning', 20, paintType, lscRGB.r, lscRGB.g, lscRGB.b);
        }
        else
            mp.events.callRemote('buyTuning', categoryIds[lscPage], lscSelected, -1);
    }
    else {
        lsc.execute(`show(${true});`);
        lsc.active = true;
        opened = true;
        if (lscPage == "numbers_menu") {
            mp.players.local.vehicle.setNumberPlateTextIndex(lscSettedMod);
        }
        else if (lscPage == "glasses_menu") {
            mp.players.local.vehicle.setWindowTint(lscSettedMod);
        }
        else if (lscPage == "paint_menu_one") {
            mp.players.local.vehicle.setCustomPrimaryColour(lscPrimary.r, lscPrimary.g, lscPrimary.b);
        }
        else if (lscPage == "paint_menu_two") {
            mp.players.local.vehicle.setCustomSecondaryColour(lscSecondary.r, lscSecondary.g, lscSecondary.b);
        }
        else if (lscPage == "paint_menu_three") {
            mp.players.local.vehicle.setNeonLightsColour(lscNeon.r, lscNeon.g, lscNeon.b);
        }
        else {
            if (lscPage == "turbo_menu")
                mp.players.local.vehicle.toggleMod(18, false);

            if (categoryModsIds[lscPage] == undefined) return;
            mp.players.local.vehicle.setMod(categoryModsIds[lscPage], lscSettedMod);
        }
    }
})
mp.events.add('tunBuySuccess', (id) => {
    lsc.execute(`show(${true});`);
    lsc.active = true;
    opened = true;
    if (id != -2) {

        lscSettedMod = id;
        if (wheelsTypes[lscPage] != undefined)
            lscSettedWheelType = mp.players.local.vehicle.getWheelType();
        else if (lscPage == "paint_menu_one") {
            mp.events.call("showColorp");
            lscPrimary = mp.players.local.vehicle.getCustomPrimaryColour(1, 1, 1);
        } else if (lscPage == "paint_menu_two") {
            mp.events.call("showColorp");
            lscSecondary = mp.players.local.vehicle.getCustomSecondaryColour(1, 1, 1);
        } else if (lscPage == "paint_menu_three") {
            mp.events.call("showColorp");
            lscNeon = mp.players.local.vehicle.getNeonLightsColour(1, 1, 1);
        }
    }
})
mp.events.add('tunColor', function (c) {
    if (!opened) return;
    if (lscPage == "paint_menu_one") {
        mp.players.local.vehicle.setCustomPrimaryColour(c.r, c.g, c.b);
        lscRGB = { r: c.r, g: c.g, b: c.b };
    }
    else if (lscPage == "paint_menu_two") {
        mp.players.local.vehicle.setCustomSecondaryColour(c.r, c.g, c.b);
        lscRGB = { r: c.r, g: c.g, b: c.b };
    }
    else if (lscPage == "paint_menu_three") {
        mp.players.local.vehicle.setNeonLightsColour(c.r, c.g, c.b);
        mp.players.local.vehicle.setNeonLightEnabled(0, true);
        mp.players.local.vehicle.setNeonLightEnabled(1, true);
        mp.players.local.vehicle.setNeonLightEnabled(2, true);
        mp.players.local.vehicle.setNeonLightEnabled(3, true);
        lscRGB = { r: c.r, g: c.g, b: c.b };
    }
});
var tunCam = null;
var categoryPositions = [
    { 'CarHeading': 85.0, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 38.88963) },
    { 'CarHeading': 148.9986, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 39.28963) },
    { 'CarHeading': 265.0, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 40.58963) },
    { 'CarHeading': 85.0, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 39.28963) },
    { 'CarHeading': 265.0, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 38.88963) },
    { 'CarHeading': 148.9986, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 39.28963) },
    { 'CarHeading': 148.9986, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 40.08963) },
    { 'CarHeading': 160.9986, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 42.08963) },
    { 'CarHeading': 265.0, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 38.88963) },
    { 'CarHeading': 85.0, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 38.88963) },
    { 'CarHeading': 265.0, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 40.58963) },
    { 'CarHeading': 265.0, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 40.58963) },
    { 'CarHeading': 148.9986, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 40.58963) },
    { 'CarHeading': 265.0, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 40.58963) },
    { 'CarHeading': 148.9986, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 39.28963) },
    { 'CarHeading': 148.9986, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 39.28963) },
    { 'CarHeading': 265.0, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 40.58963) },
    { 'CarHeading': 265.0, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 38.88963) },
    { 'CarHeading': 85.0, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 38.88963) },
    { 'CarHeading': 148.9986, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 39.28963) },
    { 'CarHeading': 160.9986, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 40.08963) },
	{ 'CarHeading': 160.9986, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 40.08963) },
	{ 'CarHeading': 160.9986, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 40.08963) },
	{ 'CarHeading': 160.9986, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 40.08963) },
	{ 'CarHeading': 160.9986, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 40.08963) },
	{ 'CarHeading': 160.9986, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 40.08963) },
	{ 'CarHeading': 160.9986, 'CamPosition': new mp.Vector3(-333.7966, -137.409, 40.08963) },
];
var categoryIds = {
    "muffler_menu": 0,
    "skirt_menu": 1,
    "hood_menu": 2,
    "spoiler_menu": 3,
    "lattice_menu": 4,
    "wings_menu": 5,
    "roof_menu": 6,
    "flame_menu": 7,
    "bamper_menu_front": 8,
    "bamper_menu_back": 9,
    "engine_menu": 10,
    "turbo_menu": 11,
    "horn_menu": 12,
    "transmission_menu": 13,
    "glasses_menu": 14,
    "suspention_menu": 15,
    "brakes_menu": 16,
    "lights_menu": 17,
    "numbers_menu": 18,
    "wheels_menu": 19,
    "paint_menu": 20,
	"paint_1": 21,
	"paint_2": 21,
	"paint_3": 21,
	"paint_4": 21,
	"paint_5": 21,
	"armor_menu": 26,
};
var categoryModsIds = {
	"spoiler_menu": 0,
	"bamper_menu_front": 1,
    "bamper_menu_back": 2,
    "skirt_menu": 3,
	"muffler_menu": 4,
    "lattice_menu": 6,
    "hood_menu": 7,
    "wings_menu": 8,
    "roof_menu": 10,
	"engine_menu": 11,
	"brakes_menu": 12,
	"transmission_menu": 13,
	"horn_menu": 14,
	"suspention_menu": 15,
	"armor_menu": 16,
	"turbo_menu": 18,
	"lights_menu": 22,
    "wheels_menu": 23,
    "flame_menu": 48,
    
};
var categoryMods = [
    { Name: "muffler_menu", Index: 4 },
    { Name: "skirt_menu", Index: 3 },
    { Name: "hood_menu", Index: 7 },
    { Name: "spoiler_menu", Index: 0 },
    { Name: "lattice_menu", Index: 6 },
    { Name: "wings_menu", Index: 8 },
    { Name: "roof_menu", Index: 10 },
    { Name: "flame_menu", Index: 48 },
    { Name: "bamper_menu", Index: 1 },
];
var hornNames = {
    "HORN_STOCK": -1,
    "HORN_TRUCK": 0,
    "HORN_POLICE": 1,
    "HORN_CLOWN": 2,
    "HORN_MUSICAL1": 3,
    "HORN_MUSICAL2": 4,
    "HORN_MUSICAL3": 5,
    "HORN_MUSICAL4": 6,
    "HORN_MUSICAL5": 7,
    "HORN_SADTROMBONE": 8,
    "HORN_CALSSICAL1": 9,
    "HORN_CALSSICAL2": 10,
    "HORN_CALSSICAL3": 11,
    "HORN_CALSSICAL4": 12,
    "HORN_CALSSICAL5": 13,
    "HORN_CALSSICAL6": 14,
    "HORN_CALSSICAL7": 15,
    "HORN_SCALEDO": 16,
    "HORN_SCALERE": 17,
    "HORN_SCALEMI": 18,
    "HORN_SCALEFA": 19,
    "HORN_SCALESOL": 20,
    "HORN_SCALELA": 21,
    "HORN_SCALETI": 22,
    "HORN_SCALEDO_HIGH": 23,
    "HORN_JAZZ1": 24,
    "HORN_JAZZ2": 25,
    "HORN_JAZZ3": 26,
    "HORN_JAZZLOOP": 27,
    "HORN_STARSPANGBAN1": 28,
    "HORN_STARSPANGBAN2": 29,
    "HORN_STARSPANGBAN3": 30,
    "HORN_STARSPANGBAN4": 31,
    "HORN_CLASSICALLOOP1": 32,
    "HORN_CLASSICAL8": 33,
    "HORN_CLASSICALLOOP2": 34,
};
var wheelsTypes = {
    "wheels_exclusive": 7,
    "wheels_lowrider": 2,
    "wheels_musclecar": 1,
    "wheels_4x4": 3,
    "wheels_sport": 0,
    "wheels_4x4_2": 4,
    "wheels_tuner": 5,
};
var toDisable = ["armor_menu"];
var vehicleComponents = {};
mp.events.add('tuningUpd', function (components) {
    vehicleComponents = JSON.parse(components);
});
mp.events.add('openTun', (priceModief, carModel, modelPriceModief, components, vehclass) => {
    opened = true;
    global.menuOpen();
    toDisable = ["armor_menu", "protection_menu"];
    categoryMods.forEach(element => {
        if (mp.players.local.vehicle.getNumMods(element.Index) <= 0) toDisable.push(element.Name);
    });
    isBike = false;

    if (vehclass == 8) {
        isBike = true;
        toDisable = ["armor_menu", "protection_menu", "muffler_menu", "skirt_menu", "hood_menu", "spoiler_menu", "lattice_menu", "wings_menu", "roof_menu", "flame_menu", "bamper_menu", "turbo_menu", "transmission_menu", "suspention_menu", "horn_menu", "wheels_menu", "glasses_menu", "paint_menu_three"];
    }

    lsc.execute(`disable(${JSON.stringify(toDisable)});`);
    mp.events.call('tupd');
    lsc.execute(`show(${true});`);
    lsc.active = true;

    priceMod = priceModief / 100;
    modelPriceMod = modelPriceModief;
    carName = carModel;

    tunCam = mp.cameras.new('default', new mp.Vector3(-333.7966, -137.409, 40.58963), new mp.Vector3(0, 0, 0), 60);
    tunCam.pointAtCoord(-338.7966, -137.409, 37.88963);
    tunCam.setActive(true);
    mp.game.cam.renderScriptCams(true, false, 500, true, false);

    vehicleComponents = JSON.parse(components);
});

mp.events.add('tuningSeatsCheck', function () {
    var veh = mp.players.local.vehicle;
    for (var i = 0; i < 7; i++)
        if (veh.getPedInSeat(i) !== 0) {
            mp.events.call('notify', 4, 9, 'Попросите выйти всех пассажиров', 3000);
            return;
        }
    mp.events.callRemote('tuningSeatsCheck');
});