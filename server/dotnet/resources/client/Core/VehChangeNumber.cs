using GTANetworkAPI;
using Redage.SDK;
using System;
namespace NeptuneEvo.Core
{
    class VehChangeNumber : Script
    {
        private static nLog RLog = new nLog("VehChangeNumber");
        
        private static ColShape shape;
        
        private static Vector3 EnterPos = new Vector3(415.1404, -1014.025, 28.34782);
        
        public static int Price = 5000;

        [ServerEvent(Event.ResourceStart)]
        public static void OnResourceStart()
        {
            try
            {
                NAPI.Blip.CreateBlip(678, EnterPos, 0.6f, 58, "Смена номеров", shortRange: true, dimension: 0);
                NAPI.Marker.CreateMarker(1, EnterPos, new Vector3(), new Vector3(), 2f, new Color(66, 170, 255, 150), false, 0);
                NAPI.TextLabel.CreateTextLabel("~b~Смена номеров", EnterPos + new Vector3(0, 0, 0.85), 5f, 0.3f, 0, new Color(255, 255, 255), true, 0);
                NAPI.TextLabel.CreateTextLabel($"~w~Цена: ${Price}$", EnterPos + new Vector3(0, 0, 0.65), 5f, 0.3f, 0, new Color(255, 255, 255), true, 0);

                shape = NAPI.ColShape.CreateCylinderColShape(EnterPos, 1, 3, 0);
                shape.OnEntityEnterColShape += (s, ent) =>
                {
                    try
                    {
                        NAPI.Data.SetEntityData(ent, "INTERACTIONCHECK", 800);
                    }
                    catch (Exception ex) { Console.WriteLine("shape.OnEntityEnterColShape: " + ex.Message); }
                };
                shape.OnEntityExitColShape += (s, ent) =>
                {
                    try
                    {
                        NAPI.Data.SetEntityData(ent, "INTERACTIONCHECK", 0);
                    }
                    catch (Exception ex) { Console.WriteLine("shape.OnEntityExitColShape: " + ex.Message); }
                };

                RLog.Write("Loaded", nLog.Type.Info);
            }
            catch (Exception e) { RLog.Write(e.ToString(), nLog.Type.Error); }
        }
        public static void OpenVehChangeNumberMenu(Player player)
        {
            try
            {
                if (!Main.Players.ContainsKey(player)) return;
                if (player.VehicleSeat != 0)
                {
                    Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы должны быть в водительском месте", 3000);
                    return;
                }

                Vehicle veh = player.Vehicle;
                string oldNum = player.Vehicle.NumberPlate;

                if (veh == null || !VehicleManager.Vehicles.ContainsKey(oldNum) || VehicleManager.Vehicles.ContainsKey(oldNum) && VehicleManager.Vehicles[oldNum].Holder != player.Name || !veh.HasData("ACCESS") || veh.GetData<string>("ACCESS") != "PERSONAL")
                {
                    Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "Вы должны быть в личном авто", 3000);
                    return;
                }

                Trigger.ClientEvent(player, "openDialog", "CAR_CHANGE_NUMBER", $"Вы действительно хотите изменить гос. номер на авто {veh.DisplayName} ({player.Vehicle.NumberPlate}) за ${Price}?");
            }
            catch (Exception e) { RLog.Write(e.ToString(), nLog.Type.Error); }
        }
        public static void ChangeVehNumber(Player player)
        {
            try
            {
                if (!Main.Players.ContainsKey(player)) return;
                if (player.VehicleSeat != 0)
                {
                    Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы должны быть в водительском месте", 3000);
                    return;
                }
                var veh = player.Vehicle;
                var oldNum = player.Vehicle.NumberPlate;
                var vData = VehicleManager.Vehicles[oldNum];

                Character.Character acc = Main.Players[player];
                if ((acc.FirstName + "_" + acc.LastName) != VehicleManager.Vehicles[oldNum].Holder)
                {
                    Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Это не ваша машина", 3000);
                    return;
                }
                if (Main.Players[player].Money < Price)
                {
                    Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "Недостаточно средств", 3000);
                    return;
                }

                MoneySystem.Wallet.Change(player, -Price);
                GameLog.Money($"{acc.UUID}", "server", -Price, "VehChangeNumber");
                string newNum = VehicleManager.GenerateNumber();
                veh.NumberPlate = newNum;
                VehicleManager.Vehicles.Remove(oldNum);
                VehicleManager.Vehicles.Add(newNum, vData);
                Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, $"Новый номер для транспорта {veh.DisplayName} = {newNum}", 3000);
                MySQL.Query($"UPDATE vehicles SET number='{newNum}' WHERE number='{oldNum}'");
                VehicleManager.Save(newNum);
            }
            catch (Exception e) { RLog.Write("Change Vehicle Number: " + e.Message, nLog.Type.Error); }
        }
    }
}
