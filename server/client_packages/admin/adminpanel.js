mp.keys.bind(0x77, false, function () {
    if (!global.loggedin || global.chatActive || global.editing || new Date().getTime() - global.lastCheck < 1000 || global.menuOpened || !mp.players.local.getVariable("IS_ADMIN")) return;
    mp.events.callRemote('openAdminPanel');
    global.lastCheck = new Date().getTime();
});

mp.events.add("openAdminPanel", (json, json2) => {
  if (!global.loggedin || global.chatActive || global.editing || global.cuffed) return;
  
  global.adminPanel = mp.browsers.new('package://cef/AdminPanel/index.html');
  global.adminPanel.active = false;
  global.menuOpen();

  global.adminPanel.execute(`admlist.active=true`);
  global.adminPanel.execute(`admlist.cmdlist=${json}`);
  global.adminPanel.execute(`admlist.items=${json2}`);

  global.adminPanel.active = true;
});

mp.events.add("closeAdminPanel", () => {
  global.menuClose();
  if(global.adminPanel) global.adminPanel.destroy();
});

mp.events.add("getPlayerInfo", (id) => {
  mp.events.callRemote('getPlayerInfoToAdminPanel', id);
});
mp.events.add("loadPlayerInfo", (json) => {
  global.adminPanel.execute(`admlist.player=${json}`);
});
