require('./casino/chipsmenu/events');

// chip sell PED
const pedPos = new mp.Vector3(1117.532, 219.9995, -49.6825);
const pedHash = mp.game.joaat("s_f_y_casino_01");
const AnimDict = "amb@prop_human_seat_chair@female@legs_crossed@idle_b";
const AnimationName = "idle_d";

let = ped = mp.peds.new(
    pedHash, 
    pedPos,
    89.0,
    0
);

mp.events.add('entityStreamIn', function (entity) {
    if(entity.type === 'ped')
    {
        if(entity == ped) playAnimation(ped);
    }
});

function playAnimation(ped) {
    mp.game.streaming.requestAnimDict(AnimDict);
    if (!mp.game.streaming.hasAnimDictLoaded(AnimDict) || !mp.peds.exists(ped)) {
        mp.game.streaming.requestAnimDict(AnimDict);
        while (!mp.game.streaming.hasAnimDictLoaded(AnimDict))
            mp.game.wait(0);
    }

    ped.taskPlayAnim(AnimDict, AnimationName, 8.0, 1, -1, 1, 0.0, false, false, false);
}