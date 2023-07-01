mp.events.add("openChipsMenu", (data) => {
    if (!global.loggedin || global.chatActive || global.editing || global.cuffed || global.menuOpened) return;

    global.chipsMenu = mp.browsers.new('package://cef/CasinoMarket/index.html');
    global.chipsMenu.active = true;
    global.menuOpen();
    
    data = JSON.parse(data);
    global.chipsMenu.execute(`CasinoMarket.chipbuy = ${data[0]}; CasinoMarket.chipsale = ${data[1]};`);
});

mp.events.add("closeChipsMenu", () => {
    if(global.chipsMenu != null)
    {
        global.menuClose();
        global.chipsMenu.active = false;
        global.chipsMenu.destroy();
    }
});

mp.events.add("casino:buyChips", (data) => {
    if (!global.loggedin || new Date().getTime() - global.lastCheck < 1000) return;
    global.lastCheck = new Date().getTime();

    mp.events.callRemote('casino.buyChips', data);
});
mp.events.add("casino:sellChips", (data) => {
    if (!global.loggedin || new Date().getTime() - global.lastCheck < 1000) return;
    global.lastCheck = new Date().getTime();

    data = parseInt(data);
    if (data === NaN || data < 1) return;

    mp.events.callRemote('casino.sellChips', data);
});