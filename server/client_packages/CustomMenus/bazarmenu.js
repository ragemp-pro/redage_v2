var model = null;
var number = null;
var price = null;
var turbo = null;
var engine = null;
var breaking = null;
var box = null;
var susp = null;
var owner = null;
global.lastCheck = 0;

mp.events.add("openbazar", (a, b, c, d, e, f, i, o, h) => {
	model = a,
	number = b,
	price = c,
	turbo = d,
	engine = e,
	breaking = f,
	box = i,
	susp = o,
	owner = h,
	mp.events.call("openbazar_menu");
});
mp.events.add("closebazar", () => {
	mp.events.call("MenuBuilder:close");
});
mp.events.add("openbazar_menu", player => {
    mp.console.logInfo("Успешно загрузился")
    let MenuBuilder = mp.browsers.new("http://package/CustomMenusCEF/bazarmenu/index.html")

    mp.events.add("MenuBuilder:ready", () => {
        MenuBuilder.call("MenuBuilder:setData", JSON.stringify({
            model,
            number,
            price,
            turbo,
            engine,
            breaking,
            box,
            susp,
            owner
        }));
    })

    mp.events.add("MenuBuilder:select", (data) => {
        try {
            data = JSON.parse(data)
            if (data.name === "push_to_chat") {
               
            }
            if (data.name === "bazar_testdrive") {
				mp.events.callRemote('bazar:testdrive');
			}
			if (data.name === "bazar_buy") {
				mp.events.callRemote('bazar:buy');
			}
			if (data.name === "bazar_buy_card") {
				mp.events.callRemote('bazar:buy:card');
			}
			if (data.name === "bazar_getback") {
				mp.events.callRemote('bazar:getback');
			}
        } catch (e) {
            mp.console.logError(e) 
        }
    })

    
    mp.events.add("MenuBuilder:close", () => {
        UIMenu = 0;
        mp.events.remove("MenuBuilder:confirm");
        mp.events.remove("MenuBuilder:select");
        mp.events.remove("MenuBuilder:ready");
        MenuBuilder.destroy();
        mp.events.remove("MenuBuilder:close");
        global.menuClose();
        
    })
});