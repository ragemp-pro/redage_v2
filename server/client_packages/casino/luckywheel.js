let isInLuckySheelShape = false;
let playerMovingDisabled = false;

// Подгружаем интерьер казино
let interior = mp.game.interior.getInteriorAtCoords(1100.000, 220.000, -50.000);
mp.game.streaming.requestIpl("vw_casino_main");
mp.game.interior.refreshInterior(interior);

// Создаем объект колеса
let wheel = mp.objects.new(mp.game.joaat('vw_prop_vw_luckywheel_02a'), new mp.Vector3(1111.05, 229.81, -49.15), { dimension: 1 });
wheel.setHeading(-30);

mp.events.add({
    "casino.luckywheel.roll": (playerId, index) => {
        wheel.setRotation(0.0, 0.0, 0.0, 1, true);
        let player = mp.players.atRemoteId(playerId);
        let pos = new mp.Vector3(1109.55, 228.88, -49.64);
        let dict = getAnimDict(player);
        mp.game.streaming.requestAnimDict(dict);
        player.taskGoStraightToCoord(pos.x, pos.y, pos.z, 1.0, -1, 312.2, 0.0);

        setTimeout(() => {
            if (player === mp.players.local)
            {
                //mp.utils.disablePlayerMoving(true);
                playerMovingDisabled = true;
            }
            player.taskPlayAnim(dict, 'enter_right_to_baseidle', 8.0, -8.0, -1, 0, 0, false, false, false);
            let ready = false;
            while (!ready) {
                //if (!mp.utils.isEntityPlayingAnim(player, dict, 'enter_right_to_baseidle')) {
                if (!mp.game.invoke('0x1F0B79228E461EC9', player, dict, 'enter_right_to_baseidle')) {
                    ready = true;
                }
            }
            player.taskPlayAnim(dict, 'enter_to_armraisedidle', 8.0, -8.0, -1, 0, 0, false, false, false);
            ready = false;
            while (!ready) {
                //if (!mp.utils.isEntityPlayingAnim(player, dict, 'enter_to_armraisedidle')) {
                if (!mp.game.invoke('0x1F0B79228E461EC9', player, dict, 'enter_to_armraisedidle')) {
                    ready = true;
                }
            }
            player.taskPlayAnim(dict, 'armraisedidle_to_spinningidle_high', 8.0, -8.0, -1, 0, 0, false, false, false);
            player.freezePosition(true);
            let y = 0;
            let count = 60 + index;
            let val = 1;
            let rollTimer = null;
            rollTimer = setInterval(() => {
                if (count > 0) {
                    if (count < 8) val = 4;
                    else if (count < 30) val = 2;
                    y += 18 / val;
                    count -= 1 / val;
                    wheel.setRotation(0.0, y, 0.0, 1, true);
                } else {
                    clearInterval(rollTimer);
                    rollTimer = null
                    player.freezePosition(false);
                    if (player === mp.players.local) {
                        playerMovingDisabled = false;
                        mp.events.callRemote('casino.luckywheel.roll.finish');
                    }
                }
            }, 50);
        }, 2000);
    },
    "casino.luckywheel.enter": (enter) => {
        isInLuckySheelShape = enter;
    }
});

mp.keys.bind(0x45, true, () => {
    if (!isInLuckySheelShape) return;
    mp.events.callRemote('casino.luckywheel.roll');
});

function getAnimDict(player) {
    return mp.game.joaat("mp_m_freemode_01") == player.model ?
        'anim_casino_a@amb@casino@games@lucky7wheel@male' : 'anim_casino_a@amb@casino@games@lucky7wheel@female';
}

/// Отключение движения игрока
mp.events.add('render', () => {
    if (playerMovingDisabled) {
        mp.game.controls.disableControlAction(0, 21, true); /// бег
        mp.game.controls.disableControlAction(0, 22, true); /// прыжок
        mp.game.controls.disableControlAction(0, 31, true); /// вперед назад
        mp.game.controls.disableControlAction(0, 30, true); /// влево вправо
        mp.game.controls.disableControlAction(0, 24, true); /// удары
        mp.game.controls.disableControlAction(0, 25, true); /// INPUT_AIM
        mp.game.controls.disableControlAction(0, 257, true); /// стрельба
        mp.game.controls.disableControlAction(1, 200, true); // esc
        mp.game.controls.disableControlAction(0, 140, true); /// удары R
        mp.game.controls.disableControlAction(24, 37, true); /// Tab
        mp.game.controls.disableControlAction(0, 257, true); // INPUT_ATTACK2
    }
});