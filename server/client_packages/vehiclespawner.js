mp.events.add("openFractionVehicleSpawner", (json) => {
  if (!global.loggedin || global.chatActive || global.editing || global.cuffed || mp.players.local.getVariable('fraction') <= 0) return;
  global.fractioncarspawner = mp.browsers.new('package://VehicleSpawner/index.html');
  global.fractioncarspawner.active = true;
  global.menuOpen();
  global.fractioncarspawner.execute(`fractioncarspawner.active=true`);
  global.fractioncarspawner.execute(`fractioncarspawner.vehicles=${json}`);
});

mp.events.add("closeFractionVehicleSpawner", () => {
  if(global.fractioncarspawner)
		{
			global.menuClose();
			global.fractioncarspawner.active = false;
			global.fractioncarspawner.destroy();
		}
});

mp.events.add("carspawner:trigger", (number, type) => {
  mp.events.callRemote('callbackCarSpawner', number, type);
});
