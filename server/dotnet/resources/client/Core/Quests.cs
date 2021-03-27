using GTANetworkAPI;
using Redage.SDK;
using System;
using System.Collections.Generic;
using System.Linq;

namespace NeptuneEvo.Core
{
    class Quests : Script
    {
        private static nLog Log = new nLog("QUESTS");

        private static List<Tuple<string, Vector3>> QNPCList = new List<Tuple<string, Vector3>>()
        {
            new Tuple<string, Vector3>("Steve Haines", new Vector3(-1033.6659, -2726.9346, 13.756636)),
            new Tuple<string, Vector3>("Tom Johnson", new Vector3(-517.7243, -251.28696, 35.67576)),
        };
        private static Dictionary<int, ColShape> Cols = new Dictionary<int, ColShape>();

        [ServerEvent(Event.ResourceStart)]
        public void onResourceStart()
        {
            try
            {
                for (int i = 0; i < QNPCList.Count; i++)
                {
                    var shape = NAPI.ColShape.CreateSphereColShape(QNPCList[i].Item2, 3f, 0); // NPC colshape
                    shape.OnEntityEnterColShape += EnterNPCColshape;
                    shape.OnEntityExitColShape += ExitNPCColshape;
                    Cols.Add(i, shape);

                    NAPI.TextLabel.CreateTextLabel(QNPCList[i].Item1, QNPCList[i].Item2 + new Vector3(0.0, 0.0, 1.0), 5f, 0.4f, 0, new Color(255, 255, 255), true, 0); // Text on head
                }
            }
            catch (Exception e) { Log.Write("ResourceStart: " + e.Message, nLog.Type.Error); }
        }

        private void EnterNPCColshape(ColShape shape, Player entity)
        {
            try
            {
                if (NAPI.Entity.GetEntityType(entity) != EntityType.Player) return;
                if (entity.IsInVehicle) return;

                if(Cols.ContainsValue(shape))
                {
                    int npc = Cols.FirstOrDefault(a => a.Value == shape).Key;
                    NAPI.Data.SetEntityData(entity, "INTERACTIONCHECK", 500 + npc);
                }
            }
            catch (Exception e) { Log.Write("EnterColshape: " + e.ToString(), nLog.Type.Error); }
        }
        private void ExitNPCColshape(ColShape shape, Player player)
        {
            NAPI.Data.SetEntityData(player, "INTERACTIONCHECK", 0);
        }

        public static void InteractNPC(Player player, int id)
        {
            var npc_id = id - 500;
            switch (npc_id)
            {
                case 0:
                    if (!Main.Players[player].Achievements[0])
                    {
                        Main.Players[player].Achievements[0] = true;
                        Trigger.ClientEvent(player, "ChatPyBed", npc_id, 0);
                    }
                    else Trigger.ClientEvent(player, "ChatPyBed", npc_id, 1);
                    return;
                case 1:
                    if (Main.Players[player].Sim == -1) Trigger.ClientEvent(player, "ChatPyBed", npc_id, 1);
                    else
                    {
                        if(!Main.Players[player].Achievements[1])
                        {
                            Main.Players[player].Achievements[1] = true;
                        }
                        Trigger.ClientEvent(player, "ChatPyBed", npc_id, 0);
                    }
                    return;
            }
        }

        [ServerEvent(Event.PlayerEnterVehicle)]
        public void onPlayerEnterVehicleHandler(Player player, Vehicle vehicle, sbyte seatid)
        {
            /*
            if (vehicle == FrankQuest1Trac0 || vehicle == FrankQuest1Trac1)
            {
                if (!Players[player].Achievements[8] || Players[player].Achievements[9]) player.WarpOutOfVehicle();
                else
                {
                    Trigger.ClientEvent(player, "createWaypoint", 1905.1f, 4925.5f);
                    vehicle.SetSharedData("PETROL", VehicleManager.VehicleTank[vehicle.Class]);
                    vehicle.SetData("ACCESS", "QUEST");
                }
            }
            */
        }

        [ServerEvent(Event.PlayerEnterColshape)]
        public void EnterColshape(ColShape colshape, Player player)
        {
            /*
            if (colshape == FrankQuest1) return;
            if (colshape == BonyCS)
            {
                player.SetData("INTERACTIONCHECK", 500);
                Trigger.ClientEvent(player, "PressE", true);
            }
            else if (colshape == EmmaCS)
            {
                player.SetData("INTERACTIONCHECK", 501);
                Trigger.ClientEvent(player, "PressE", true);
            }
            else if (colshape == FrankCS)
            {
                player.SetData("INTERACTIONCHECK", 503);
                Trigger.ClientEvent(player, "PressE", true);
            }
            else if (colshape == Zone0 || colshape == Zone1)
            {
                player.SetData("INTERACTIONCHECK", 502);
                Trigger.ClientEvent(player, "PressE", true);
            }
            else if (colshape == FrankQuest0)
            {
                player.SetData("INTERACTIONCHECK", 504);
                Trigger.ClientEvent(player, "PressE", true);
            }
            else if (colshape == FrankQuest1_1)
            {
                player.SetData("INTERACTIONCHECK", 505);
                Trigger.ClientEvent(player, "PressE", true);
            }
            */
        }

        [ServerEvent(Event.PlayerExitColshape)]
        public void ExitColshape(ColShape colshape, Player player)
        {
            /*
            if (colshape == FrankQuest1)
            { // Ливнул из зоны тракторов
                if (player.Vehicle == FrankQuest1Trac0 || player.Vehicle == FrankQuest1Trac1)
                {
                    if (Players[player].Achievements[8] && !Players[player].Achievements[9])
                    {
                        Vehicle trac = player.Vehicle;
                        player.WarpOutOfVehicle();
                        NAPI.Task.Run(() => {
                            if (trac == FrankQuest1Trac0)
                            {
                                trac.Position = new Vector3(1981.87, 5174.382, 48.26282);
                                trac.Rotation = new Vector3(0.1017629, -0.1177645, 129.811);
                            }
                            else
                            {
                                trac.Position = new Vector3(1974.506, 5168.247, 48.2662);
                                trac.Rotation = new Vector3(0.07581472, -0.08908347, 129.8487);
                            }
                        }, 500);
                        player.SendChatMessage("Ну и зачем мне было пытаться увезти этот трактор, не пойму...");
                    }
                }
                return;
            }
            Trigger.ClientEvent(player, "PressE", false);
            if (colshape == BonyCS || colshape == EmmaCS || colshape == Zone0 || colshape == Zone1 || colshape == FrankCS || colshape == FrankQuest0 || colshape == FrankQuest1_1)
            {
                player.SetData("INTERACTIONCHECK", 0);
                Trigger.ClientEvent(player, "PressE", false);
            }
            */
        }
    }
}
