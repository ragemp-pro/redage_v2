using System;
using GTANetworkAPI;
using Redage.SDK;

namespace NeptuneEvo.MoneySystem
{
    class Casino : Script
    {
        private static nLog Log = new nLog("Casino");
        private static Random Rnd = new Random();

        [ServerEvent(Event.ResourceStart)]
        public void onResourceStart()
        {
            try
            {
                ColShape shape = NAPI.ColShape.CreateCylinderColShape(new Vector3(1111.05, 229.81, -49.15), 2f, 2f, 1);

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
