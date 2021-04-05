using System;
using System.Linq;
using GTANetworkAPI;
using Redage.SDK;
using System.Collections.Generic;

namespace NeptuneEvo.Casino
{
    class LuckyWheel : Script
    {
        #region Modules
        private static Random Rnd = new Random();
        private static nLog Log = new nLog("LuckyWheel");
        private static DateTime WaitFor { get; set; }
        private static int BlockTimeSeconds { get; } = 21;

        private static void ComeToLuckyWheel(Player player)
        {
            if (DateTime.Now < WaitFor)
            {
                // Ждем пока колесо остановится (Завязано на таймере)
                player.SendNotification("Вам надо немного подождать");
                return;
            }
            else if (!MoneySystem.Wallet.ChangeLuckyWheelSpins(player, -1))
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "У вас недостаточно попыток прокрутки!", 3000);
                return;
            }
            else
            {
                // Присваимваем рандомное значение для колеса
                WaitFor = DateTime.Now.AddSeconds(BlockTimeSeconds);
                int value = Rnd.Next(0, 20);
                player.SetSharedData("LUCKY_WHEEL_CALL", true);
                player.SetSharedData("LUCKY_WHEEL_WIN", value);
                player.StopAnimation();
                Main.OnAntiAnim(player);
                Trigger.ClientEvent(player, "luckywheel.cometoluckywheel", value);
            }
        }
        private static void SpinLuckyWheel(Player player)
        {
            if (player.HasSharedData("LUCKY_WHEEL_WIN") && player.HasSharedData("LUCKY_WHEEL_CALL"))
            {
                player.SetSharedData("LUCKY_WHEEL_CALL", true);
                Trigger.ClientEventInRange(player.Position, 100, "luckywheel.spin", player.GetSharedData<int>("LUCKY_WHEEL_WIN"));
            }
        }
        private static void FinishSpin(Player player)
        {
            if (player.HasSharedData("LUCKY_WHEEL_WIN") && player.HasSharedData("LUCKY_WHEEL_CALL"))
            {
                string resultName = "Приз";
                switch (player.GetSharedData<int>("LUCKY_WHEEL_WIN"))
                {
                    case 0:
                    case 8:
                    case 12:
                    case 16:
                        resultName = "Одежда";
                        GiveOutPrizeClothes(player);
                        break;
                    case 2:
                    case 6:
                    case 14:
                    case 19:
                        int price = Rnd.Next(20000, 200000);
                        resultName = $"Игровая валюта в размере {price}$";
                        MoneySystem.Wallet.Change(player, price);
                        break;
                    case 18:
                        resultName = "Эксклюзивная машина";
                        GiveOutPrizeVehicle(player);
                        break;
                    case 1:
                    case 5:
                    case 9:
                    case 13:
                    case 17:
                        resultName = "Мистический предмет";
                        GiveOutPrizeMysticItem(player);
                        break;
                    case 3:
                    case 7:
                    case 10:
                    case 15:
                        resultName = "Оружие";
                        GiveOutPrizeWeapon(player);
                        break;
                    case 11:
                        resultName = "Уникальный костюм";
                        GiveOutPrizeCostume(player);
                        break;
                    case 4:
                        int donateCoins = Rnd.Next(50, 500);
                        resultName = $"Донат валюта в размере{donateCoins} RedBucks";
                        MoneySystem.Wallet.ChangeDonateBalance(player, donateCoins);
                        break;
                }
                Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, $"Выигрыш: {resultName}. Поздравляем!", 3000);
                Main.OffAntiAnim(player);
                player.ResetSharedData("LUCKY_WHEEL_CALL");
                player.ResetSharedData("LUCKY_WHEEL_WIN");
            }
        }
        #region Compensations
        // Выплачиваемые компенсации, при ошибке выдачи призов
        private static Dictionary<string, int> amountCompensations = new Dictionary<string, int>()
        {
            { "weapon", 30000 },
            { "mystic", 15000 },
            { "vehicle", 50000 },
            { "clothes", 20000 }
        };
        private static void GiveOutPrizeCostume(Player player)
        {
            Core.Customization.AddClothes(player, ItemType.Top, 178, 0);
            Core.Customization.AddClothes(player, ItemType.Leg, 77, 0);
            Core.Customization.AddClothes(player, ItemType.Feet, 55, 0);
        }
        private static void GiveOutPrizeWeapon(Player player)
        {
            int amountCompensation = amountCompensations["weapon"];
            int randomInt = Rnd.Next(0, 4);
            int tryAdd;
            switch (randomInt)
            {
                case 0:
                    tryAdd = Core.nInventory.TryAdd(player, new nItem(ItemType.Bat));
                    if (tryAdd == -1 || tryAdd > 0)
                    {
                        Notify.Send(player, NotifyType.Alert, NotifyPosition.BottomCenter, $"Недостаточно места, вам выдана компенсация {amountCompensation}$", 3000);

                        MoneySystem.Wallet.Change(player, amountCompensation);
                        return;
                    }
                    Core.Weapons.GiveWeapon(player, ItemType.Bat, "luckywheel");
                    break;
                case 1:
                    tryAdd = Core.nInventory.TryAdd(player, new nItem(ItemType.HeavyPistol));
                    if (tryAdd == -1 || tryAdd > 0)
                    {
                        Notify.Send(player, NotifyType.Alert, NotifyPosition.BottomCenter, $"Недостаточно места, вам выдана компенсация {amountCompensation}$", 3000);
                        MoneySystem.Wallet.Change(player, amountCompensation);
                        return;
                    }
                    Core.Weapons.GiveWeapon(player, ItemType.HeavyPistol, "luckywheel");
                    break;
                case 2:
                    tryAdd = Core.nInventory.TryAdd(player, new nItem(ItemType.Musket));
                    if (tryAdd == -1 || tryAdd > 0)
                    {
                        Notify.Send(player, NotifyType.Alert, NotifyPosition.BottomCenter, $"Недостаточно места, вам выдана компенсация {amountCompensation}$", 3000);
                        MoneySystem.Wallet.Change(player, amountCompensation);
                        return;
                    }
                    Core.Weapons.GiveWeapon(player, ItemType.Musket, "luckywheel");
                    break;
                case 3:
                    tryAdd = Core.nInventory.TryAdd(player, new nItem(ItemType.AdvancedRifle));
                    if (tryAdd == -1 || tryAdd > 0)
                    {
                        Notify.Send(player, NotifyType.Alert, NotifyPosition.BottomCenter, $"Недостаточно места, вам выдана компенсация {amountCompensation}$", 3000);
                        MoneySystem.Wallet.Change(player, amountCompensation);
                        return;
                    }
                    Core.Weapons.GiveWeapon(player, ItemType.AdvancedRifle, "luckywheel");
                    break;
            }
        }
        private static void GiveOutPrizeMysticItem(Player player)
        {
            int amountCompensation = amountCompensations["mystic"];
            int randomInt = Rnd.Next(0, 5);
            int tryAdd;
            switch (randomInt)
            {
                case 0:
                    tryAdd = Core.nInventory.TryAdd(player, new nItem(ItemType.Flashlight));
                    if (tryAdd == -1 || tryAdd > 0)
                    {
                        Notify.Send(player, NotifyType.Alert, NotifyPosition.BottomCenter, $"Недостаточно места, вам выдана компенсация {amountCompensation}$", 3000);
                        MoneySystem.Wallet.Change(player, amountCompensation);
                        return;
                    }
                    Core.Weapons.GiveWeapon(player, ItemType.Flashlight, "luckywheel");
                    break;
                case 1:
                    tryAdd = Core.nInventory.TryAdd(player, new nItem(ItemType.BattleAxe));
                    if (tryAdd == -1 || tryAdd > 0)
                    {
                        Notify.Send(player, NotifyType.Alert, NotifyPosition.BottomCenter, $"Недостаточно места, вам выдана компенсация {amountCompensation}$", 3000);
                        MoneySystem.Wallet.Change(player, amountCompensation);
                        return;
                    }
                    Core.Weapons.GiveWeapon(player, ItemType.BattleAxe, "luckywheel");
                    break;
                case 2:
                    tryAdd = Core.nInventory.TryAdd(player, new nItem(ItemType.FlareGun));
                    if (tryAdd == -1 || tryAdd > 0)
                    {
                        Notify.Send(player, NotifyType.Alert, NotifyPosition.BottomCenter, $"Недостаточно места, вам выдана компенсация {amountCompensation}$", 3000);
                        MoneySystem.Wallet.Change(player, amountCompensation);
                        return;
                    }
                    Core.Weapons.GiveWeapon(player, ItemType.FlareGun, "luckywheel");
                    break;
                case 3:
                    tryAdd = Core.nInventory.TryAdd(player, new nItem(ItemType.StunGun));
                    if (tryAdd == -1 || tryAdd > 0)
                    {
                        Notify.Send(player, NotifyType.Alert, NotifyPosition.BottomCenter, $"Недостаточно места, вам выдана компенсация {amountCompensation}$", 3000);
                        MoneySystem.Wallet.Change(player, amountCompensation);
                        return;
                    }
                    Core.Weapons.GiveWeapon(player, ItemType.StunGun, "luckywheel");
                    break;
            }
        }
        private static void GiveOutPrizeVehicle(Player player)
        {
            int amountCompensation = amountCompensations["vehicle"];
            int cars = new Random().Next(0, 4);
            string model = null;
            switch (cars)
            {
                case 0:
                    model = "baller3";
                    break;
                case 1:
                    model = "cheburek";
                    break;
                case 2:
                    model = "furia";
                    break;
                case 3:
                    model = "vigilante";
                    break;
            }
            if (Core.VehicleManager.getAllPlayerVehicles(player.Name).Count >= Houses.GarageManager.GarageTypes.Values.Last().MaxCars)
            {
                MoneySystem.Wallet.Change(player, amountCompensation);
                Notify.Send(player, NotifyType.Alert, NotifyPosition.BottomCenter, $"Вы получили компенсацию в размере {amountCompensation}$ так как у вас максимальное количество авто", 3000);
            }
            else
            {
                var vNumber = Core.VehicleManager.Create(player.Name, model, new Color(0, 0, 0), new Color(0, 0, 0), new Color(0, 0, 0));
                var house = Houses.HouseManager.GetHouse(player, false);
                if (house != null)
                {
                    if (house.GarageID != 0)
                    {
                        var garage = Houses.GarageManager.Garages[house.GarageID];
                        if (Core.VehicleManager.getAllPlayerVehicles(player.Name).Count < Houses.GarageManager.GarageTypes[garage.Type].MaxCars)
                        {
                            garage.SpawnCar(vNumber);
                        }
                    }
                }
                Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, $"Вы получили уникальный автомобиль {model}.", 3000);
            }
        }
        private static void GiveOutPrizeClothes(Player player)
        {
            int amountCompensation = amountCompensations["clothes"];
            var tryAdd = Core.nInventory.TryAdd(player, new nItem(ItemType.Hat));
            if (tryAdd == -1 || tryAdd > 0)
            {
                Notify.Send(player, NotifyType.Alert, NotifyPosition.BottomCenter, $"Недостаточно места, вам выдана компенсация {amountCompensation}$", 3000);
                MoneySystem.Wallet.Change(player, amountCompensation);
                return;
            }
            int cloth = Rnd.Next(0, 4);
            switch (cloth)
            {
                case 0:
                    Core.Customization.AddClothes(player, ItemType.Hat, 77, 0);
                    break;
                case 1:
                    Core.Customization.AddClothes(player, ItemType.Hat, 40, 0);
                    break;
                case 2:
                    Core.Customization.AddClothes(player, ItemType.Hat, 22, 0);
                    break;
                case 3:
                    Core.Customization.AddClothes(player, ItemType.Hat, 42, 0);
                    break;
            }
        }
        #endregion
        #endregion

        #region Events
        [RemoteEvent("luckywheel.cometoluckywheel")]
        public static void ComeToLuckyWheel_Event(Player player)
        {
            ComeToLuckyWheel(player);
        }

        [RemoteEvent("luckywheel.spin")]
        public static void SpinLuckyWheel_Event(Player player)
        {
            SpinLuckyWheel(player);
        }

        [RemoteEvent("luckywheel.finishspin")]
        public static void FinishSpin_Event(Player player)
        {
            FinishSpin(player);
        }
        #endregion

        #region Commands
        [Command("givewheelspins")]
        public static void CMD_GiveLuckyWheelSpinsToPlayer(Player player, int id = -1, int value = 1)
        {
            if (!Core.Group.CanUseCmd(player, "givewheelspins")) return;

            Player target;
            if(id == -1)
            {
                target = player;
            }
            else
            {
                target = Main.GetPlayerByID(id);
                if (target == null)
                {
                    Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "Игрок с таким ID не найден", 3000);
                    return;
                }
            }
            MoneySystem.Wallet.ChangeLuckyWheelSpins(target, value);
            
        }
        #endregion
    }
}
