mp.events.add("openChipsMenu", (data) => {
    if (!loggedin || chatActive || editing || cuffed) return;

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
    mp.events.callRemote('casino.buyChips', data);
});
mp.events.add("casino:sellChips", (data) => {
    data = parseInt(data);
    if (data === NaN || data < 1) return;

    mp.events.callRemote('casino.sellChips', data);
});