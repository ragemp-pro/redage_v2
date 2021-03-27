// ANIMALS (wtf?)
mp.peds.new(1462895032, new mp.Vector3(-550.4594, -235.0781, 37.36579), 218.8, 0);
mp.peds.new(1318032802, new mp.Vector3(-555.18, -267.6916, 35.04048), 303.2, 0);
mp.peds.new(402729631, new mp.Vector3(-555.5945, -268.7845, 37.69592), 316.7, 0);
mp.peds.new(1832265812, new mp.Vector3(564.3991, 2740.475, 41.50517), 182.1, 0); 
mp.peds.new(3549666813, new mp.Vector3(-193.6039, 793.1151, 197.6122), 144.9679,0); 
mp.peds.new(2506301981, new mp.Vector3(-199.1794, -1609.419, 34.01067), 261.4599, 0); 
mp.peds.new(2506301981, new mp.Vector3(85.70742, -1955.27, 20.15471), 314.5776, 0); 
mp.peds.new(2506301981, new mp.Vector3(483.7948, -1519.017, 28.67134), 87.19617, 0); 
mp.peds.new(2506301981, new mp.Vector3(882.3968, -2169.903, 31.65136), 189.0253, 0); 
mp.peds.new(2506301981, new mp.Vector3(1416.409, -1496.435, 59.40118), 161.6646, 0); 
mp.peds.new(882848737, new mp.Vector3(442.9502, -981.1665, 30.06959), 88.87737, 0); 
mp.peds.new(3630914197, new mp.Vector3(-1528.098, 1753.292, 86.17753), 323.6743, 0); 
mp.peds.new(1462895032, new mp.Vector3(2015.733, 4967.312, 41.87567), 258.3119, 0);

// Peds (quests)
var needped = [];

mp.events.add("playerReady", player => {
	needped[0] = mp.peds.new(mp.game.joaat("ig_stevehains"), new mp.Vector3(-1033.6659, -2726.9346, 13.756636), 145.92128, 0); // Steve Haines
	needped[1] = mp.peds.new(mp.game.joaat("ig_paper"), new mp.Vector3(-517.7243, -251.28696, 35.67576), -150.12025, 0); // Tom Johnson
});

mp.events.add('ChatPyBed', (id, variation) => {
	try {
		if (!global.loggedin || global.pedtimer) return;
		global.pedtimer = true;
		switch(id) {
			case 0:
				if(!variation)
				{
					global.pedtext = `Добро пожаловать в штат, ${localplayer.name}!`;
					global.pedtext2 = "мой приятель ждет тебя возле здания правительства";
					global.pedtext3 = "он объяснит что делать дальше..";
				}
				else if(variation == 1)
				{
					global.pedtext = "Ты добрался до моего приятеля?";
					global.pedtext2 = "Он ждет тебя, поговори с ним на счет работы.";
				}
				global.pedsaying = needped[id]; // Пед который будет разговаривать
				NPCTalkAnim(global.pedsaying, true);

				mp.gui.chat.push("(( Арендуйте мопед и доберитесь до здания правительства. Точка отмечена на карте. ))");

				var position = needped[1].position;
				mp.events.call("createWaypoint", position.x, position.y);
				break;
			case 1:
				global.pedtext = `Привет, я тебя ждал. Хочешь подзаработать?`;
				
				if(!variation)
				{
					global.pedtext2 = "Зайди в мэрию и ознакомься со списком работ.";

					mp.gui.chat.push("(( Ознакомьтесь со списком официальных работ в мэрии. Точка отмечена на карте. ))");

					mp.events.call("createWaypoint", -544.827, -204.47627); // около входа в мэрию
				}
				else
				{
					global.pedtext2 = "Для начала работы тебе нужно иметь телефон и сим-карту.";
					global.pedtext3 = "Езжай в наш местный магазин 24/7, купи все что нужно.";

					mp.gui.chat.push("(( Доберитесь до магазина, приобретите сим-карту и возвращайтесь. Точка отмечена на карте. ))");

					mp.events.call("createWaypoint", 82.05307, -219.78958); // ближайший магазин 24-7
				}

				global.pedsaying = needped[id]; // Пед который будет разговаривать
				NPCTalkAnim(global.pedsaying, true);

				break;
		}
		if(global.pedtimer == true) {
			if(global.pedtext2 == null) setTimeout(function() { NPCTalkAnim(global.pedsaying, false); global.pedsaying = null; global.pedtext = ""; global.pedtimer = false;  }, 3000);
			else if(global.pedtext3 == null) setTimeout(function() { NPCTalkAnim(global.pedsaying, false); global.pedsaying = null; global.pedtext = ""; global.pedtimer = false;  }, 6000);
			else setTimeout(function() { NPCTalkAnim(global.pedsaying, false); global.pedsaying = null; global.pedtext = ""; global.pedtext2 = null; global.pedtext3 = null; global.pedtimer = false; }, 8000);
		}
	} catch (e) { }
});

function NPCTalkAnim(ped, state)
{
	if(state) ped.playFacialAnim("mic_chatter", "mp_facial");
	else ped.playFacialAnim("mood_normal_1", "facials@gen_male@variations@normal");
}

mp.events.add('render', () => {
	if (!loggedin) return;
	try
	{
		if(pedsaying != null) {
			let pos = pedsaying.getBoneCoords(12844, 0.5, 0, 0);
			mp.game.graphics.drawText(pedtext, [pos.x, pos.y, pos.z+0.1], {
				font: 0,
				color: [255, 255, 255, 185],
				scale: [0.35, 0.35],
				outline: true
			});
			if(pedtext2 != null) {
				mp.game.graphics.drawText(pedtext2, [pos.x, pos.y, pos.z+0.017], {
					font: 0,
					color: [255, 255, 255, 185],
					scale: [0.35, 0.35],
					outline: true
				});

				if(pedtext3 != null) {
					mp.game.graphics.drawText(pedtext3, [pos.x, pos.y, pos.z-0.051], {
						font: 0,
						color: [255, 255, 255, 185],
						scale: [0.35, 0.35],
						outline: true
					});
				}
			}
		}
	}
	catch {}
});