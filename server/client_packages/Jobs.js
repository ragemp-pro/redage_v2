mp.peds.new(0x49EA5685, new mp.Vector3(-457.54324, -2751.0408, 6.1002174), 358.1944); // ped Loader
mp.peds.new(0x49EA5685, new mp.Vector3(144.8581, -373.5612, 43.35), 35.74032); // ped Construction
mp.peds.new(0xEAC2C7EE, new mp.Vector3(1695.806, 43.05446, 161.7473), 99.60); // ped Diver
mp.peds.new(0x49EA5685, new mp.Vector3(2946.686, 2746.836, 43.40), 288.2411); // ped Miner
mp.peds.new(0x49EA5685, new mp.Vector3(2946.686, 2746.836, 43.40), 288.2411); // ped Miner
global.jobs = mp.browsers.new('package://cef/jobs.html'); //статистика

// Job JobsEinfo //
mp.events.add('JobsEinfo', () => {
    jobs.execute('JobsEinfo.active=1');
});
mp.events.add('JobsEinfo2', () => {
    jobs.execute('JobsEinfo.active=0');
});

// Job StatsInfo //
mp.events.add('JobStatsInfo', (money) => {
    jobs.execute('JobStatsInfo.active=1');
    jobs.execute(`JobStatsInfo.set('${money}')`);
});
mp.events.add('CloseJobStatsInfo', () => {
    jobs.execute('JobStatsInfo.active=0');
});
// Улучшенные блипы
var JobMenusBlip = [];
mp.events.add('JobMenusBlip', function (uid, type, position, names, dir) {
    if (typeof JobMenusBlip[uid] != "undefined") {
        JobMenusBlip[uid].destroy();
        JobMenusBlip[uid] = undefined;
    }
    if (dir != undefined) {
        JobMenusBlip[uid] = mp.blips.new(type, position,
            {
                name: names,
                scale: 1,
                color: 4,
                alpha: 255,
                drawDistance: 100,
                shortRange: false,
                rotation: 0,
                dimension: 0
            });
    }

});
mp.events.add('deleteJobMenusBlip', function (uid) {
    if (typeof JobMenusBlip[uid] == "undefined") return;
    JobMenusBlip[uid].destroy();
    JobMenusBlip[uid] = undefined;
});


// Job Loader //
mp.events.add('OpenLoader', (money, level, currentjob, work) => {
    if (global.menuCheck()) return;
    jobs.execute(`Loader.set('${money}', '${level}', '${currentjob}', '${work}')`);
    jobs.execute('Loader.active=1');
    global.menuOpen();
});
mp.events.add('CloseLoader', () => {
    jobs.execute('Loader.active=0');
    global.menuClose();
});
mp.events.add("selectJobLoader", (jobid) => {
    if (new Date().getTime() - global.lastCheck < 1000) return;
    global.lastCheck = new Date().getTime();
    mp.events.callRemote("jobJoinLoader", jobid);
});
mp.events.add('secusejobLoader', (jobsid) => {
    jobs.execute(`Loader.setnewjob('${jobsid}')`);
});
mp.events.add('enterJobLoader', (work) => {
    mp.events.callRemote('enterJobLoader', work);
});


// Job Construction //
mp.events.add('OpenConstruction', (money, level, currentjob, work) => {
    if (global.menuCheck()) return;
    jobs.execute(`Construction.set('${money}', '${level}', '${currentjob}', '${work}')`);
    jobs.execute('Construction.active=1');
    global.menuOpen();
});
mp.events.add('CloseConstruction', () => {
    jobs.execute('Construction.active=0');
    global.menuClose();
});
mp.events.add("selectJobConstruction", (jobid) => {
    if (new Date().getTime() - global.lastCheck < 1000) return;
    global.lastCheck = new Date().getTime();
    mp.events.callRemote("jobJoinConstruction", jobid);
});
mp.events.add('secusejobConstruction', (jobsid) => {
    jobs.execute(`Construction.setnewjob('${jobsid}')`);
});
mp.events.add('enterJobConstruction', (work) => {
    mp.events.callRemote('enterJobConstruction', work);
});

// Job Diver //
mp.events.add('OpenDiver', (money, level, currentjob, work) => {
    if (global.menuCheck()) return;
    jobs.execute(`Diver.set('${money}', '${level}', '${currentjob}', '${work}')`);
    jobs.execute('Diver.active=1');
    global.menuOpen();
});
mp.events.add('CloseDiver', () => {
    jobs.execute('Diver.active=0');
    global.menuClose();
});
mp.events.add("selectJobDiver", (jobid) => {
    if (new Date().getTime() - global.lastCheck < 1000) return;
    global.lastCheck = new Date().getTime();
    mp.events.callRemote("jobJoinDiver", jobid);
});
mp.events.add('secusejobDiver', (jobsid) => {
    jobs.execute(`Diver.setnewjob('${jobsid}')`);
});
mp.events.add('enterJobDiver', (work) => {
    mp.events.callRemote('enterJobDiver', work);
});
// Job StatsInfoDiver //
mp.events.add('JobStatsInfoDiver', (money, objects, obji) => {
    jobs.execute('JobStatsInfoDiver.active=1');
    jobs.execute(`JobStatsInfoDiver.set('${money}', '${objects}', '${obji}')`);
});
mp.events.add('CloseJobStatsInfoDiver', () => {
    jobs.execute('JobStatsInfoDiver.active=0');
});
// Возду для водолаза
var player = mp.players.local;
mp.events.add("startdiving", () => {
    player.setMaxTimeUnderwater(1000);
});
mp.events.add("stopdiving", () => {
    player.setMaxTimeUnderwater(10);
});
// Объекты для водолаза
var ObjectsJob = [];
mp.events.add("createObjectJobs", (uid, name, x, y, z) => {
    ObjectsJob[uid] = mp.game.object.createObject(mp.game.joaat(name), x, y, z, false, false, false);
});
mp.events.add("deleteObjectJobs", (uid) => {
    mp.game.object.deleteObject(ObjectsJob[uid]);
});

// Job Miner //
mp.events.add('OpenMiner', (money, level, currentjob, work, money2, money3) => {
    if (global.menuCheck()) return;
    jobs.execute(`Miner.set('${money}', '${level}', '${currentjob}', '${work}', '${money2}', '${money3}')`);
    jobs.execute('Miner.active=1');
    global.menuOpen();
});
mp.events.add('CloseMiner', () => {
    jobs.execute('Miner.active=0');
    global.menuClose();
});
mp.events.add("selectJobMiner", (jobid) => {
    if (new Date().getTime() - global.lastCheck < 1000) return;
    global.lastCheck = new Date().getTime();
    mp.events.callRemote("jobJoinMiner", jobid);
});
mp.events.add('secusejob', (jobsid) => {
    jobs.execute(`Miner.setnewjob('${jobsid}')`);
});
mp.events.add('enterJobMiner', (work) => {
    if (new Date().getTime() - global.lastCheck < 1000) return;
    global.lastCheck = new Date().getTime();
    mp.events.callRemote('enterJobMiner', work);
    global.menuClose();
    jobs.execute('Miner.active=0');
});


// Job Woodcutter //
mp.events.add('OpenWoodcutter', (money, level, currentjob, work, money2, money3) => {
    if (global.menuCheck()) return;
    jobs.execute(`Woodcutter.set('${money}', '${level}', '${currentjob}', '${work}', '${money2}', '${money3}')`);
    jobs.execute('Woodcutter.active=1');
    global.menuOpen();
});
mp.events.add('CloseWoodcutter', () => {
    jobs.execute('Woodcutter.active=0');
    global.menuClose();
});
mp.events.add("selectJobWoodcutter", (jobid) => {
    if (new Date().getTime() - global.lastCheck < 1000) return;
    global.lastCheck = new Date().getTime();
    mp.events.callRemote("jobJoinWoodcutter", jobid);
});
mp.events.add('secusejob', (jobsid) => {
    jobs.execute(`Woodcutter.setnewjob('${jobsid}')`);
});
mp.events.add('enterJobWoodcutter', (work) => {
    if (new Date().getTime() - global.lastCheck < 1000) return;
    global.lastCheck = new Date().getTime();
    mp.events.callRemote('enterJobWoodcutter', work);
    global.menuClose();
    jobs.execute('Woodcutter.active=0');
});
