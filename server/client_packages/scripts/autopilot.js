let autoPilotActivated = false;
let autoPilotColshape = null;
const vehiclesHaveAutopilot = ["teslax"];

mp.keys.bind(0x73, true, function() { // F4
	if(mp.players.local.vehicle)
	{
        for (let k = 0; k < vehiclesHaveAutopilot.length; k++)
        {
            let model = mp.game.joaat(vehiclesHaveAutopilot[k]);

            if (!mp.players.local.vehicle.isModel(model))
                return mp.game.graphics.notify("Данный транспорт не оснащен системой автопилота");
        }

		if(mp.players.local.vehicle.getPedInSeat(-1) == mp.players.local.handle && autoPilotActivated == false)
		{
            if(mp.players.local.vehicle.getIsEngineRunning() == false)
            {
                mp.events.call("Сначала заведите двигатель");
                return;
            }

			if(mp.game.invoke('0x1DD1F58F493F1DA5')) // IS_WAYPOINT_ACTIVE
			{
				let blipID 		= mp.game.invoke('0x186E5D252FA50E7D'); 		// _GET_BLIP_INFO_ID_ITERATOR
				let firstBlip 	= mp.game.invoke('0x1BEDE233E6CD2A1F', blipID); // GET_FIRST_BLIP_INFO_ID
				let nextBlip 	= mp.game.invoke('0x14F96AA50D6FBEA7', blipID); // GET_NEXT_BLIP_INFO_ID

				for(let i = firstBlip; mp.game.invoke('0xA6DB27D19ECBB7DA', i) != 0; i = nextBlip) // DOES_BLIP_EXIST
				{
					if(mp.game.invoke('0xBE9B0959FFD0779B', i) == 4) // GET_BLIP_INFO_ID_TYPE
					{
						let coord = mp.game.ui.getBlipInfoIdCoord(i);
						
						if(coord) 
						{
							mp.players.local.taskVehicleDriveToCoordLongrange(mp.players.local.vehicle.handle, coord.x, coord.y, 0.0, 22.0, 2883621, 40.0);

                            mp.game.graphics.notify("~g~Автопилот активирован");

							autoPilotActivated = true;

							if(autoPilotColshape != null) autoPilotColshape.destroy();

							autoPilotColshape = mp.colshapes.newCircle(coord.x, coord.y, 15.0, mp.players.local.dimension);
						}

						return ;
					}
				}
			}

            mp.game.graphics.notify("Поставьте метку на карте и активируйте автопилот");
        }
        else if (autoPilotActivated)
        {
            stopAutopilot(false);
            mp.game.graphics.notify("~r~Автопилот деактивирован");
        }
	}
});

mp.events.add('playerEnterVehicle', () => {
	if(mp.players.local.vehicle) 
		stopAutopilot(false);
});

mp.events.add('vehicleEngineHandler', () => {
	if(mp.players.local.vehicle) 
		stopAutopilot();
});

mp.events.add("playerEnterColshape", (shape) => {

	if(shape == autoPilotColshape) 
	{
        stopAutopilot();
        mp.game.graphics.notify("~g~Вы прибыли на место назначения");
	}
});

function stopAutopilot(stopVehicle = true)
{
	if(autoPilotActivated)
	{
		if(mp.players.local.vehicle)
		{
			if(stopVehicle) mp.players.local.vehicle.setVelocity(0.0, 0.0, 0.0);
			mp.players.local.clearTasks();
		}

		if(autoPilotColshape != null)
		{
			autoPilotColshape.destroy();
			autoPilotColshape = null;
		}

		autoPilotActivated = false;
	}
}