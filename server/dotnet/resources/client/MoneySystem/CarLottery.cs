using System;
using System.Collections.Generic;
using GTANetworkAPI;
using NeptuneEvo.Core;
using Redage.SDK;

namespace NeptuneEvo.Casino
{
    class CarLottery : Script
    {
        private static nLog Log = new nLog("CarLottery");
        //Закончен или нет
        private static bool CompleteFlag = false;
        //Розыгрываемая модель
        public static string vModel;
        //Цена за участие в лотерее
        private static int _price = 5000;
        //Минимальное количество участников, которое необходимо для проведения лотереи
        private static int _minCountMembers = 1;
        //Координаты колшейпа взаимодействия
        private static Vector3 _mainShapePosition = new Vector3(1105.8865, 220.15826, -48.99499);

        private static GTANetworkAPI.ColShape _mainShape;
        private static GTANetworkAPI.ColShape _podiumShape;
        private static GTANetworkAPI.Marker _mainShapeMarker;

        public static List<string> MemberNames = new List<string>();
        //Название моделей розыгрываемых машин
        private static List<string> CarsfoGive = new List<string>() {
            "zentorno",
            "t20",
            "sultan",
            "banshee",
        };

        [ServerEvent(Event.ResourceStart)]
        public static void onResourceStart()
        {
            try
            {
                Randomcar();
                _mainShapeMarker = NAPI.Marker.CreateMarker(1, _mainShapePosition - new Vector3(0, 0, 1.5), new Vector3(), new Vector3(), 1f, new Color(66, 170, 255, 150), false);
                _mainShape = NAPI.ColShape.CreateCylinderColShape(_mainShapePosition, 1, 2);
                _podiumShape = NAPI.ColShape.CreateCylinderColShape(new Vector3(1100.077, 219.9723, -50.07865), 50, 50);
                _mainShape.OnEntityEnterColShape += (s, ent) =>
                {
                    try
                    {
                        NAPI.Data.SetEntityData(ent, "INTERACTIONCHECK", 806);
                    }
                    catch (Exception ex) { Console.WriteLine("shape.OnEntityEnterColShape: " + ex.Message); }
                };
                _mainShape.OnEntityExitColShape += (s, ent) =>
                {
                    NAPI.Data.SetEntityData(ent, "INTERACTIONCHECK", 0);
                };

                _podiumShape.OnEntityEnterColShape += (s, ent) =>
                {
                    try
                    {
                        Trigger.ClientEvent(ent, "CAR_LOTTERY::PODIUM_LOAD_CAR_MODEL", vModel);
                    }
                    catch (Exception ex) { Console.WriteLine("podiumcolshape.OnEntityEnterColShape: " + ex.Message); }
                };
                Log.Write("Loaded", nLog.Type.Info);

            }
            catch (Exception e) { Log.Write(e.ToString(), nLog.Type.Error); }
        }
        public static void CallBackShape(Player player)
        {
            if (!isAccessToTakePart(player)) return;
            Trigger.ClientEvent(player, "openDialog", "RANDOMMEMBER_ADD",
                $"Сегодня разыгрывается {vModel}. Стоимость участия: {_price}$. Учавствовать?");
        }
        public static void Randomcar()
        {
            try
            {
                int rand = new Random().Next(0, CarsfoGive.Count);
                vModel = CarsfoGive[rand];
            }
            catch (Exception e) { Log.Write("Randomcar: " + e.Message, nLog.Type.Error); }
        }

        [Command("carlottery")]
        public static void CMD_FinishCompetition(Player player, int timeMS = 1000)
        {
            if (!Core.Group.CanUseCmd(player, "carlottery")) return;
            NAPI.Task.Run(() => {
                FinishCompetition(true);
                Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, "Вы вручную закончили розыгрыш автомобиля", 3000);
            }, timeMS);
        }

        public static void FinishCompetition(bool isSendAdmin = false)
        {
            try
            {
                if (DateTime.Now.Hour != 22 && !isSendAdmin && !CompleteFlag) return;
                if(MemberNames.Count < _minCountMembers)
                {
                    NAPI.Chat.SendChatMessageToAll("!{#fc4626} [Казино]: !{#ffffff}" + $"Из-за недостатка участников, розыгрыш автомобиля {vModel}, отменяется! Следующий розыгрыш завтра!");
                    MemberNames.Clear();
                    CompleteFlag = true;
                    return;
                }
                int rnd = new Random().Next(0, MemberNames.Count);
                string memberName = MemberNames[rnd];
                var vNumber = VehicleManager.Create(memberName, $"{vModel}", new Color(0, 0, 0), new Color(0, 0, 0), new Color(0, 0, 0));
                var house = Houses.HouseManager.GetHouse(memberName, true);
                if (house != null)
                {
                    if (house.GarageID != 0)
                    {
                        var garage = Houses.GarageManager.Garages[house.GarageID];
                        if (VehicleManager.getAllPlayerVehicles(memberName).Count < Houses.GarageManager.GarageTypes[garage.Type].MaxCars)
                        {
                            garage.SpawnCar(vNumber);
                        }
                    }
                }
                NAPI.Chat.SendChatMessageToAll("!{#fc4626} [Казино]: !{#ffffff}" + 
                    $"В розыгрыше автомобиля выиграл {memberName} и забрал {vModel} Поздравим! Следующий розыгрыш завтра!");
                MemberNames.Clear();
                CompleteFlag = true;
            }
            catch (Exception e) { Log.Write("RandomWinner: " + e.Message, nLog.Type.Error); }
        }
        public static void AcceptTakePart(Player player)
        {
            if (!isAccessToTakePart(player)) return;
            if (!Main.PlayerNames.ContainsValue(player.Name))
            {
                Notify.Send(player, NotifyType.Info, NotifyPosition.BottomCenter, "Вы не зарегистрированы на сервере", 3000);
                return;
            }
            if (!MoneySystem.Wallet.Change(player, -_price))
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "У вас недостаточно средств", 3000);
                return;
            }
            MemberNames.Add(player.Name);
            Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, "Вы приняли участие в розыгрыше!", 2500);
        }
        private static bool isAccessToTakePart(Player player)
        {
            if (MemberNames.Contains(player.Name))
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "Вы уже учавствуете в розыгрыше", 3000);
                return false;
            }
            if (CompleteFlag)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "Розыгрыш на сегодня закончен", 3000);
                return false;
            }
            return true;
        }
    }
}