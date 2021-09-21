using System;
using System.Collections.Generic;
using GTANetworkAPI;
using NeptuneEvo.Core;
using Redage.SDK;

namespace NeptuneEvo.MoneySystem
{
    class Casino : Script
    {
        private static nLog Log = new nLog("Casino");

        public static Vector3 enterPos = new Vector3(935.7294, 46.61844, 81.2);
        private static Vector3 exitPos = new Vector3(1089.695, 206.015, -49);
        private static Vector3 buyChipsPos = new Vector3(1115.912, 219.99, -49.55512);

        private static int buyChipsRate = 5000; // Цена за 1 фишку (покупка)
        private static int sellChipsRate = 5000; // Цена за 1 фишку (продажа)

        [Command("givechips")] // Выдать фишки для кашино (CasinoChips) (7 лвл)
        public static void CMD_givechips(Player player, int id, int amount)
        {
            try
            {
                if (!Group.CanUseCmd(player, "givechips")) return;

                var target = Main.GetPlayerByID(id);
                if (target == null)
                {
                    Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Игрок с таким ID не найден", 3000);
                    return;
                }
                Admin.sendCasinoChips(player, target, amount);
            }
            catch (Exception e) { Log.Write("EXCEPTION AT \"CMD\":\n" + e.ToString(), nLog.Type.Error); }
        }

        [ServerEvent(Event.ResourceStart)]
        public void onResourceStart()
        {
            try
            {
                // Вход - выход + маркер
                var colShapeEnter = NAPI.ColShape.CreateCylinderColShape(enterPos, 1f, 2);
                var colShapeExit = NAPI.ColShape.CreateCylinderColShape(exitPos, 1f, 2);

                NAPI.Marker.CreateMarker(1, enterPos - new Vector3(0, 0, 1.5), new Vector3(), new Vector3(), 1, new Color(0, 255, 255), false);
                NAPI.Marker.CreateMarker(1, exitPos - new Vector3(0, 0, 1.5), new Vector3(), new Vector3(), 1, new Color(0, 255, 255), false);

                // Покупка фишек
                var colShapebuyChips = NAPI.ColShape.CreateCylinderColShape(buyChipsPos, 1f, 2);
                NAPI.Marker.CreateMarker(1, buyChipsPos - new Vector3(0, 0, 1.5), new Vector3(), new Vector3(), 1, new Color(0, 255, 255), false);

                colShapebuyChips.OnEntityEnterColShape += (s, e) =>
                {
                    try
                    {
                        NAPI.Data.SetEntityData(e, "INTERACTIONCHECK", 777);
                        NAPI.Data.SetEntityData(e, "CASINO_SHAPE", "BUY_CHIPS");
                    }
                    catch (Exception ex) { Log.Write("CASINO_SHAPE_OnEntityEnterColShape: " + ex.Message, nLog.Type.Error); }
                };
                colShapebuyChips.OnEntityExitColShape += ExitResetColshape;

                // Выход и вход в казино
                colShapeEnter.OnEntityEnterColShape += (s, e) =>
                {
                    try
                    {
                        NAPI.Data.SetEntityData(e, "INTERACTIONCHECK", 777);
                        NAPI.Data.SetEntityData(e, "CASINO_SHAPE", "ENTER");
                    }
                    catch (Exception ex) { Log.Write("CASINO_SHAPE_OnEntityEnterColShape: " + ex.Message, nLog.Type.Error); }
                };
                colShapeEnter.OnEntityExitColShape += ExitResetColshape;

                colShapeExit.OnEntityEnterColShape += (s, e) =>
                {
                    try
                    {
                        NAPI.Data.SetEntityData(e, "INTERACTIONCHECK", 777);
                        NAPI.Data.SetEntityData(e, "CASINO_SHAPE", "EXIT");
                    }
                    catch (Exception ex) { Log.Write("CASINO_SHAPE_OnEntityEnterColShape: " + ex.Message, nLog.Type.Error); }
                };
                colShapeExit.OnEntityExitColShape += ExitResetColshape;
                //

                NAPI.Blip.CreateBlip(679, enterPos, 1, 0, "Diamond Casino", 255, 0, true);

                //

            }
            catch (Exception e) { Log.Write("ResourceStart: " + e.Message, nLog.Type.Error); }
        }
        public static void ExitResetColshape(ColShape shape, Player player)
        {
            NAPI.Data.SetEntityData(player, "INTERACTIONCHECK", 0);
            NAPI.Data.ResetEntityData(player, "CASINO_SHAPE");
        }
        public static void CallBackShape(Player player)
        {
            if (!player.HasData("CASINO_SHAPE")) return;
            string data = player.GetData<string>("CASINO_SHAPE");

            switch (data)
            {
                case "ENTER":
                    NAPI.Entity.SetEntityPosition(player, exitPos);
                    NAPI.Entity.SetEntityRotation(player, new Vector3(0, 0, -27.5));
                    return;
                case "EXIT":
                    NAPI.Entity.SetEntityPosition(player, enterPos);
                    NAPI.Entity.SetEntityRotation(player, new Vector3(0, 0, 113.5));
                    return;
                case "BUY_CHIPS":
                    List<int> rates = new List<int>(new int[] { buyChipsRate, sellChipsRate });
                    Trigger.ClientEvent(player, "openChipsMenu", Newtonsoft.Json.JsonConvert.SerializeObject(rates));
                    return;
            }
        }

        // Покупка фишек (запрос от клиента)
        [RemoteEvent("casino.buyChips")]
        public static void BuyChips_Event(Player player, int type)
        {
            int amount;
            switch (type)
            {
                default: return;
                case 0:
                    amount = 100;
                    break;
                case 1:
                    amount = 200;
                    break;
                case 2:
                    amount = 500;
                    break;
                case 3:
                    amount = 1000;
                    break;
            }

            int price = amount * buyChipsRate;
            if (Main.Players[player].Money < price)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomRight, $"У вас недостаточно денег для покупки {amount} шт. фишек.", 3000);
                return;
            }

            var tryAdd = nInventory.TryAdd(player, new nItem(ItemType.CasinoChips, amount));
            if (tryAdd == -1 || tryAdd > 0)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomRight, $"У вас недостаточно места в инвентаре для покупки {amount} шт. фишек.", 3000);
                return;
            }

            nInventory.Add(player, new nItem(ItemType.CasinoChips, amount));

            Wallet.Change(player, -price);
            GameLog.Money($"player({Main.Players[player].UUID})", $"BuyChips({type})", price, $"Casino");
            Notify.Send(player, NotifyType.Success, NotifyPosition.BottomRight, $"Вы успешно приобрели {amount}шт. фишек.", 3000);
        }

        // Продажа фишек (запрос от клиента)
        [RemoteEvent("casino.sellChips")]
        public static void SellChips_Event(Player player, int amount)
        {
            if (amount <= 0 || amount > 100000)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomRight, $"Введите корректные данные (от 1 до 100.000 шт. фишек за раз).", 3000);
                return;
            }

            nItem chipsItem = nInventory.Find(Main.Players[player].UUID, ItemType.CasinoChips);
            if (chipsItem == null)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomRight, $"У вас нет фишек!", 3000);
                return;
            }
            if (chipsItem.Count < amount)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomRight, $"Недостаточно фишек для продажи (у вас есть: {chipsItem.Count} шт.)", 3000);
                return;
            }

            int price = amount * sellChipsRate;
            nInventory.Remove(player, ItemType.CasinoChips, amount);

            Wallet.Change(player, +price);
            GameLog.Money($"player({Main.Players[player].UUID})", $"SellChips({amount})", price, $"Casino");

            Notify.Send(player, NotifyType.Success, NotifyPosition.BottomRight, $"Вы успешно продали {amount} шт. фишек за {price}$", 3000);
        }
    }
}
