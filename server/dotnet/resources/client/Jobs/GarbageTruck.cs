using GTANetworkAPI;
using NeptuneEvo.Core;
using Redage.SDK;
using System;
using System.Collections.Generic;

namespace NeptuneEvo.Jobs
{
    class GarbageTruck : Script
    {
        static int checkpointPayment = 250; // Зарплата за одну метку
        private static nLog Log = new nLog("GarbageTruck");

        // Места для появления машины после начала работы
        private static List<Vector3> GarbageCarPos = new List<Vector3>()
        {
            new Vector3(-426.7699, -1690.7727, 19.242973),
            new Vector3(-450.8781, -1692.2085, 19.17084),
            new Vector3(-468.3914, -1678.8492, 19.240356),
        };
        private static List<float> GarbageCarRot = new List<float>()
        {
            158.8962f,
            163.47552f,
            162.59927f,
        };

        // сами метки
        private static List<Dictionary<int, ColShape>> GarbageWaysCols = new List<Dictionary<int, ColShape>>();
        private static List<List<Vector3>> GarbageWays = new List<List<Vector3>>()
        {
            new List<Vector3>()
            {
                /* garbage_col1 */ new Vector3(-534.84784, -1774.1843, 21.654629),
                /* garbage_col2 */ new Vector3(-502.2872, -943.6666, 24.184378),
                /* garbage_col3 */ new Vector3(-571.77594, -982.60754, 22.392822),
                /* garbage_col4 */ new Vector3(-676.52026, -953.05286, 21.108),
                /* garbage_col5 */ new Vector3(-795.2298, -959.4615, 15.55275),
                /* garbage_col6 */ new Vector3(-834.67944, -1068.982, 11.48903),
                /* garbage_col7 */ new Vector3(-846.0203, -1116.5972, 7.279335),
                /* garbage_col8 */ new Vector3(-1143.8955, -1379.1576, 5.27014),
                /* garbage_col9 */ new Vector3(-1126.1842, -1416.0979, 5.2651663),
                /* garbage_col10 */ new Vector3(-1202.5713, -1483.8724, 4.596128),
                /* garbage_col11 */ new Vector3(-1189.6084, -1508.3291, 4.5939717),
                /* garbage_col12 */ new Vector3(-1218.4105, -1423.4731, 4.536671),
                /* garbage_col13 */ new Vector3(-1237.3539, -1403.6392, 4.4757786),
                /* garbage_col14 */ new Vector3(-1646.8544, -979.6213, 7.7257037),
                /* garbage_col15 */ new Vector3(-1363.0499, -667.0898, 26.553793),
            },
        };

        private static Vehicle veh;

        [ServerEvent(Event.ResourceStart)]
        public void Event_GarbageWorkStart()
        {
            try
            {
                // Создаем метку на карте и текст над головой у NPC
                NAPI.Blip.CreateBlip(318, new Vector3(-430.45914, -1726.7654, 17.803528), 1, 2, "Работа мусорщика", 255, 0, true, 0, 0);
                NAPI.TextLabel.CreateTextLabel("~g~Мусорщик", new Vector3(-430.45914, -1726.7654, 20.1), 10f, 0.1f, 0, new Color(255, 255, 255), true, NAPI.GlobalDimension);

                // (сам npc / ped создаем на клиенте)

                // при старте сервера посчитаем сколько всего меток есть и на каждую повесим функцию
                GarbageWaysCols.Add(new Dictionary<int, ColShape>());
                GarbageWaysCols.Add(new Dictionary<int, ColShape>());
                GarbageWaysCols.Add(new Dictionary<int, ColShape>());

                for (int i = 0; i < GarbageWays.Count; i++)
                {
                    for (int d = 0; d < GarbageWays[i].Count; d++)
                    {
                        GarbageWaysCols[i].Add(d, NAPI.ColShape.CreateCylinderColShape(GarbageWays[i][d], 2, 2, 0));
                        GarbageWaysCols[i][d].OnEntityEnterColShape += garbageCheckpointEnterWay;
                        GarbageWaysCols[i][d].SetData("GWAY", i);
                        GarbageWaysCols[i][d].SetData("NUMBER", d);
                    }
                }

                // колшейп устройства на работу
                var garbageShape = NAPI.ColShape.CreateCylinderColShape(new Vector3(-430.45914, -1726.7654, 17.803528), 2.1f, 3, 0);
                garbageShape.OnEntityEnterColShape += (shape, player) =>
                {
                    try
                    {
                        player.SetData("INTERACTIONCHECK", 888);
                    }
                    catch (Exception e)
                    {
                        Log.Write(e.ToString(), nLog.Type.Error);
                    }
                };
                garbageShape.OnEntityExitColShape += (shape, player) =>
                {
                    try
                    {
                        player.SetData("INTERACTIONCHECK", 0);
                        Trigger.ClientEvent(player, "garbageMenuCancel");
                    }
                    catch (Exception e)
                    {
                        Log.Write(e.ToString(), nLog.Type.Error);
                    }
                };
            }
            catch (Exception e)
            {
                Log.Write(e.ToString(), nLog.Type.Error);
            }
        }

        // Эту функцию будем вызывать в момент подбора чекпоинта
        private static void garbageCheckpointEnterWay(ColShape shape, Player player)
        {
            try
            {
                //
            }
            catch (Exception ex) { Log.Write("garbageCheckpointEnterWay: " + ex.Message, nLog.Type.Error); }
        }

        [RemoteEvent("SERVER:WORK:START")]
        public static void GarbageTruckStartWork(Player player)
        {
            if (!Main.Players[player].Licenses[2])
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"У Вас нет лицензии категории C", 3000);
                VehicleManager.WarpPlayerOutOfVehicle(player);
                return;
            }

            var lucky = new Random().Next(0, 3); // Рандомная позиция для рабочей машины

            veh = NAPI.Vehicle.CreateVehicle(VehicleHash.Trash, GarbageCarPos[lucky], GarbageCarRot[lucky], 0, 0, "Truck");
            NAPI.Data.SetEntityData(veh, "ACCESS", "WORK");
            NAPI.Data.SetEntityData(veh, "NUMBER", "Truck");
            NAPI.Data.SetEntityData(veh, "ON_WORK", true);
            NAPI.Data.SetEntityData(veh, "DRIVER", player);
            NAPI.Data.SetEntityData(veh, "TYPE", "GARBAGE");
            veh.SetSharedData("PETROL", VehicleManager.VehicleTank[veh.Class]);

            player.SetIntoVehicle(veh, 0);
        }

        [RemoteEvent("SERVER:WORK:END")]
        public static void GarbageTruckEndWork(Player player)
        {
            NAPI.Data.SetEntityData(veh, "ACCESS", "WORK");
            NAPI.Data.SetEntityData(veh, "NUMBER", "Truck");
            NAPI.Data.SetEntityData(veh, "ON_WORK", false);
            NAPI.Data.SetEntityData(veh, "DRIVER", null);
            veh.Delete();
        }

        [RemoteEvent("WORK:GARBAGE:SET:MONEY")]
        public static void GarbageTruckWorkPay(Player player, int amount)
        {
            player.SendNotification("Вы получили " + amount + " за собранный мусор!");
            MoneySystem.Wallet.Change(player, amount);
        }

    }
}
