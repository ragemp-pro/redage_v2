using System;
using System.Collections.Generic;
using System.Text;
using GTANetworkAPI;
using NeptuneEvo.GUI;
using Redage.SDK;

namespace NeptuneEvo.Core
{
    class Rentcar : Script
    {
        private static nLog Log = new nLog("Rentcar");
        public static List<CarInfo> CarInfos = new List<CarInfo>();

        private static List<Tuple<string, Vector3>> RentAreasTypes = new List<Tuple<string, Vector3>>()
        {
            new Tuple<string, Vector3>("Авто", new Vector3(-526.91406, 61.327232, 51.459885)),
            new Tuple<string, Vector3>("Скутеры", new Vector3(285.24445, -349.28256, 43.871384)),
            new Tuple<string, Vector3>("Лодки", new Vector3(-853.62213, -1327.3962, 0.9336101)),
            
            // Newbie respawn
            new Tuple<string, Vector3>("Авто", new Vector3(-989.4564, -2696.0186, 12.71069)),
            new Tuple<string, Vector3>("Скутеры", new Vector3(-1029.6763, -2672.7966, 12.7107525)),
        };

        [ServerEvent(Event.ResourceStart)]
        public void onResourceStart()
        {
            try
            {
                foreach (var v in RentAreasTypes)
                {
                    var blipIcon = 0;
                    switch (v.Item1)
                    {
                        case "Авто": blipIcon = 225;
                            break;
                        case "Лодки": blipIcon = 404;
                            break;
                        case "Скутеры": blipIcon = 661;
                            break;
                    }

                    NAPI.Blip.CreateBlip(blipIcon, v.Item2, 0.8f, 1, Main.StringToU16($"Аренда транспорта ({v.Item1})"), 255, 0, true, 0, 0);
                }
            }
            catch (Exception e) { Log.Write("ResourceStart: " + e.Message, nLog.Type.Error); }
        }

        public static Vector3 GetNearestRentArea(Vector3 position)
        {
            Vector3 nearesetArea = RentAreasTypes[0].Item2;

            foreach (var v in RentAreasTypes)
            {
                if (position.DistanceTo(v.Item2) > position.DistanceTo(nearesetArea)) continue;
                nearesetArea = v.Item2;
            }
            return nearesetArea;
        }
        
        public static void rentCarsSpawner()
        {
            var i = 0;
            foreach (var c in CarInfos)
            {
                var veh = NAPI.Vehicle.CreateVehicle(c.Model, c.Position, c.Rotation, c.Color1, c.Color2);
                NAPI.Data.SetEntityData(veh, "ACCESS", "RENT");
                NAPI.Data.SetEntityData(veh, "NUMBER", i);
                NAPI.Data.SetEntityData(veh, "DRIVER", null);
                Core.VehicleStreaming.SetEngineState(veh, false);
                Core.VehicleStreaming.SetLockStatus(veh, false);
                i++;
            }
        }

        public static void RespawnCar(Vehicle vehicle)
        {
            var number = vehicle.GetData<int>("NUMBER");
            var random = new Random();
            NAPI.Entity.SetEntityPosition(vehicle, CarInfos[number].Position);
            NAPI.Entity.SetEntityRotation(vehicle, CarInfos[number].Rotation);
            VehicleManager.RepairCar(vehicle);
            
            NAPI.Data.SetEntityData(vehicle, "ACCESS", "RENT");
            NAPI.Data.SetEntityData(vehicle, "NUMBER", number);
            NAPI.Data.SetEntityData(vehicle, "DRIVER", null);
            NAPI.Data.SetEntitySharedData(vehicle, "PETROL", 50);
            Core.VehicleStreaming.SetEngineState(vehicle, false);
            Core.VehicleStreaming.SetLockStatus(vehicle, false);
        }

        [ServerEvent(Event.PlayerEnterVehicle)]
        public void Event_OnPlayerEnterVehicle(Player player, Vehicle vehicle, sbyte seatid)
        {
            try
            {
                if (!vehicle.HasData("ACCESS") || vehicle.GetData<string>("ACCESS") != "RENT" || seatid != 0) return;///seatid != -1
                if (vehicle.GetData<Player>("DRIVER") != null && vehicle.GetData<Player>("DRIVER") != player)
                {
                    Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "Этот транспорт уже арендован другим игроком!", 3000);
                    VehicleManager.WarpPlayerOutOfVehicle(player);
                    return;
                }

                int number = vehicle.GetData<int>("NUMBER");
                if (vehicle.GetData<Player>("DRIVER") == null)
                {
                    if (player.HasData("RENTED_CAR"))
                    {
                        Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "У Вас уже оплачена аренда другого транспорта!", 3000);
                        VehicleManager.WarpPlayerOutOfVehicle(player);
                        return;
                    }

                    //
                    if (CarInfos[number].Model == VehicleHash.Faggio && Main.Players[player].LVL >= 2)
                    {
                        Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "Этот транспорт предназначен только для новичков!", 3000);
                        VehicleManager.WarpPlayerOutOfVehicle(player);
                        return;
                    }

                    if (CarInfos[number].Model == VehicleHash.Suntrap && !Main.Players[player].Licenses[3])
                    {
                        Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "У вас нет лицензии на водный транспорт для заключения договора аренды!", 3000);
                        VehicleManager.WarpPlayerOutOfVehicle(player);
                        return;
                    }
                    //

                    int price = CarInfos[number].Price;
                    switch(Main.Accounts[player].VipLvl) {
                        case 0: 
                            price = CarInfos[number].Price;
                            break;
                        case 1:
                            price = Convert.ToInt32(CarInfos[number].Price * 0.95);
                            break;
                        case 2:
                            price = Convert.ToInt32(CarInfos[number].Price * 0.9);
                            break;
                        case 3: 
                            price = Convert.ToInt32(CarInfos[number].Price * 0.85);
                            break;
                        case 4: 
                            price = Convert.ToInt32(CarInfos[number].Price * 0.8);
                            break;
                        default:
                            price = CarInfos[number].Price;
                            break;
                    }
                    Trigger.ClientEvent(player, "openDialog", "RENT_CAR", $"Вы хотите арендовать этот транспорт за ${price}?");
                }
                else
                {
                    player.SetData("IN_RENT_CAR", true);
                }
            }
            catch (Exception e) { Log.Write("PlayerEnterVehicle: " + e.Message, nLog.Type.Error); }
        }

        [ServerEvent(Event.PlayerExitVehicle)]
        public void Event_OnPlayerExitVehicle(Player player, Vehicle vehicle)
        {
            try
            {
                if (!vehicle.HasData("ACCESS") || vehicle.GetData<string>("ACCESS") != "RENT" || vehicle.GetData<Player>("DRIVER") != player) return;
                Notify.Send(player, NotifyType.Warning, NotifyPosition.BottomCenter, $"Через 3 минуты аренда транспорта закончится, если вы снова не сядете в т/с.", 3000);

                NAPI.Data.SetEntityData(player, "IN_RENT_CAR", false);
                NAPI.Data.SetEntityData(player, "RENT_EXIT_TIMER_COUNT", 0);
                NAPI.Data.SetEntityData(player, "RENT_CAR_EXIT_TIMER", Timers.Start(1000, () => timer_playerExitRentVehicle(player, vehicle)));
            }
            catch (Exception e) { Log.Write("PlayerExitVehicle: " + e.Message, nLog.Type.Error); }
        }

        private void timer_playerExitRentVehicle(Player player, Vehicle vehicle)
        {
            NAPI.Task.Run(() =>
            {
                try
                {
                    if (!player.HasData("RENT_CAR_EXIT_TIMER")) return;
                    if (NAPI.Data.GetEntityData(player, "IN_RENT_CAR"))
                    {
                        Timers.Stop(NAPI.Data.GetEntityData(player, "RENT_CAR_EXIT_TIMER"));
                        NAPI.Data.ResetEntityData(player, "RENT_CAR_EXIT_TIMER");
                        return;
                    }
                    if (NAPI.Data.GetEntityData(player, "RENT_EXIT_TIMER_COUNT") > 180)
                    {
                        Notify.Send(player, NotifyType.Info, NotifyPosition.BottomCenter, $"Срок аренды закончился. Транспорт был отбуксирован на место стоянки.", 3000);
                        RespawnCar(vehicle);
                        player.ResetData("RENTED_CAR");

                        Timers.Stop(NAPI.Data.GetEntityData(player, "RENT_CAR_EXIT_TIMER"));
                        NAPI.Data.ResetEntityData(player, "RENT_CAR_EXIT_TIMER");
                        return;
                    }
                    NAPI.Data.SetEntityData(player, "RENT_EXIT_TIMER_COUNT", NAPI.Data.GetEntityData(player, "RENT_EXIT_TIMER_COUNT") + 1);
                }
                catch (Exception e) { Log.Write("timerExitRentVehicle: " + e.Message, nLog.Type.Error); }
            });
        }

        public static void Event_OnPlayerDisconnected(Player player)
        {
            try
            {
                if (player.HasData("RENTED_CAR"))
                    RespawnCar(player.GetData<Vehicle>("RENTED_CAR"));
                if (player.HasData("RENT_CAR_EXIT_TIMER"))
                    Timers.Stop(player.GetData<string>("RENT_CAR_EXIT_TIMER"));
            }
            catch (Exception e) { Log.Write("PlayerDisconnected: " + e.Message, nLog.Type.Error); }
        }

        public static void RentCar(Player player)
        {
            if (!player.IsInVehicle || !player.Vehicle.HasData("ACCESS") || player.Vehicle.GetData<string>("ACCESS") != "RENT" || player.Vehicle.GetData<Player>("DRIVER") != null)
            {
                VehicleManager.WarpPlayerOutOfVehicle(player);
                return;
            }
            int price = CarInfos[player.Vehicle.GetData<int>("NUMBER")].Price;
            switch(Main.Accounts[player].VipLvl) {
                case 0: 
                    price = CarInfos[player.Vehicle.GetData<int>("NUMBER")].Price;
                    break;
                case 1:
                    price = Convert.ToInt32(CarInfos[player.Vehicle.GetData<int>("NUMBER")].Price * 0.95);
                    break;
                case 2:
                    price = Convert.ToInt32(CarInfos[player.Vehicle.GetData<int>("NUMBER")].Price * 0.9);
                    break;
                case 3: 
                    price = Convert.ToInt32(CarInfos[player.Vehicle.GetData<int>("NUMBER")].Price * 0.85);
                    break;
                case 4: 
                    price = Convert.ToInt32(CarInfos[player.Vehicle.GetData<int>("NUMBER")].Price * 0.8);
                    break;
                default:
                    price = CarInfos[player.Vehicle.GetData<int>("NUMBER")].Price;
                    break;
            }
            if (Main.Players[player].Money < price)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "Недостаточно средств на аренду", 3000);
                VehicleManager.WarpPlayerOutOfVehicle(player);
                return;
            }
            player.Vehicle.SetData("DRIVER", player);
            player.SetData("RENTED_CAR", player.Vehicle);
            player.SetData("IN_RENT_CAR", true);
            MoneySystem.Wallet.Change(player, -price);
            GameLog.Money($"player({Main.Players[player].UUID})", $"server", price, $"rentCar");

            Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, "Вы успешно арендовали транспорт (аренда транспорта закончится, если вы снова не сядете в т/с в течении 3 мин.)", 3000);
        }
    }
}
