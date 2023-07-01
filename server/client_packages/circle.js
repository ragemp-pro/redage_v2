global.circleEntity = null;
global.circleOpen = false;
var circleTitle = "";

global.OpenCircle = function(title, data) {
    if (global.menuCheck() || global.circleOpen) return;
    global.board.execute(`circle.show("${title}",${data})`);
    circleTitle = title;
    global.circleOpen = true;
    global.menuOpen();
}
global.CloseCircle = function(hide) {
    if(hide) execute("circle.hide()");
    global.circleOpen = false;
    global.menuClose();
}

// // //
mp.events.add('circleCallback', (index) => {
    if (index == -1) {
        global.CloseCircle(false);
    } else {
        global.CloseCircle(false);
        switch (circleTitle) {
            case "Машина":
                switch (index) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                        if (global.entity == null) return;
                        mp.events.callRemote('vehicleSelected', global.entity, index);
                        return;
                }
                return;
            case "Игрок":
                if (global.entity == null) return;
                switch (index) {
                    case 0:
                        mp.events.callRemote('pSelected', global.entity, "Передать деньги");
                        return;
                    case 1:
                        mp.events.callRemote('pSelected', global.entity, "Предложить обмен");
                        return;
                    case 2:
                        if (pFraction === 0 || pFraction === 15) return;
                        global.OpenCircle("Фракция", pFraction);
                        return;
                    case 3:
                        //mp.gui.chat.push(">>" + entity);
                        mp.events.callRemote('passport', global.entity);
                        return;
                    case 4:
                        //mp.gui.chat.push(">>" + entity);
                        mp.events.callRemote('licenses', global.entity);
                        return;
                    case 5:
                        mp.events.callRemote('pSelected', global.entity, "Вылечить");
                        return;
                    case 6:
                        global.OpenCircle("Дом", 0);
                        return;
                    case 7:
                        mp.events.callRemote('pSelected', global.entity, "Пожать руку");
                        return;
                }
                return;
            case "Дом":
                switch (index) {
                    case 0:
                        mp.events.callRemote('pSelected', global.entity, "Продать машину");
                        return;
                    case 1:
                        mp.events.callRemote('pSelected', global.entity, "Продать дом");
                        return;
                    case 2:
                        mp.events.callRemote('pSelected', global.entity, "Заселить в дом");
                        return;
                    case 3:
                        mp.events.callRemote('pSelected', global.entity, "Пригласить в дом");
                        return;
                }
                return;
            case "Фракция":
                if (global.entity == null) return;
                global.circleEntity = global.entity;
                if (fractionActions[pFraction] == undefined) return;
                mp.events.callRemote('pSelected', global.entity, fractionActions[pFraction][index]);
                return;
            case "Категории":
                if (index == 7) {
					if(!mp.players.local.isFalling()) mp.events.callRemote('aSelected', -1, -1);
                    return;
                }
                switch (index) {
                    case 0:
                    case 1:
                    case 2:
                    case 3:
                    case 4:
                    case 5:
					case 6:
                        aCategory = index;
                        global.OpenCircle("Анимации", index);
                        return;
                }
                return;
            case "Анимации":
				if(aCategory == 1 && index == 7) {
					aCategory = 10;
                    global.OpenCircle("Анимации", 10);
				} else if(aCategory == 4 && index == 7) {
					aCategory = 13;
                    global.OpenCircle("Анимации", 13);
				} else if(aCategory == 5 && index == 7) {
					aCategory = 7;
                    global.OpenCircle("Анимации", 7);
				} else if(aCategory == 6 && index == 7) {
					aCategory = 12;
                    global.OpenCircle("Анимации", 12);
				} else if(aCategory == 7 && index == 7) {
					aCategory = 8;
                    global.OpenCircle("Анимации", 8);
				} else if(aCategory == 8 && index == 7) {
					aCategory = 9;
                    global.OpenCircle("Анимации", 9);
				} else if(aCategory == 10 && index == 7) {
					aCategory = 11;
                    global.OpenCircle("Анимации", 11);
				} else mp.events.callRemote('aSelected', aCategory, index);
                return;
        }
    }
});

var aCategory = -1;

// // //
var pFraction = 0;
var fractionActions = [];
fractionActions[1] = ["Ограбить", "Украсть оружие", "Мешок на голову"];
fractionActions[2] = ["Ограбить", "Украсть оружие", "Мешок на голову"];
fractionActions[3] = ["Ограбить", "Украсть оружие", "Мешок на голову"];
fractionActions[4] = ["Ограбить", "Украсть оружие", "Мешок на голову"];
fractionActions[5] = ["Ограбить", "Украсть оружие", "Мешок на голову"];
fractionActions[6] = ["Вести за собой"];
fractionActions[7] = ["Вести за собой", "Обыскать", "Изъять оружие", "Изъять нелегал", "Сорвать маску", "Выписать штраф"];
fractionActions[8] = ["Продать аптечку", "Предложить лечение"];
fractionActions[9] = ["Вести за собой", "Обыскать", "Изъять оружие", "Изъять нелегал", "Сорвать маску"];
fractionActions[10] = ["Вести за собой", "Мешок на голову", "Ограбить", "Украсть оружие"];
fractionActions[11] = ["Вести за собой", "Мешок на голову", "Ограбить", "Украсть оружие"];
fractionActions[12] = ["Вести за собой", "Мешок на голову", "Ограбить", "Украсть оружие"];
fractionActions[13] = ["Вести за собой", "Мешок на голову", "Ограбить", "Украсть оружие"];
fractionActions[14] = ["Вести за собой"];
fractionActions[15] = ["Вести за собой"];
fractionActions[16] = ["Вести за собой"];
fractionActions[17] = ["Вести за собой", "Мешок на голову", "Обыскать", "Изъять нелегал", "Сорвать маску"];
mp.events.add('fractionChange', (fraction) => {
    pFraction = fraction;
});