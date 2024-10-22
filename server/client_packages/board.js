﻿global.board = mp.browsers.new('package://cef/board.html');
global.openOutType = -1;
global.boardOpen = false;

mp.keys.bind(Keys.VK_I, false, function () {

    if (!global.loggedin || global.chatActive || global.editing || global.cuffed || mp.players.local.getVariable('InDeath') == true) return;

    if (global.boardOpen)
        mp.events.call('board', 1);
    else
        mp.events.call('board', 0);
});

mp.keys.bind(Keys.VK_ESCAPE, false, function() {

    if (global.boardOpen) {
        mp.game.ui.setPauseMenuActive(false);
        mp.events.call('board', 1);
    }
});

mp.events.add('BOARD::LOAD_ASSETS_INFO', (houseData, businessData, vehiclesData) => {
	houseData = JSON.parse(houseData);
	businessData = JSON.parse(businessData);
	vehiclesData = JSON.parse(vehiclesData);
	let data = {
		"House": houseData,
		"Business": businessData,
		"Vehicles": vehiclesData
	}
	let json = JSON.stringify(data);
	global.board.execute(`board.properties=${json}`);
});

// DONATE //
var reds = 0;
var donateOpened = false;
mp.keys.bind(0x78, false, function () { // F9
    if (!global.loggedin) return;

    if (global.menuCheck()) {
        if (donateOpened) {
            global.menuClose();
            menu.execute(`donate.close()`);
            donateOpened = false;
        }
	} else {
        global.menuOpen();
        donateOpened = true;
        menu.execute(`donate.show(${reds})`);
	}
});

mp.events.add("WheelsRun", () => {
    global.board.execute(`wheelrun();`);
});
mp.events.add("WheelsRun", () => {
    global.board.execute(`wheelrun();`);
});

mp.events.add('wheelAdd', (id, data) => {
    mp.events.callRemote("wheelAddsrv", id, data);
});
mp.events.add('wheel', (id, data) => {
    mp.events.callRemote("donate", id, data);
});
mp.events.add('donbuy', (id, data) => {
	global.menuClose();
	mp.events.call('fromBlur', 200)
	global.board.execute(`board.close()`);
    mp.events.callRemote("donate", id, data);
});
mp.events.add('redset', (reds_) => {
    reds = reds_;
    if (board != null)
	global.board.execute(`board.balance=${reds}`);
});


function openBoard() {

	if(global.board == null) return;
	if (global.menuCheck()) return;
    global.menuOpen();
	global.board.execute('board.active=true');
	global.boardOpen = true;

	mp.events.callRemote("REMOTE::LOAD_PROPERTIES_INFO_TO_BOARD");
}

function closeBoard() {
	
	if(global.board == null) return;
    global.menuClose();
    global.board.execute('context.hide()');
	global.board.execute('board.active=false');
    global.board.execute('board.outside=false');
    global.boardOpen = false;

    if (global.openOutType != -1) {
        mp.events.callRemote('closeInventory');
        global.openOutType = -1;
    }
}
// // //
// 0 - Open
// 1 - Close
// 2 - Statistics data
// 3 - Inventory data
// 4 - Outside data
// 5 - Outside on/off
// // //
var last
mp.events.add('board', (act, data, index) => {
    if (global.board === null)
        global.board = mp.browsers.new('package://cef/board.html');
    //mp.gui.chat.push(`act: ${act} | data: ${data}`);

	switch(act){
		case 0:
			openBoard();
			break;
        case 1:
			closeBoard();
			break;
        case 2:
			global.board.execute(`board.stats=${data}`);
			break;
		case 3:
			global.board.execute(`board.itemsSet(${data})`);
			break;
		case 4:
			global.board.execute(`board.outSet(${data})`);
			break;
		case 5:
            global.board.execute(`board.outside=${data}`);
            global.openOutType = 0;
			break;
        case 6:
            global.board.execute(`board.itemUpd(${index},${data})`);
        	break;
        case 11:
            global.openOutType = -1;
            closeBoard();
        	break;
	}
});



mp.events.add('boardCB', (act, type, index) => {
	if(new Date().getTime() - global.lastCheck < 100) return; 
	global.lastCheck = new Date().getTime();
	// bullshit, required refactor 
	switch(act){
		case 1:
		mp.events.callRemote('Inventory', type, index, 'use');
		break;
		case 2:
		mp.events.callRemote('Inventory', type, index, 'transfer');
		break;
		case 3:
		mp.events.callRemote('Inventory', type, index, 'take');
		break;
		case 4:
		mp.events.callRemote('Inventory', type, index, 'drop');
		break;
	}
});

mp.events.add("playerQuit", (player, exitType, reason) => {
    if (global.board !== null) {
        if (player.name === mp.players.local.name) {
            global.board.destroy();
            global.board = null;
        }
    }
});