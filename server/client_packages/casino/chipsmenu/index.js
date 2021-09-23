require('./casino/chipsmenu/events');

const pedPos = [
    [ new mp.Vector3(1117.532, 219.9995, -49.6825), 89.0 ], // chip sell PED
    [ new mp.Vector3(1088.20056, 221.160019, -49.1975098), -179.802322 ], // Casino Staff PED
    [ new mp.Vector3(1092.04761, 217.41658, -49.1785393), 114.835243 ], // baby 
    [ new mp.Vector3(1089.42322, 215.862274, -49.2002716), -63.8173714 ], // photographer (reporter)
    [ new mp.Vector3(1095.5426, 208.01178, -48.9797096), -17.0548611 ], // security 1
    [ new mp.Vector3(1116.6991, 222.320648, -49.4370346), 59.676651 ], // security 2
    [ new mp.Vector3(1152.09949, 261.086456, -51.8385162), 46.2351036 ], // security 3
];
const pedHash = [
    mp.game.joaat("s_f_y_casino_01"),
    mp.game.joaat("s_m_y_casino_01"),
    mp.game.joaat("a_f_y_smartcaspat_01"),
    mp.game.joaat("csb_reporter"),
    mp.game.joaat("u_m_m_jewelsec_01"),
    mp.game.joaat("a_m_y_smartcaspat_01"),
    mp.game.joaat("u_m_m_jewelsec_01"),
];
const pedAnimation = [
    ["amb@prop_human_seat_chair@female@legs_crossed@idle_b", "idle_d"],
    ["anim@amb@world_human_valet@normal@base@", "base_a_m_y_vinewood_01"],
    ["missmic4premiere", "prem_actress_star_a"],
    ["", ""],
    ["", ""],
    ["", ""],
    ["", ""],
];
const pedScenarios = [
    "",
    "",
    "",
    "WORLD_HUMAN_PAPARAZZI",
    "WORLD_HUMAN_GUARD_STAND",
    "WORLD_HUMAN_GUARD_STAND",
    "WORLD_HUMAN_GUARD_STAND"
];

let peds = [];
pedPos.forEach(function(item, index) {
    let ped = mp.peds.new(
        pedHash[index],
        item[0],
        item[1],
        0
    );

    peds.push([index, ped]);
});

mp.events.add('entityStreamIn', function (entity) {
    if(entity.type === 'ped')
        playAnimation(entity);
});

function playAnimation(ped) {
    try {
        ped = peds.find(item => item[1] === ped); // find ped

        if(pedAnimation[ped[0]][0] != "")
        {
            mp.game.streaming.requestAnimDict(pedAnimation[ped[0]][0]);
            if (!mp.game.streaming.hasAnimDictLoaded(pedAnimation[ped[0]][0]) || !mp.peds.exists(ped[1])) {
                mp.game.streaming.requestAnimDict(pedAnimation[ped[0]][0]);
                while (!mp.game.streaming.hasAnimDictLoaded(pedAnimation[ped[0]][0]))
                    mp.game.wait(0);
            }

            ped[1].taskPlayAnim(pedAnimation[ped[0]][0], pedAnimation[ped[0]][1], 8.0, 1, -1, 1, 0.0, false, false, false);
        }

        if (pedScenarios[ped[0]] != "")
            mp.game.invoke('0x142A02425FF02BD9', ped[1].handle, pedScenarios[ped[0]], 0, true); // TASK_START_SCENARIO_IN_PLACE       
    }
    catch(e)
    {
        mp.gui.chat.push(e);
    }
}