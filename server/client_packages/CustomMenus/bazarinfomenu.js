global.lastCheck = 0;

mp.events.add("openbazarinfo", () => {
	mp.events.call("openbazarinfo_menu");
});
mp.events.add("closebazarinfo", () => {
	mp.events.call("MenuBuilder:close");
});
mp.events.add("openbazarinfo_menu", player => {
    mp.console.logInfo("Успешно загрузился")
    
   let MenuBuilder = mp.browsers.new("http://package/CustomMenusCEF/bazarinfomenu/index.html")
    
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