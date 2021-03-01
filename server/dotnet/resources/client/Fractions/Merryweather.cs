using System;
using System.Collections.Generic;
using GTANetworkAPI;
using NeptuneEvo.Core;
using Redage.SDK;
using NeptuneEvo.GUI;

namespace NeptuneEvo.Fractions
{
    class Merryweather : Script
    {
        private static nLog Log = new nLog("Merryweather");

        private static Dictionary<int, ColShape> Cols = new Dictionary<int, ColShape>();
        public static List<Vector3> Coords = new List<Vector3>
        {
            new Vector3(2475.508, -384.14673, 93.27913), // Колшэйп входа в бункер   0
            new Vector3(2154.663, 2920.9873, -63.022495), // Колшэйп изнутри этажа, чтобы вернуться назад       1
            new Vector3(2113.3254, 2928.186, -63.521942), // guns    2
            new Vector3(2106.29, 2931.6814, -63.521942),  // open stock     3
            new Vector3(2111.3254, 2928.186, -63.521942),  // раздевалка
        };

        [ServerEvent(Event.ResourceStart)]
        public void OnResourceStartHandler()
        {
            try
            {

                Cols.Add(0, NAPI.ColShape.CreateCylinderColShape(Coords[0], 1f, 2, 0));
                Cols[0].OnEntityEnterColShape += mws_OnEntityEnterColShape;
                Cols[0].OnEntityExitColShape += mws_OnEntityExitColShape;
                Cols[0].SetData("INTERACT", 82);
                NAPI.TextLabel.CreateTextLabel(Main.StringToU16("~g~Нажмите E чтобы войти в бункер"), new Vector3(Coords[0].X, Coords[0].Y, Coords[0].Z + 0.7), 5F, 0.3F, 0, new Color(255, 255, 255));


                Cols.Add(1, NAPI.ColShape.CreateCylinderColShape(Coords[1], 1f, 2, 0));
                Cols[1].OnEntityEnterColShape += mws_OnEntityEnterColShape;
                Cols[1].OnEntityExitColShape += mws_OnEntityExitColShape;
                Cols[1].SetData("INTERACT", 85);
                NAPI.TextLabel.CreateTextLabel(Main.StringToU16("~g~Нажмите E чтобы выйти из бункера"), new Vector3(Coords[1].X, Coords[1].Y, Coords[1].Z + 0.7), 5F, 0.3F, 0, new Color(255, 255, 255));

                Cols.Add(2, NAPI.ColShape.CreateCylinderColShape(Coords[2], 1, 2, 0));
                Cols[2].SetData("INTERACT", 105);
                Cols[2].OnEntityEnterColShape += onEntityEnterColshape;
                Cols[2].OnEntityExitColShape += onEntityExitColshape;
                NAPI.TextLabel.CreateTextLabel(Main.StringToU16("~g~Нажмите E чтобы открыть меню"), new Vector3(Coords[2].X, Coords[2].Y, Coords[2].Z + 1.8), 5F, 0.3F, 0, new Color(255, 255, 255));

                Cols.Add(3, NAPI.ColShape.CreateCylinderColShape(Coords[3], 1, 2, 0));
                Cols[3].SetData("INTERACT", 106);
                Cols[3].OnEntityEnterColShape += onEntityEnterColshape;
                Cols[3].OnEntityExitColShape += onEntityExitColshape;
                NAPI.TextLabel.CreateTextLabel(Main.StringToU16("~g~Открыть склад"), new Vector3(Coords[3].X, Coords[3].Y, Coords[3].Z + 1.8), 5F, 0.3F, 0, new Color(250, 250, 250));

                Cols.Add(4, NAPI.ColShape.CreateCylinderColShape(Coords[4], 1, 2, 0));
                Cols[4].SetData("INTERACT", 107);
                Cols[4].OnEntityEnterColShape += onEntityEnterColshape;
                Cols[4].OnEntityExitColShape += onEntityExitColshape;
                NAPI.TextLabel.CreateTextLabel(Main.StringToU16("~g~Переодеться"), new Vector3(Coords[4].X, Coords[4].Y, Coords[4].Z + 1.8), 5F, 0.3F, 0, new Color(250, 250, 250));


                NAPI.Marker.CreateMarker(1, Coords[0] + new Vector3(0, 0, 0.7), new Vector3(), new Vector3(), 1, new Color(0, 255, 255));
                NAPI.Marker.CreateMarker(1, Coords[1] + new Vector3(0, 0, 0.7), new Vector3(), new Vector3(), 1, new Color(0, 255, 255));
                NAPI.Marker.CreateMarker(1, Coords[2] + new Vector3(0, 0, 0.7), new Vector3(), new Vector3(), 1, new Color(0, 255, 255));
                NAPI.Marker.CreateMarker(1, Coords[3] + new Vector3(0, 0, 0.7), new Vector3(), new Vector3(), 1, new Color(0, 255, 255));
                NAPI.Marker.CreateMarker(1, Coords[4] + new Vector3(0, 0, 0.7), new Vector3(), new Vector3(), 1, new Color(0, 255, 255));
            } catch (Exception e)
            {
                Log.Write("EXCEPTION AT\"FRACTIONS_MERRYWEATHER\":\n" + e.ToString(), nLog.Type.Error);
            }
        }
        #region colshape
        private void mws_OnEntityEnterColShape(ColShape shape, Player entity)
        {
            try
            {
                NAPI.Data.SetEntityData(entity, "INTERACTIONCHECK", shape.GetData<int>("INTERACT"));
            }
            catch (Exception e) { Log.Write("mws_OnEntityEnterColShape: " + e.Message, nLog.Type.Error); }
        }

        private void mws_OnEntityExitColShape(ColShape shape, Player entity)
        {
            try
            {
                NAPI.Data.SetEntityData(entity, "INTERACTIONCHECK", 0);
            }
            catch (Exception e) { Log.Write("mws_OnEntityExitColShape: " + e.Message, nLog.Type.Error); }
        }

        private void onEntityEnterColshape(ColShape shape, Player entity)
        {
            try
            {
                NAPI.Data.SetEntityData(entity, "INTERACTIONCHECK", shape.GetData<int>("INTERACT"));
            }
            catch (Exception ex) { Log.Write("onEntityEnterColshape: " + ex.Message, nLog.Type.Error); }
        }

        private void onEntityExitColshape(ColShape shape, Player entity)
        {
            try
            {
                NAPI.Data.SetEntityData(entity, "INTERACTIONCHECK", 0);
            }
            catch (Exception ex) { Log.Write("onEntityExitColshape: " + ex.Message, nLog.Type.Error); }
        }
        #endregion
        public static void interactPressed(Player player, int interact)
        {
            switch (interact)
            {
                case 82:
                case 85:
                    if (player.IsInVehicle) return;
                    if (player.HasData("FOLLOWING"))
                    {
                        Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вас кто-то тащит за собой", 3000);
                        return;
                    }
                    if (Main.Players[player].FractionID != 17)
                    {
                        Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "Вы не состоите в Merryweather", 3000);
                        return;
                    }
                    if (interact == 82) NAPI.Entity.SetEntityPosition(player, Coords[1] + new Vector3(0, 0, 1.12));
                    else if (interact == 85) NAPI.Entity.SetEntityPosition(player, Coords[0] + new Vector3(0, 0, 1.12));
                    return;
                case 105:
                    if (Main.Players[player].FractionID != 17)
                    {
                        Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы не состоите в Merryweather", 3000);
                        return;
                    }
                    if (!Stocks.fracStocks[17].IsOpen)
                    {
                        Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Склад закрыт", 3000);
                        return;
                    }
                    OpenMeryGunMenu(player);
                    return;
                case 106:
                    if (Main.Players[player].FractionID != 17)
                    {
                        Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы не состоите в Merryweather", 3000);
                        return;
                    }
                    if (!Stocks.fracStocks[17].IsOpen)
                    {
                        Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Склад закрыт", 3000);
                        return;
                    }
                    if (!Manager.canUseCommand(player, "openweaponstock")) return;
                    player.SetData("ONFRACSTOCK", 17);
                    GUI.Dashboard.OpenOut(player, Stocks.fracStocks[17].Weapons, "Склад оружия", 6);
                    return;
                case 107:
                    if (Main.Players[player].FractionID != 17)
                    {
                        Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы не состоите в Merryweather", 3000);
                        return;
                    }
                    OpenMeryClothesMenu(player);
                    return;

            }
        }
        #region menu
        public static void OpenMeryClothesMenu(Player player)
        {
            Menu menu = new Menu("meryclothes", false, false);
            menu.Callback = callback_Meryclothes;

            Menu.Item menuItem = new Menu.Item("header", Menu.MenuItem.Header);
            menuItem.Text = "Одежда";
            menu.Add(menuItem);

            menuItem = new Menu.Item("change", Menu.MenuItem.Button);
            menuItem.Text = "Переодеться";
            menu.Add(menuItem);

            menuItem = new Menu.Item("combat", Menu.MenuItem.Button);
            menuItem.Text = "Боевая форма";
            menu.Add(menuItem);

            menuItem = new Menu.Item("close", Menu.MenuItem.Button);
            menuItem.Text = "Закрыть";
            menu.Add(menuItem);

            menu.Open(player);
        }
        private static void callback_Meryclothes(Player client, Menu menu, Menu.Item item, string eventName, dynamic data)
        {
            switch (item.ID)
            {
                case "change":
                    if (Main.Players[client].FractionLVL < 2)
                    {
                        Notify.Send(client, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы не можете переодеться/раздеться", 3000);
                        return;
                    }
                    if (!client.GetData<bool>("ON_DUTY"))
                    {
                        Notify.Send(client, NotifyType.Success, NotifyPosition.BottomCenter, $"Вы переоделись в служебную форму", 3000);
                        Manager.setSkin(client, Main.Players[client].FractionID, Main.Players[client].FractionLVL);
                        client.SetData("ON_DUTY", true);
                    }
                    else
                    {
                        Notify.Send(client, NotifyType.Success, NotifyPosition.BottomCenter, $"Вы переоделись в повседневную одежду", 3000);
                        Customization.ApplyCharacter(client);
                        if (client.HasData("HAND_MONEY")) client.SetClothes(5, 45, 0);
                        else if (client.HasData("HEIST_DRILL")) client.SetClothes(5, 41, 0);
                        client.SetData("ON_DUTY", false);
                    }
                    return;
                case "combat":
                    MenuManager.Close(client);
                    OpenMeryCombatMenu(client);
                    return;
                case "close":
                    MenuManager.Close(client);
                    return;
            }
        }

        public static void OpenMeryCombatMenu(Player player)
        {
            Menu menu = new Menu("merycombat", false, false);
            menu.Callback = callback_merycombat;

            Menu.Item menuItem = new Menu.Item("header", Menu.MenuItem.Header);
            menuItem.Text = "Боевая форма";
            menu.Add(menuItem);

            menuItem = new Menu.Item("mer1", Menu.MenuItem.Button);
            menuItem.Text = "Одежда 1";
            menu.Add(menuItem);

            menuItem = new Menu.Item("takeoff", Menu.MenuItem.Button);
            menuItem.Text = "Снять форму";
            menu.Add(menuItem);

            menuItem = new Menu.Item("back", Menu.MenuItem.Button);
            menuItem.Text = "Назад";
            menu.Add(menuItem);

            menu.Open(player);
        }
        private static void callback_merycombat(Player client, Menu menu, Menu.Item item, string eventName, dynamic data)
        {
            if (item.ID == "back")
            {
                MenuManager.Close(client);
                OpenMeryClothesMenu(client);
                return;
            }
            if (Main.Players[client].FractionID != 17)
            {
                Notify.Send(client, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы не состоите в Merryweather", 3000);
                return;
            }
            if (!client.GetData<bool>("ON_DUTY"))
            {
                Notify.Send(client, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы должны начать службу", 3000);
                return;
            }
            client.SetData("IN_CP_MODE", true);
            var gender = Main.Players[client].Gender;
            Customization.ClearClothes(client, gender);
            switch (item.ID)
            {
                case "mer1":
                    if (gender)
                    {
                        client.SetClothes(1, 104, 5);
                        Customization.SetHat(client, 117, 13);
                        client.SetClothes(11, 221, 5);
                        client.SetClothes(4, 87, 5);
                        client.SetClothes(6, 62, 0);
                        client.SetClothes(9, 16, 0);
                        client.SetClothes(3, 49, 1);
                    }
                    else
                    {
                        Customization.SetHat(client, 116, 13);
                        client.SetClothes(1, 104, 5);
                        client.SetClothes(4, 90, 5);
                        client.SetClothes(11, 224, 5);
                        client.SetClothes(6, 65, 0);
                        client.SetClothes(3, 46, 1);
                        client.SetClothes(9, 18, 0);
                    }
                    return;
                case "takeoff":
                    Manager.setSkin(client, Main.Players[client].FractionID, Main.Players[client].FractionLVL);
                    client.SetData("IN_CP_MODE", false);
                    return;
            }
        }
        #endregion
        public static void OpenMeryGunMenu(Player player)
        {
            Trigger.ClientEvent(player, "meryg");
        }
        [RemoteEvent("merygun")]
        public static void callback_meryGuns(Player client, int index)
        {
            try
            {
                switch (index)
                {
                    case 0: //nightstick
                        Fractions.Manager.giveGun(client, Weapons.Hash.Nightstick, "Nightstick");
                        return;
                    case 1: //Pistol
                        Fractions.Manager.giveGun(client, Weapons.Hash.Pistol, "Pistol");
                        return;
                    case 2: //CompactRifle
                        Fractions.Manager.giveGun(client, Weapons.Hash.CompactRifle, "CompactRifle");
                        return;
                }
            }
            catch (Exception e)
            {
                Log.Write($"Merygun: " + e.Message, nLog.Type.Error);
            }
        }
    }    
}
