mp.events.add("openCreatorFamilyMenu", (json) => {
	if (!global.loggedin || global.chatActive || global.editing || global.cuffed) return;
	global.menuOpen();
	global.familyCreator = mp.browsers.new('package://cef/FamilyCreator/index.html');
	global.familyCreator.active = true;
	global.familyCreator.execute(`familyCreator.active=true`);
	global.familyCreator.execute(`familyCreator.setinfo(${json})`);
});

mp.events.add("closeFamilyCreatorMenu", () => {
	global.menuClose();
	if(global.familyCreator){
		global.familyCreator.active = false;
		global.familyCreator.destroy();
	}
});

mp.events.add("createFamily", (name, maxpl, img) => {
	mp.events.callRemote("createnewfamily", name, maxpl, img);
});

mp.events.add("loadlistfamilies", (sender, json) => {
	if(sender == "client") mp.events.callRemote("loadlistfamilies");
	if(sender == "server")
	{
		global.familyCreator.execute(`familyCreator.families=${json}`);
	}
});