using GTANetworkAPI;
using Redage.SDK;

namespace NeptuneEvo.Core
{
    public class CarRepair : Script
    {
        // Цена за починку авто
        public static int CostForRepair = 1500;

        public static void InteractPress(Player player)
        {
            if (!Main.Players.ContainsKey(player)) return;

            if (!player.IsInVehicle || player.IsInVehicle && player.VehicleSeat != 0)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы должны находиться в машине на водительском месте", 3000);
                return;
            }
            Trigger.ClientEvent(player, "openDialog", "CAR_REPAIR", $"Вы хотите отремонтировать машину за {CostForRepair}?");
        }

        public static void BuyRepair(Player player)
        {
            if (!player.IsInVehicle || player.IsInVehicle && player.VehicleSeat != 0) return;
            if (player.GetData<int>("BIZ_ID") == -1) return;

            Business biz = BusinessManager.BizList[player.GetData<int>("BIZ_ID")];
            if (biz.Type != 18)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "Вы должны находится возле бизнеса (Ремонт-Авто)", 3000);
                return;
            }

            if (Main.Players[player].Money < CostForRepair)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "Недостаточно средств", 3000);
                return;
            }

            if (!BusinessManager.takeProd(biz.ID, 10, "Запчасти", CostForRepair))
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "На складе бизнеса недостаточно запчастей", 3000);
                return;
            }

            MoneySystem.Wallet.Change(player, -CostForRepair);
            GameLog.Money($"player({Main.Players[player].UUID})", $"biz({biz.ID})", CostForRepair, $"CarRepair");

            NAPI.Vehicle.RepairVehicle(NAPI.Player.GetPlayerVehicle(player));
            Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, "Ваш транспорт был отремонтирован.", 3000);
        }
    }
}