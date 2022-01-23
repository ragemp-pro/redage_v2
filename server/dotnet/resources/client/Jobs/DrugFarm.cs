using GTANetworkAPI;
using System.Collections.Generic;
using System;
using NeptuneEvo.GUI;
using NeptuneEvo.Core;
using Redage.SDK;
using NeptuneEvo.Fractions;

namespace NeptuneEvo.Jobs
{
    class DrugFarm : Script
    {
        private static nLog Log = new nLog("DrugFarm");
        private static Dictionary<int, ColShape> Cols = new Dictionary<int, ColShape>();
        private void cf_onEntityEnterColShape(ColShape shape, Player entity)
        {
            try
            {
                NAPI.Data.SetEntityData(entity, "INTERACTIONCHECK", shape.GetData<int>("INTERACT"));
            }
            catch (Exception ex) { Log.Write("gp_onEntityEnterColShape: " + ex.Message, nLog.Type.Error); }
        }
        private void cf_onEntityExitColShape(ColShape shape, Player entity)
        {
            try
            {
                entity.ResetData("INTERACTIONCHECK");
            }
            catch (Exception ex) { Log.Write("gp_onEntityExitColShape: " + ex.Message, nLog.Type.Error); }
        }
        [ServerEvent(Event.ResourceStart)]
        public void onResourceStart()
        {
            try
            {
                NAPI.Blip.CreateBlip(140, new Vector3(2220.438, 5614.343, 53.60628), 1, 41, Main.StringToU16("Сбор наркотиков"), 255, 0, true, 0, 0);

                Cols.Add(1, NAPI.ColShape.CreateCylinderColShape(new Vector3(2220.919, 5611.979, 54.63075) , 1, 2, 0));// get clothes
                Cols[1].OnEntityEnterColShape += cf_onEntityEnterColShape;
                Cols[1].OnEntityExitColShape += cf_onEntityExitColShape;
                Cols[1].SetData("INTERACT", 381);
                NAPI.TextLabel.CreateTextLabel(Main.StringToU16("Начать сбор"), new Vector3(2220.919, 5611.979, 53.63075) + new Vector3(0, 0, 1), 10F, 0.6F, 0, new Color(0, 180, 0));


                Cols.Add(2, NAPI.ColShape.CreateCylinderColShape(new Vector3(508.34598, -2928.8188, 4.9253736), 1, 2, 0)); // drug seller
                Cols[2].OnEntityEnterColShape += cf_onEntityEnterColShape;
                Cols[2].OnEntityExitColShape += cf_onEntityExitColShape;
                Cols[2].SetData("INTERACT", 382);
                NAPI.TextLabel.CreateTextLabel(Main.StringToU16("drug sell"), new Vector3(508.34598, -2928.8188, 4.9253736) + new Vector3(0, 0, 1), 10F, 0.6F, 0, new Color(0, 180, 0));
                int i = 0;
                foreach (var Check in Checkpoints)
                {
                    var col = NAPI.ColShape.CreateCylinderColShape(Check.Position, 1, 2, 0);
                    col.SetData("NUMBER", i);
                    col.OnEntityEnterColShape += PlayerEnterCheckpoint;
                    i++;
                }

            }
            catch (Exception e) { Log.Write("ResourceStart: " + e.Message, nLog.Type.Error); }
        }
        public static void StartWorkDay(Player player)
        {

            if (player.GetData<bool>("ON_WORK"))
            {
                Customization.ApplyCharacter(player);
                player.SetData("ON_WORK", false);
                Trigger.ClientEvent(player, "deleteCheckpoint", 15);
                Trigger.ClientEvent(player, "deleteWorkBlip");
                int UUID = Main.Players[player].UUID;
                
                /*
                var drugs = nInventory.Items[UUID].Find(t => t.Type == ItemType.Drugs);
                if (drugs != null)
                {
                    nInventory.Remove(player, drugs.Type, drugs.Count);
                    GUI.Dashboard.sendItems(player);
                    int payment = (int)(drugs.Count * 10);
                    MoneySystem.Wallet.Change(player, payment);
                    Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, $"Вы продали {drugs.Count} травы  за {payment}$", 3000);
                    Fractions.Stocks.fracStocks[12].Drugs += drugs.Count;
                    Fractions.Stocks.fracStocks[12].UpdateLabel();

                }
                */

                Notify.Send(player, NotifyType.Info, NotifyPosition.BottomCenter, $"Вы закончили рабочий день", 3000);
                return;
            }
            else
            {
                Customization.ClearClothes(player, Main.Players[player].Gender);
                if (Main.Players[player].Gender)
                {
                    player.SetClothes(3, 85, 0);
                    player.SetClothes(11, 42, 0);
                    player.SetClothes(4, 41, 0);
                    player.SetClothes(6, 37, 0);
                }
                else
                {
                    player.SetClothes(3, 17, 0);
                    player.SetClothes(11, 150, 1);
                    player.SetClothes(4, 1, 5);
                    player.SetClothes(6, 52, 0);
                }

                var check = WorkManager.rnd.Next(0, Checkpoints.Count - 1);
                player.SetData("WORKCHECK", check);
                Trigger.ClientEvent(player, "createCheckpoint", 15, 1, Checkpoints[check].Position, 1, 0, 255, 0, 0);
                Trigger.ClientEvent(player, "createWorkBlip", Checkpoints[check].Position);

                player.SetData("ON_WORK", true);
                Notify.Send(player, NotifyType.Info, NotifyPosition.BottomCenter, "Вы начали рабочий день", 3000);

                Manager.sendFractionMessage(6, "[Информатор нелегальной фермы] Внимание! К нам устроился какой-то странный тип..");
                Manager.sendFractionMessage(7, "[Информатор нелегальной фермы] Внимание! К нам устроился какой-то странный тип..");
                Manager.sendFractionMessage(9, "[Информатор нелегальной фермы] Внимание! К нам устроился какой-то странный тип..");
                Manager.sendFractionMessage(14, "[Информатор нелегальной фермы] Внимание! К нам устроился какой-то странный тип..");

                return;
            }
        }
        public static void interactPressed(Player client, int id)
        {
            switch (id)
            {
                case 381:
                    try
                    {
                        if (!Main.Players.ContainsKey(client)) return;
                        StartWorkDay(client);
                    }
                    catch (Exception e) { Log.Write("PlayerExitVehicle: " + e.Message, nLog.Type.Error); }
                    return;
                case 382:
                    try
                    {

                        if (!Main.Players.ContainsKey(client)) return;
                        if (Main.Players[client].FractionID != 12) return;
                        int UUID = Main.Players[client].UUID;
                        var drugs= nInventory.Items[UUID].Find(t => t.Type == ItemType.Drugs);                      
                        if (drugs == null)
                        {
                            Notify.Send(client, NotifyType.Error, NotifyPosition.BottomCenter, "У вас нет травы", 3000);
                            return;
                        }
                        nInventory.Remove(client, drugs.Type, drugs.Count);
                        GUI.Dashboard.sendItems(client);
                        int payment = (int)(drugs.Count * 200);
                        MoneySystem.Wallet.Change(client, payment);
                        Notify.Send(client, NotifyType.Success, NotifyPosition.BottomCenter, $"Вы продали {drugs.Count} травы  за {payment}$", 3000);

                    }
                    catch (Exception e) { Log.Write("PlayerExitVehicle: " + e.Message, nLog.Type.Error); }
                    return;
            }

        }
        private static void PlayerEnterCheckpoint(ColShape shape, Player player)
        {
            try
            {
                if (!Main.Players.ContainsKey(player)) return;
                if ( !player.GetData<bool>("ON_WORK") || shape.GetData<int>("NUMBER") != player.GetData<int>("WORKCHECK")) return;

                if (Checkpoints[(int)shape.GetData<int>("NUMBER")].Position.DistanceTo(player.Position) > 3) return;



                NAPI.Entity.SetEntityPosition(player, Checkpoints[shape.GetData<int>("NUMBER")].Position + new Vector3(0, 0, 1.2));
                NAPI.Entity.SetEntityRotation(player, new Vector3(0, 0, Checkpoints[shape.GetData<int>("NUMBER")].Heading));
                Main.OnAntiAnim(player);
                player.PlayAnimation("amb@prop_human_movie_studio_light@base", "base", 39);
                player.SetData("WORKCHECK", -1);
                NAPI.Task.Run(() => {
                    try
                    {
                        if (player != null && Main.Players.ContainsKey(player))
                        {
                            player.StopAnimation();
                            Main.OffAntiAnim(player);
                            var tryAdd = nInventory.TryAdd(player, new nItem(ItemType.Drugs, 1));
                            if (tryAdd == -1 || tryAdd > 0) Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "Недостаточно места в инвентаре", 3000);                       
                            else nInventory.Add(player, new nItem(ItemType.Drugs, 1, ""));
                            var nextCheck = WorkManager.rnd.Next(0, Checkpoints.Count - 1);
                            while (nextCheck == shape.GetData<int>("NUMBER")) nextCheck = WorkManager.rnd.Next(0, Checkpoints.Count - 1);
                            player.SetData("WORKCHECK", nextCheck);
                            Trigger.ClientEvent(player, "createCheckpoint", 15, 1, Checkpoints[nextCheck].Position, 1, 0, 255, 0, 0);
                            Trigger.ClientEvent(player, "createWorkBlip", Checkpoints[nextCheck].Position);
                        }
                    }
                    catch { }
                }, 4000);

            }
            catch (Exception e) { Log.Write("PlayerEnterCheckpoint: " + e.Message, nLog.Type.Error); }
        }

        private static List<Checkpoint> Checkpoints = new List<Checkpoint>()
        {
        new Checkpoint(new Vector3(2216.008, 5578.261, 52.61636), 190.0567),
        new Checkpoint(new Vector3(2218.571, 5578.943, 52.67163), 330.1701),
        new Checkpoint(new Vector3(2218.394, 5578.07, 52.64961), 181.3819),
        new Checkpoint(new Vector3(2220.524, 5575.647, 52.54734), 212.4535),
        new Checkpoint(new Vector3(2222.225, 5576.6, 52.68038), 296.01),
        new Checkpoint(new Vector3(2227.897, 5575.969, 52.58034), 14.9411),
        new Checkpoint(new Vector3(2229.803, 5578.262, 52.75399), 330.3615),
        new Checkpoint(new Vector3(2231.938, 5577.069, 52.85947), 217.2057),
        new Checkpoint(new Vector3(2233.268, 5578.174, 52.97301), 305.2057),
        new Checkpoint(new Vector3(2231.719, 5574.878, 52.7403), 117.2057),
        new Checkpoint(new Vector3(2228.15, 5574.58, 52.71139), 90.2057),
        new Checkpoint(new Vector3(2226.224, 5576.394, 52.69821), 53.2057),
        new Checkpoint(new Vector3(2223.7, 5575.396, 52.57507), 114.2057),
        new Checkpoint(new Vector3(2219.411, 5579.415, 52.83595), 52.2057),
        };
        internal class Checkpoint
        {
            public Vector3 Position { get; }
            public double Heading { get; }

            public Checkpoint(Vector3 pos, double rot)
            {
                Position = pos;
                Heading = rot;
            }
        }
    }
}
