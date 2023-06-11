const spectating = require('./spmenu.js');

afkSecondsCount = 0;

setInterval(function () {
    if (!global.menuOpened) {

        afkSecondsCount++;
        if (afkSecondsCount >= 900) {
			if(mp.players.local.getVariable('IS_ADMIN') == true) afkSecondsCount = 0;
			else {
				mp.gui.chat.push('Вы были исключены из игры за AFK более 15 минут.');
				mp.events.callRemote('kickclient');
			}
        }
    }
}, 1000);

mp.events.add('render', () => {
    if (mp.game.controls.isControlPressed(0, 32) || 
        mp.game.controls.isControlPressed(0, 33) || 
        mp.game.controls.isControlPressed(0, 321) ||
        mp.game.controls.isControlPressed(0, 34) || 
        mp.game.controls.isControlPressed(0, 35) || 
        mp.game.controls.isControlPressed(0, 24) || 
        mp.players.local.getVariable('InDeath') == true) 
    {
        afkSecondsCount = 0;
    }
    else if (mp.players.local.isInAnyVehicle(false) && mp.players.local.vehicle.getSpeed() != 0) 
    {
        afkSecondsCount = 0;
    } 
    else if(spectating) 
    { // Чтобы не кикало администратора в режиме слежки
		afkSecondsCount = 0;
	}
});

exports = { afkSecondsCount };