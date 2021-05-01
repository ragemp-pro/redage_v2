mp.events.add('setDoorLocked', function (model, x, y, z, locked, angle) {
    const timer = setInterval(() => {
        if (mp.game.object.doesDoorExist(model)) {
            clearInterval(timer);
        }
        //else mp.gui.chat.push(`Дверь мне сделай!`);

        mp.game.object.addDoorToSystem(model, model, x, y, z, locked, false, false);
        mp.game.object.doorControl(model, x, y, z, locked, 0, 0, angle);
    }, 50);
});