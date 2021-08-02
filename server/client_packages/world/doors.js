mp.events.add('setDoorLocked', function (model, x, y, z, locked, angle) {
    while(!mp.game.streaming.hasModelLoaded(model)) mp.game.wait(0);

    if (!mp.game.object.doesDoorExist(model)) {
        mp.game.object.addDoorToSystem(model, model, x, y, z, locked, false, false);
    }
    mp.game.object.doorControl(model, x, y, z, locked, 0, 0, angle);
});