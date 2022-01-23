using GTANetworkAPI;
using System.Collections.Generic;
using System;
using NeptuneEvo.Core;
using Redage.SDK;

namespace NeptuneEvo.Jobs
{
    class Diver : Script
    {
        private static int checkpointPayment = 290;
        private static int JobWorkId = 13;
        private static int JobsMinLVL = 2;

        private static int ColObjects = 5;
        private static nLog Log = new nLog("Diver");

        [ServerEvent(Event.ResourceStart)]
        public void Event_ResourceStart()
        {
            try
            {
                NAPI.Blip.CreateBlip(729, new Vector3(1695.163, 42.85501, 160.6473), 1.5f, 46, Main.StringToU16("Дайвер"), 255, 0, true, 0, 0); // Блип на карте
                NAPI.TextLabel.CreateTextLabel("~w~Приму вас на работу", new Vector3(1695.806, 43.05446, 162.9473), 30f, 0.3f, 0, new Color(255, 255, 255), true, NAPI.GlobalDimension); // Над головой у Ped
                //NAPI.Marker.CreateMarker(1, new Vector3(1695.163, 42.85501, 160.6473) - new Vector3(0, 0, 0.7), new Vector3(), new Vector3(), 1, new Color(255, 255, 255, 220)); //Начать рабочий день маркер
                var col = NAPI.ColShape.CreateCylinderColShape(new Vector3(1695.163, 42.85501, 160.6473), 1, 2, 0); // Меню которое открывается на 'E'

                col.OnEntityEnterColShape += (shape, player) => {
                    try
                    {
                        player.SetData("INTERACTIONCHECK", 510);
                        //Trigger.ClientEvent(player, "PressE", true);
                        Trigger.ClientEvent(player, "JobsEinfo");
                    }
                    catch (Exception ex) { Log.Write("col.OnEntityEnterColShape: " + ex.Message, nLog.Type.Error); }
                };
                col.OnEntityExitColShape += (shape, player) => {
                    try
                    {
                        player.ResetData("INTERACTIONCHECK");
                        //Trigger.ClientEvent(player, "PressE", false);
                        Trigger.ClientEvent(player, "JobsEinfo2");
                    }
                    catch (Exception ex) { Log.Write("col.OnEntityExitColShape: " + ex.Message, nLog.Type.Error); }
                };

                int i = 0;
                foreach (var Check in Checkpoints)
                {
                    col = NAPI.ColShape.CreateCylinderColShape(Check.Position, 1, 2, 0);
                    col.SetData("NUMBER2", i);
                    col.OnEntityEnterColShape += PlayerEnterCheckpoint;
                    i++;
                };

                int ii = 0;
                foreach (var Check in Checkpoints2)
                {
                    col = NAPI.ColShape.CreateCylinderColShape(Check.Position, 2, 2, 0);
                    col.SetData("NUMBER3", ii);
                    col.OnEntityEnterColShape += PlayerEnterCheckpoint;
                    ii++;
                };
            }
            catch (Exception e) { Log.Write("ResourceStart: " + e.Message, nLog.Type.Error); }
        }

        #region Чекпоинты
        private static List<Checkpoint> Checkpoints = new List<Checkpoint>()
        {
            new Checkpoint(new Vector3(1762.287, -19.40464, 154.4776), 206.6532), // Собрать мусор 0
            new Checkpoint(new Vector3(1857.945, 1.099715, 152.0033), 206.6532), // Собрать мусор 1
            new Checkpoint(new Vector3(1876.625, 104.593, 149.4533), 206.6532), // Собрать мусор 2
            new Checkpoint(new Vector3(1958.733, 112.7229, 152.9555), 206.6532), // Собрать мусор 3
            new Checkpoint(new Vector3(1971.705, 190.3279, 148.1627), 206.6532), // Собрать мусор 4
        };
        private static List<Checkpoint> Checkpoints2 = new List<Checkpoint>()
        {
            new Checkpoint(new Vector3(1695.163, 42.85501, 160.6473), 99.49088), // Отдать мусор 0
        };
        #endregion
        #region Объекты
        private static List<string> Objects = new List<string>()
        {
            "apa_mp_h_acc_bottle_01", // Собрать мусор 0
            "bkr_prop_clubhouse_laptop_01b", // Собрать мусор 1
            "bkr_prop_coke_boxeddoll", // Собрать мусор 2
            "prop_roadcone02b", // Собрать мусор 3
            "prop_mr_rasberryclean", // Собрать мусор 4
        };
        #endregion
        #region Меню которое нажимается на E
        public static void StartWorkDayDiver(Player player)
        {
            if (Main.Players[player].LVL < JobsMinLVL)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Необходим как минимум {JobsMinLVL} уровень", 3000);
                return;
            }

            //Trigger.ClientEvent(player, "PressE", false);
            Trigger.ClientEvent(player, "JobsEinfo2");
            Trigger.ClientEvent(player, "OpenDiver", checkpointPayment, Main.Players[player].LVL, Main.Players[player].WorkID, NAPI.Data.GetEntityData(player, "ON_WORK2"));

        }
        #endregion
        #region Устроться на работу
        [RemoteEvent("jobJoinDiver")]
        public static void callback_jobsSelecting(Player client, int act)
        {
            try
            {
                switch (act)
                {
                    case -1:
                        Layoff(client);
                        return;
                    default:
                        JobJoin(client);
                        return;
                }
            }
            catch (Exception e) { Log.Write("jobjoin: " + e.Message, nLog.Type.Error); }
        }
        public static void Layoff(Player player)
        {
            if (NAPI.Data.GetEntityData(player, "ON_WORK") == true)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы должны сначала закончить рабочий день", 3000);
                return;
            }
            if (Main.Players[player].WorkID != 0)
            {
                Main.Players[player].WorkID = 0;
                //Dashboard.sendStats(player);
                Notify.Send(player, NotifyType.Info, NotifyPosition.BottomCenter, $"Вы уволились с работы", 3000);
                var jobsid = Main.Players[player].WorkID;
                Trigger.ClientEvent(player, "secusejobDiver", jobsid);
                return;
            }
            else
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы никем не работаете", 3000);
        }
        public static void JobJoin(Player player)
        {
            if (NAPI.Data.GetEntityData(player, "ON_WORK") == true)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы должны сначала закончить рабочий день", 3000);
                return;
            }
            if (Main.Players[player].WorkID != 0)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы уже работаете: {Jobs.WorkManager.JobStats[Main.Players[player].WorkID - 1]}", 3000);
                return;
            }
            Main.Players[player].WorkID = JobWorkId;
            //Dashboard.sendStats(player);
            Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, $"Вы устроились на работу", 3000);
            var jobsid = Main.Players[player].WorkID;
            Trigger.ClientEvent(player, "secusejobDiver", jobsid);
            return;
        }
        #endregion
        #region Рандом Штаны и куртка Для мужиков
        private static List<string> SetClothes4 = new List<string>()
        {
            "0", // Штаны
            "1", // Штаны
            "2", // Штаны
            "3", // Штаны
        };
        private static List<string> SetClothes11 = new List<string>()
        {
            "0", // Куртка
            "1", // Куртка
            "2", // Куртка
            "3", // Куртка
        };
        #endregion
        #region Рандом Куртка и куртка Для девушек
        private static List<string> SetClothes4_2 = new List<string>()
        {
            "0", // Штаны
            "1", // Штаны
            "2", // Штаны
            "3", // Штаны
        };
        private static List<string> SetClothes11_2 = new List<string>()
        {
            "0", // Куртка
            "1", // Куртка
            "2", // Куртка
            "3", // Куртка
        };
        #endregion
        #region Начать рабочий день
        [RemoteEvent("enterJobDiver")]
        public static void ClientEvent_Diver(Player client, int act)
        {
            try
            {
                switch (act)
                {
                    case -1:
                        Layoff2(client);
                        return;
                    default:
                        JobJoin2(client, act);
                        return;
                }
            }
            catch (Exception e) { Log.Write("jobjoin: " + e.Message, nLog.Type.Error); }
        }
        public static void Layoff2(Player player)
        {
            if (NAPI.Data.GetEntityData(player, "ON_WORK") != false)
            {
                player.SetData("WORKCHECK_0", 0);
                player.SetData("WORKCHECK_1", 0);
                player.SetData("WORKCHECK_2", 0);
                player.SetData("WORKCHECK_3", 0);
                player.SetData("WORKCHECK_4", 0);
                Trigger.ClientEvent(player, "deleteJobMenusBlip", 0); // Удаляем блип
                Trigger.ClientEvent(player, "deleteJobMenusBlip", 1); // Удаляем блип
                Trigger.ClientEvent(player, "deleteJobMenusBlip", 2); // Удаляем блип
                Trigger.ClientEvent(player, "deleteJobMenusBlip", 3); // Удаляем блип
                Trigger.ClientEvent(player, "deleteJobMenusBlip", 4); // Удаляем блип
                Trigger.ClientEvent(player, "deleteObjectJobs", 0); // Удаляем объект
                Trigger.ClientEvent(player, "deleteObjectJobs", 1); // Удаляем объект
                Trigger.ClientEvent(player, "deleteObjectJobs", 2); // Удаляем объект
                Trigger.ClientEvent(player, "deleteObjectJobs", 3); // Удаляем объект
                Trigger.ClientEvent(player, "deleteObjectJobs", 4); // Удаляем объект

                Customization.ApplyCharacter(player);
                player.SetData("ON_WORK", false);
                player.SetData("ON_WORK2", 0);
                Trigger.ClientEvent(player, "deleteCheckpoint", 15);
                Trigger.ClientEvent(player, "deleteWorkBlip");
                player.SetData("PACKAGES", 0);

                MoneySystem.Wallet.Change(player, player.GetData<int>("PAYMENT"));
                Trigger.ClientEvent(player, "CloseJobStatsInfoDiver");
                Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, $"+ {player.GetData<int>("PAYMENT")}$", 3000);
                player.SetData("PAYMENT", 0);
                Trigger.ClientEvent(player, "stopdiving");
            }
            else
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы уже не работаете", 3000);
            }
        }
        public static void JobJoin2(Player player, int job)
        {
            if (Main.Players[player].WorkID != JobWorkId)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы не работаете на этой работе.", 3000);
                return;
            }
            if (NAPI.Data.GetEntityData(player, "ON_WORK") == true)
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Вы должны сначала закончить рабочий день", 3000);
                return;
            }
            // Одежда
            var RandomClothes4 = WorkManager.rnd.Next(0, SetClothes4.Count);
            var RandomClothes11 = WorkManager.rnd.Next(0, SetClothes11.Count);
            var RandomClothes4_2 = WorkManager.rnd.Next(0, SetClothes4_2.Count);
            var RandomClothes11_2 = WorkManager.rnd.Next(0, SetClothes11_2.Count);
            Customization.ClearClothes(player, Main.Players[player].Gender);
            if (Main.Players[player].Gender)
            {
                player.SetClothes(8, 151, 0); // Балон
                player.SetClothes(3, 17, 0); // Перчатки
                player.SetClothes(6, 67, 0); // Ласты
                player.SetClothes(11, 178, RandomClothes11); // Куртка
                player.SetClothes(4, 77, RandomClothes4); // Штаны
            }
            else
            {
                player.SetClothes(8, 187, 0); // Балон
                player.SetClothes(3, 18, 0); // Перчатки
                player.SetClothes(6, 70, 0); // Ласты
                player.SetClothes(11, 180, RandomClothes11_2); // Куртка
                player.SetClothes(4, 79, RandomClothes11_2); // Штаны
            }
            // Чекпоинты
            player.SetData("WORKCHECK_0", 0);
            player.SetData("WORKCHECK_1", 1);
            player.SetData("WORKCHECK_2", 2);
            player.SetData("WORKCHECK_3", 3);
            player.SetData("WORKCHECK_4", 4);
            Trigger.ClientEvent(player, "JobMenusBlip", 0, 66, Checkpoints[0].Position, "Мусор", 0);
            Trigger.ClientEvent(player, "JobMenusBlip", 1, 66, Checkpoints[1].Position, "Мусор", 0);
            Trigger.ClientEvent(player, "JobMenusBlip", 2, 66, Checkpoints[2].Position, "Мусор", 0);
            Trigger.ClientEvent(player, "JobMenusBlip", 3, 66, Checkpoints[3].Position, "Мусор", 0);
            Trigger.ClientEvent(player, "JobMenusBlip", 4, 66, Checkpoints[4].Position, "Мусор", 0);
            // Объекты
            //var ObjectsDiver_0 = NAPI.Object.CreateObject(NAPI.Util.GetHashKey(Objects[0]), Checkpoints[0].Position + new Vector3(0, 0, 1f), new Vector3(), 250, NAPI.Entity.GetEntityDimension(player));
            //player.SetData("OBJECTS_DIVER_0", ObjectsDiver_0);
            Trigger.ClientEvent(player, "createObjectJobs", 0, Objects[0], Checkpoints[0].Position.X, Checkpoints[0].Position.Y, Checkpoints[0].Position.Z);
            Trigger.ClientEvent(player, "createObjectJobs", 1, Objects[1], Checkpoints[1].Position.X, Checkpoints[1].Position.Y, Checkpoints[1].Position.Z);
            Trigger.ClientEvent(player, "createObjectJobs", 2, Objects[2], Checkpoints[2].Position.X, Checkpoints[2].Position.Y, Checkpoints[2].Position.Z);
            Trigger.ClientEvent(player, "createObjectJobs", 3, Objects[3], Checkpoints[3].Position.X, Checkpoints[3].Position.Y, Checkpoints[3].Position.Z);
            Trigger.ClientEvent(player, "createObjectJobs", 4, Objects[4], Checkpoints[4].Position.X, Checkpoints[4].Position.Y, Checkpoints[4].Position.Z);

            player.SetData("PACKAGES", ColObjects);
            player.SetData("OBJECTSJOB", 0);
            player.SetData("ON_WORK", true);
            player.SetData("ON_WORK2", job);
            Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, $"Вы начали рабочий день! На карте отмечены места с мусором. Соберите этот мусор.", 3000);
            Trigger.ClientEvent(player, "JobStatsInfoDiver", player.GetData<int>("PAYMENT"), player.GetData<int>("OBJECTSJOB"), ColObjects);
            Trigger.ClientEvent(player, "startdiving");
        }
        #endregion
        #region Когда заходишь в чекпоинт
        private static void PlayerEnterCheckpoint(ColShape shape, Player player)
        {
            try
            {
                if (!Main.Players.ContainsKey(player)) return;
                if (Main.Players[player].WorkID != JobWorkId || !player.GetData<bool>("ON_WORK")) return;

                if (player.GetData<int>("PACKAGES") != 0)
                {
                    if (player.GetData<int>("PACKAGES") != 1)
                    #region Если мусора больше чем 1
                    {
                        #region Нулевой чекпоинт
                        if (shape.GetData<int>("NUMBER2") == player.GetData<int>("WORKCHECK_0"))
                        {
                            Trigger.ClientEvent(player, "deleteObjectJobs", player.GetData<int>("WORKCHECK_0")); // Удаляем объект
                            Trigger.ClientEvent(player, "deleteJobMenusBlip", player.GetData<int>("WORKCHECK_0")); // Удаляем блип
                            player.SetData("WORKCHECK_0", 10);
                            player.SetData("PACKAGES", player.GetData<int>("PACKAGES") - 1); // Минусуем Пакет
                            player.SetData("OBJECTSJOB", player.GetData<int>("OBJECTSJOB") + 1); // Прибавляем объект
                            Trigger.ClientEvent(player, "JobStatsInfoDiver", player.GetData<int>("PAYMENT"), player.GetData<int>("OBJECTSJOB"), ColObjects);
                        }
                        #endregion
                        #region Первый чекпоинт
                        if (shape.GetData<int>("NUMBER2") == player.GetData<int>("WORKCHECK_1"))
                        {
                            Trigger.ClientEvent(player, "deleteObjectJobs", player.GetData<int>("WORKCHECK_1")); // Удаляем объект
                            Trigger.ClientEvent(player, "deleteJobMenusBlip", player.GetData<int>("WORKCHECK_1")); // Удаляем блип
                            player.SetData("WORKCHECK_1", 11);
                            player.SetData("PACKAGES", player.GetData<int>("PACKAGES") - 1); // Минусуем Пакет
                            player.SetData("OBJECTSJOB", player.GetData<int>("OBJECTSJOB") + 1); // Прибавляем объект
                            Trigger.ClientEvent(player, "JobStatsInfoDiver", player.GetData<int>("PAYMENT"), player.GetData<int>("OBJECTSJOB"), ColObjects);
                        }
                        #endregion
                        #region Второй чекпоинт
                        if (shape.GetData<int>("NUMBER2") == player.GetData<int>("WORKCHECK_2"))
                        {
                            Trigger.ClientEvent(player, "deleteObjectJobs", player.GetData<int>("WORKCHECK_2")); // Удаляем объект
                            Trigger.ClientEvent(player, "deleteJobMenusBlip", player.GetData<int>("WORKCHECK_2")); // Удаляем блип
                            player.SetData("WORKCHECK_2", 12);
                            player.SetData("PACKAGES", player.GetData<int>("PACKAGES") - 1); // Минусуем Пакет
                            player.SetData("OBJECTSJOB", player.GetData<int>("OBJECTSJOB") + 1); // Прибавляем объект
                            Trigger.ClientEvent(player, "JobStatsInfoDiver", player.GetData<int>("PAYMENT"), player.GetData<int>("OBJECTSJOB"), ColObjects);
                        }
                        #endregion
                        #region Третий чекпоинт
                        if (shape.GetData<int>("NUMBER2") == player.GetData<int>("WORKCHECK_3"))
                        {
                            Trigger.ClientEvent(player, "deleteObjectJobs", player.GetData<int>("WORKCHECK_3")); // Удаляем объект
                            Trigger.ClientEvent(player, "deleteJobMenusBlip", player.GetData<int>("WORKCHECK_3")); // Удаляем блип
                            player.SetData("WORKCHECK_3", 13);
                            player.SetData("PACKAGES", player.GetData<int>("PACKAGES") - 1); // Минусуем Пакет
                            player.SetData("OBJECTSJOB", player.GetData<int>("OBJECTSJOB") + 1); // Прибавляем объект
                            Trigger.ClientEvent(player, "JobStatsInfoDiver", player.GetData<int>("PAYMENT"), player.GetData<int>("OBJECTSJOB"), ColObjects);
                        }
                        #endregion
                        #region Четвёртый чекпоинт
                        if (shape.GetData<int>("NUMBER2") == player.GetData<int>("WORKCHECK_4"))
                        {
                            Trigger.ClientEvent(player, "deleteObjectJobs", player.GetData<int>("WORKCHECK_4")); // Удаляем объект
                            Trigger.ClientEvent(player, "deleteJobMenusBlip", player.GetData<int>("WORKCHECK_4")); // Удаляем блип
                            player.SetData("WORKCHECK_4", 14);
                            player.SetData("PACKAGES", player.GetData<int>("PACKAGES") - 1); // Минусуем Пакет
                            player.SetData("OBJECTSJOB", player.GetData<int>("OBJECTSJOB") + 1); // Прибавляем объект
                            Trigger.ClientEvent(player, "JobStatsInfoDiver", player.GetData<int>("PAYMENT"), player.GetData<int>("OBJECTSJOB"), ColObjects);
                        }
                        #endregion
                    }
                    #endregion
                    else
                    #region Если у вас 1 мусор срабатывает -1 и идём к 0
                    {
                        #region Нулевой чекпоинт
                        if (shape.GetData<int>("NUMBER2") == player.GetData<int>("WORKCHECK_0"))
                        {
                            Trigger.ClientEvent(player, "deleteObjectJobs", player.GetData<int>("WORKCHECK_0")); // Удаляем объект
                            Trigger.ClientEvent(player, "deleteJobMenusBlip", player.GetData<int>("WORKCHECK_0")); // Удаляем блип
                            player.SetData("WORKCHECK_0", 10);
                            player.SetData("PACKAGES", player.GetData<int>("PACKAGES") - 1); // Минусуем Пакет
                            player.SetData("OBJECTSJOB", player.GetData<int>("OBJECTSJOB") + 1); // Прибавляем объект
                            Trigger.ClientEvent(player, "JobStatsInfoDiver", player.GetData<int>("PAYMENT"), player.GetData<int>("OBJECTSJOB"), ColObjects);
                        }
                        #endregion
                        #region Первый чекпоинт
                        if (shape.GetData<int>("NUMBER2") == player.GetData<int>("WORKCHECK_1"))
                        {
                            Trigger.ClientEvent(player, "deleteObjectJobs", player.GetData<int>("WORKCHECK_1")); // Удаляем объект
                            Trigger.ClientEvent(player, "deleteJobMenusBlip", player.GetData<int>("WORKCHECK_1")); // Удаляем блип
                            player.SetData("WORKCHECK_1", 11);
                            player.SetData("PACKAGES", player.GetData<int>("PACKAGES") - 1); // Минусуем Пакет
                            player.SetData("OBJECTSJOB", player.GetData<int>("OBJECTSJOB") + 1); // Прибавляем объект
                            Trigger.ClientEvent(player, "JobStatsInfoDiver", player.GetData<int>("PAYMENT"), player.GetData<int>("OBJECTSJOB"), ColObjects);
                        }
                        #endregion
                        #region Второй чекпоинт
                        if (shape.GetData<int>("NUMBER2") == player.GetData<int>("WORKCHECK_2"))
                        {
                            Trigger.ClientEvent(player, "deleteObjectJobs", player.GetData<int>("WORKCHECK_2")); // Удаляем объект
                            Trigger.ClientEvent(player, "deleteJobMenusBlip", player.GetData<int>("WORKCHECK_2")); // Удаляем блип
                            player.SetData("WORKCHECK_2", 12);
                            player.SetData("PACKAGES", player.GetData<int>("PACKAGES") - 1); // Минусуем Пакет
                            player.SetData("OBJECTSJOB", player.GetData<int>("OBJECTSJOB") + 1); // Прибавляем объект
                            Trigger.ClientEvent(player, "JobStatsInfoDiver", player.GetData<int>("PAYMENT"), player.GetData<int>("OBJECTSJOB"), ColObjects);
                        }
                        #endregion
                        #region Третий чекпоинт
                        if (shape.GetData<int>("NUMBER2") == player.GetData<int>("WORKCHECK_3"))
                        {
                            Trigger.ClientEvent(player, "deleteObjectJobs", player.GetData<int>("WORKCHECK_3")); // Удаляем объект
                            Trigger.ClientEvent(player, "deleteJobMenusBlip", player.GetData<int>("WORKCHECK_3")); // Удаляем блип
                            player.SetData("WORKCHECK_3", 13);
                            player.SetData("PACKAGES", player.GetData<int>("PACKAGES") - 1); // Минусуем Пакет
                            player.SetData("OBJECTSJOB", player.GetData<int>("OBJECTSJOB") + 1); // Прибавляем объект
                            Trigger.ClientEvent(player, "JobStatsInfoDiver", player.GetData<int>("PAYMENT"), player.GetData<int>("OBJECTSJOB"), ColObjects);
                        }
                        #endregion
                        #region Четвёртый чекпоинт
                        if (shape.GetData<int>("NUMBER2") == player.GetData<int>("WORKCHECK_4"))
                        {
                            Trigger.ClientEvent(player, "deleteObjectJobs", player.GetData<int>("WORKCHECK_4")); // Удаляем объект
                            Trigger.ClientEvent(player, "deleteJobMenusBlip", player.GetData<int>("WORKCHECK_4")); // Удаляем блип
                            player.SetData("WORKCHECK_4", 14);
                            player.SetData("PACKAGES", player.GetData<int>("PACKAGES") - 1); // Минусуем Пакет
                            player.SetData("OBJECTSJOB", player.GetData<int>("OBJECTSJOB") + 1); // Прибавляем объект
                            Trigger.ClientEvent(player, "JobStatsInfoDiver", player.GetData<int>("PAYMENT"), player.GetData<int>("OBJECTSJOB"), ColObjects);
                        }
                        #endregion

                        if (player.GetData<int>("PACKAGES") == 0)
                        {
                            player.SetData("WORKCHECK", 0);
                            Trigger.ClientEvent(player, "createCheckpoint", 9, 1, Checkpoints2[0].Position, 5, 0, 255, 0, 0);
                            Trigger.ClientEvent(player, "createWorkBlip", Checkpoints2[0].Position);
                        }
                    }
                    #endregion
                }
                else
                {
                    #region Если у вас 0 мусора
                    if (shape.GetData<int>("NUMBER3") == player.GetData<int>("WORKCHECK"))
                    {
                        

                        Trigger.ClientEvent(player, "deleteCheckpoint", 9);
                        Trigger.ClientEvent(player, "deleteWorkBlip");
                        player.SetData("PACKAGES", ColObjects);
                        player.SetData("OBJECTSJOB", 0);
                        var payment = Convert.ToInt32(checkpointPayment * Group.GroupPayAdd[Main.Accounts[player].VipLvl] * Main.oldconfig.PaydayMultiplier);
                        player.SetData("PAYMENT", player.GetData<int>("PAYMENT") + payment);
                        Trigger.ClientEvent(player, "JobStatsInfoDiver", player.GetData<int>("PAYMENT"), player.GetData<int>("OBJECTSJOB"), ColObjects);

                        // Чекпоинты
                        player.SetData("WORKCHECK_0", 0);
                        player.SetData("WORKCHECK_1", 1);
                        player.SetData("WORKCHECK_2", 2);
                        player.SetData("WORKCHECK_3", 3);
                        player.SetData("WORKCHECK_4", 4);
                        Trigger.ClientEvent(player, "JobMenusBlip", 0, 66, Checkpoints[0].Position, "Мусор", 0);
                        Trigger.ClientEvent(player, "JobMenusBlip", 1, 66, Checkpoints[1].Position, "Мусор", 0);
                        Trigger.ClientEvent(player, "JobMenusBlip", 2, 66, Checkpoints[2].Position, "Мусор", 0);
                        Trigger.ClientEvent(player, "JobMenusBlip", 3, 66, Checkpoints[3].Position, "Мусор", 0);
                        Trigger.ClientEvent(player, "JobMenusBlip", 4, 66, Checkpoints[4].Position, "Мусор", 0);
                        // Объекты
                        //var ObjectsDiver_0 = NAPI.Object.CreateObject(NAPI.Util.GetHashKey(Objects[0]), Checkpoints[0].Position + new Vector3(0, 0, 1f), new Vector3(), 250, NAPI.Entity.GetEntityDimension(player));
                        //player.SetData("OBJECTS_DIVER_0", ObjectsDiver_0);
                        Trigger.ClientEvent(player, "createObjectJobs", 0, Objects[0], Checkpoints[0].Position.X, Checkpoints[0].Position.Y, Checkpoints[0].Position.Z);
                        Trigger.ClientEvent(player, "createObjectJobs", 1, Objects[1], Checkpoints[1].Position.X, Checkpoints[1].Position.Y, Checkpoints[1].Position.Z);
                        Trigger.ClientEvent(player, "createObjectJobs", 2, Objects[2], Checkpoints[2].Position.X, Checkpoints[2].Position.Y, Checkpoints[2].Position.Z);
                        Trigger.ClientEvent(player, "createObjectJobs", 3, Objects[3], Checkpoints[3].Position.X, Checkpoints[3].Position.Y, Checkpoints[3].Position.Z);
                        Trigger.ClientEvent(player, "createObjectJobs", 4, Objects[4], Checkpoints[4].Position.X, Checkpoints[4].Position.Y, Checkpoints[4].Position.Z);
                    }
                    #endregion
                }
            }
            catch (Exception e) { Log.Write("PlayerEnterCheckpoint: " + e.Message, nLog.Type.Error); }
        }
        #endregion
        #region Если игрок умер
        public static void Event_PlayerDeath(Player player, Player entityKiller, uint weapon)
        {
            try
            {
                if (!Main.Players.ContainsKey(player)) return;
                if (Main.Players[player].WorkID == JobWorkId && player.GetData<bool>("ON_WORK"))
                {
                    player.SetData("WORKCHECK_0", 0);
                    player.SetData("WORKCHECK_1", 0);
                    player.SetData("WORKCHECK_2", 0);
                    player.SetData("WORKCHECK_3", 0);
                    player.SetData("WORKCHECK_4", 0);
                    Trigger.ClientEvent(player, "deleteJobMenusBlip", 0); // Удаляем блип
                    Trigger.ClientEvent(player, "deleteJobMenusBlip", 1); // Удаляем блип
                    Trigger.ClientEvent(player, "deleteJobMenusBlip", 2); // Удаляем блип
                    Trigger.ClientEvent(player, "deleteJobMenusBlip", 3); // Удаляем блип
                    Trigger.ClientEvent(player, "deleteJobMenusBlip", 4); // Удаляем блип
                    Trigger.ClientEvent(player, "deleteObjectJobs", 0); // Удаляем объект
                    Trigger.ClientEvent(player, "deleteObjectJobs", 1); // Удаляем объект
                    Trigger.ClientEvent(player, "deleteObjectJobs", 2); // Удаляем объект
                    Trigger.ClientEvent(player, "deleteObjectJobs", 3); // Удаляем объект
                    Trigger.ClientEvent(player, "deleteObjectJobs", 4); // Удаляем объект

                    Customization.ApplyCharacter(player);
                    player.SetData("ON_WORK", false);
                    player.SetData("ON_WORK2", 0);
                    Trigger.ClientEvent(player, "deleteCheckpoint", 15);
                    Trigger.ClientEvent(player, "deleteWorkBlip");
                    player.SetData("PACKAGES", 0);

                    player.StopAnimation();
                    Main.OffAntiAnim(player);
                    BasicSync.DetachObject(player);
                    MoneySystem.Wallet.Change(player, player.GetData<int>("PAYMENT"));

                    Trigger.ClientEvent(player, "CloseJobStatsInfoDiver");
                    Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, $"+ {player.GetData<int>("PAYMENT")}$", 3000);
                    player.SetData("PAYMENT", 0);
                }
            }
            catch (Exception e) { Log.Write("PlayerDeath: " + e.Message, nLog.Type.Error); }
        }
        #endregion
        #region Если игрок вышел из игры или его кикнуло
        public static void Event_PlayerDisconnected(Player player, DisconnectionType type, string reason)
        {
            try
            {
                if (Main.Players[player].WorkID == JobWorkId && player.GetData<bool>("ON_WORK"))
                {
                    player.SetData("WORKCHECK_0", 0);
                    player.SetData("WORKCHECK_1", 0);
                    player.SetData("WORKCHECK_2", 0);
                    player.SetData("WORKCHECK_3", 0);
                    player.SetData("WORKCHECK_4", 0);
                    Trigger.ClientEvent(player, "deleteJobMenusBlip", 0); // Удаляем блип
                    Trigger.ClientEvent(player, "deleteJobMenusBlip", 1); // Удаляем блип
                    Trigger.ClientEvent(player, "deleteJobMenusBlip", 2); // Удаляем блип
                    Trigger.ClientEvent(player, "deleteJobMenusBlip", 3); // Удаляем блип
                    Trigger.ClientEvent(player, "deleteJobMenusBlip", 4); // Удаляем блип
                    Trigger.ClientEvent(player, "deleteObjectJobs", 0); // Удаляем объект
                    Trigger.ClientEvent(player, "deleteObjectJobs", 1); // Удаляем объект
                    Trigger.ClientEvent(player, "deleteObjectJobs", 2); // Удаляем объект
                    Trigger.ClientEvent(player, "deleteObjectJobs", 3); // Удаляем объект
                    Trigger.ClientEvent(player, "deleteObjectJobs", 4); // Удаляем объект

                    Customization.ApplyCharacter(player);
                    player.SetData("ON_WORK", false);
                    player.SetData("ON_WORK2", 0);
                    Trigger.ClientEvent(player, "deleteCheckpoint", 15);
                    Trigger.ClientEvent(player, "deleteWorkBlip");
                    player.SetData("PACKAGES", 0);

                    player.StopAnimation();
                    Main.OffAntiAnim(player);
                    BasicSync.DetachObject(player);
                    //MoneySystem.Wallet.Change(player, player.GetData("PAYMENT"));
                    player.SetData("PAYMENT", 0);
                }
            }
            catch (Exception e) { Log.Write("PlayerDisconnected: " + e.Message, nLog.Type.Error); }
        }
        #endregion
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
