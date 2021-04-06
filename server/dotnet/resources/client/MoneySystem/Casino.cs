using System;
using GTANetworkAPI;
using Redage.SDK;

namespace NeptuneEvo.MoneySystem
{
    class Casino : Script
    {
        private static nLog Log = new nLog("Casino");
        private static Random Rnd = new Random();

        private static Vector3 enterPos = new Vector3(935.7294, 46.61844, 81.2);
        private static Vector3 exitPos = new Vector3(1089.695, 206.015, -49);

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

                //
                colShapeEnter.OnEntityEnterColShape += (s, e) =>
                {
                    try
                    {
                        if (!e.IsInVehicle)
                        {
                            NAPI.Data.SetEntityData(e, "INTERACTIONCHECK", 777);
                            NAPI.Data.SetEntityData(e, "CASINO_SHAPE", "ENTER");
                        }
                    }
                    catch (Exception ex) { Log.Write("CASINO_SHAPE_OnEntityEnterColShape: " + ex.Message, nLog.Type.Error); }
                };
                colShapeEnter.OnEntityExitColShape += OnEntityExitCasinoMainShape;

                colShapeExit.OnEntityEnterColShape += (s, e) =>
                {
                    try
                    {
                        if (!e.IsInVehicle)
                        {
                            NAPI.Data.SetEntityData(e, "INTERACTIONCHECK", 777);
                            NAPI.Data.SetEntityData(e, "CASINO_SHAPE", "EXIT");
                        }
                    }
                    catch (Exception ex) { Log.Write("CASINO_SHAPE_OnEntityEnterColShape: " + ex.Message, nLog.Type.Error); }
                };
                colShapeExit.OnEntityExitColShape += OnEntityExitCasinoMainShape;
                //

                NAPI.Blip.CreateBlip(679, enterPos, 1, 0, "Diamond Casino", 255, 0, true);

                //

                ColShape shape = NAPI.ColShape.CreateCylinderColShape(new Vector3(1111.05, 229.81, -49.15), 2f, 2f);

                shape.OnEntityEnterColShape += (s, entity) =>
                {
                    try
                    {
                        Trigger.ClientEvent(entity, "casino.luckywheel.enter", true);
                    }
                    catch (Exception e) { Console.WriteLine("shape.OnEntityEnterColshape: " + e.Message); }
                };
                shape.OnEntityExitColShape += (s, entity) =>
                {
                    try
                    {
                        Trigger.ClientEvent(entity, "casino.luckywheel.enter", false);
                    }
                    catch (Exception e) { Console.WriteLine("shape.OnEntityExitColShape: " + e.Message); }
                };

            }
            catch (Exception e) { Log.Write("ResourceStart: " + e.Message, nLog.Type.Error); }
        }
        public static void OnEntityExitCasinoMainShape(ColShape shape, Player player)
        {
            NAPI.Data.SetEntityData(player, "INTERACTIONCHECK", 0);
            NAPI.Data.ResetEntityData(player, "CASINO_SHAPE");
        }
        public static void CallBackShape(Player player)
        {
            if (!player.HasData("CASINO_SHAPE")) return;
            string data = player.GetData<string>("CASINO_SHAPE");
            
            switch(data)
            {
                case "ENTER":
                    NAPI.Entity.SetEntityPosition(player, exitPos);
                    NAPI.Entity.SetEntityRotation(player, new Vector3(0, 0, -27.5));
                    return;
                case "EXIT":
                    NAPI.Entity.SetEntityPosition(player, enterPos);
                    NAPI.Entity.SetEntityRotation(player, new Vector3(0, 0, 113.5));
                    return;
            }
        }

        [RemoteEvent("casino.luckywheel.roll")]
        public static void CasinoLuckywheelRoll(Player player)
        {
            try
            {
                int result = Rnd.Next(0, 20);
                player.SetData("luckywheel.value", result);

                Trigger.ClientEvent(player, "casino.luckywheel.roll", player.Value, result);

                Log.Write("CasinoLuckywheelRoll.Event: " + true, nLog.Type.Info);
            }
            catch (Exception e)
            {
                Log.Write("CasinoLuckywheelRoll.Event: " + e.Message, nLog.Type.Error);
            }
        }

        [RemoteEvent("casino.luckywheel.roll.finish")]
        public static void CasinoLuckywheelFinish(Player player)
        {
            try
            {
                int result = player.GetData<int>("luckywheel.value");
                string resultName;

                switch (result)
                {
                    default:
                        resultName = "Нихуя =(";
                        break;
                    case 0:
                        resultName = "Одежда";
                        break;
                    case 1:
                        resultName = "Деньги (50.000$)";
                        break;
                    case 2:
                        resultName = "Машина";
                        break;
                    case 3:
                        resultName = "RP (15.000)";
                        break;
                    case 4:
                        resultName = "Одежда";
                        break;
                    case 5:
                        resultName = "Coins (25.000)";
                        break;
                    case 6:
                        resultName = "Money (40.000$)";
                        break;
                    case 7:
                        resultName = "RP (10.000)";
                        break;
                    case 8:
                        resultName = "Одежда";
                        break;
                    case 9:
                        resultName = "MYSTERY";
                        break;
                    case 10:
                        resultName = "Coins (20.000)";
                        break;
                    case 11:
                        resultName = "RP (7.500)";
                        break;
                    case 12:
                        resultName = "Одежда";
                        break;
                    case 13:
                        resultName = "Coins (15.000)";
                        break;
                    case 14:
                        resultName = "Money (30.000$)";
                        break;
                    case 15:
                        resultName = "RP (5.000)";
                        break;
                    case 16:
                        resultName = "DISCOUNT";
                        break;
                    case 17:
                        resultName = "Coins (10.000)";
                        break;
                    case 18:
                        resultName = "Money (20.000$)";
                        break;
                    case 19:
                        resultName = "RP (2.500)";
                        break;
                    case 20:
                        resultName = "Одежда";
                        break;
                }

                Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, $"В колесе выпало: {resultName} ({result})", 3000);
            }
            catch (Exception e)
            {
                Log.Write("CasinoLuckywheelFinish.Event: " + e.Message, nLog.Type.Error);
            }
        }
    }
}
