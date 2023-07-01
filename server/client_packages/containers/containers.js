mp.events.add("openContainerMenu", (json) => {
  if (!global.loggedin || global.chatActive || global.editing || global.cuffed) return;
  global.containerMenu = mp.browsers.new('package://cef/ContainerSystem/index.html');
  global.containerMenu.active = true;
  global.menuOpen();
  setTimeout(function() {
	var data = JSON.stringify(json);
    global.containerMenu.execute(`containerMenu.setinfo(${data})`);
  }, 110);
});

mp.events.add("closeContainer", () => {
  setTimeout(function() {
		if(global.containerMenu)
		{
			global.menuClose();
			global.containerMenu.active = false;
			global.containerMenu.destroy();
		}
	}, 55);
});

mp.events.add("openContainer", () => {
  mp.events.callRemote('openContainer');
});
