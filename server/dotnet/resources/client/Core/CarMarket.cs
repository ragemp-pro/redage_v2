using GTANetworkAPI;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using Redage.SDK;
using MySqlConnector;
using NeptuneEvo.Core;

namespace NeptuneEvo
{
    public class CarMarket : Script
    {
        private static nLog Log = new nLog("CarMarket");

        // internal static Dictionary<int, Dictionary<int, VehicleManager.VehicleCustomization> Custom = new Dictionary<int, Dictionary<int, VehicleManager.VehicleCustomization>();
        internal static Dictionary<string, VehicleManager.VehicleCustomization> Custom = new Dictionary<string, VehicleManager.VehicleCustomization>();

        public static Dictionary<int, Vehicle> CarBazar = new Dictionary<int, Vehicle>();
        public static Dictionary<int, Cars> CarsLoading = new Dictionary<int, Cars>();
        public static List<Vector3> CarsPositions = new List<Vector3>()
        {
            new Vector3(-604.55347-3.65*1, -2219.5598+2.75*1, 5.872997),
            new Vector3(-604.55347-3.65*2, -2219.5598+2.75*2, 5.872997),
            new Vector3(-604.55347-3.65*3, -2219.5598+2.75*3, 5.872997),
            new Vector3(-604.55347-3.65*4, -2219.5598+2.75*4, 5.872997),
            new Vector3(-604.55347-3.65*5, -2219.5598+2.75*5, 5.872997),
            new Vector3(-604.55347-3.65*6, -2219.5598+2.75*6, 5.872997),
            new Vector3(-604.55347-3.65*7, -2219.5598+2.75*7, 5.872997),
            new Vector3(-604.55347-3.65*8, -2219.5598+2.75*8, 5.872997),
            new Vector3(-604.55347-3.65*9, -2219.5598+2.75*9, 5.872997),
            new Vector3(-604.55347-3.65*10, -2219.5598+2.75*10, 5.872997),

            new Vector3(-591.0042-3.65*1, -2203.9932+2.75*1, 5.872997),
            new Vector3(-591.0042-3.65*2, -2203.9932+2.75*2, 5.872997),
            new Vector3(-591.0042-3.65*3, -2203.9932+2.75*3, 5.872997),
            new Vector3(-591.0042-3.65*4, -2203.9932+2.75*4, 5.872997),
            new Vector3(-591.0042-3.65*5, -2203.9932+2.75*5, 5.872997),
            new Vector3(-591.0042-3.65*6, -2203.9932+2.75*6, 5.872997),
            new Vector3(-591.0042-3.65*7, -2203.9932+2.75*7, 5.872997),
            new Vector3(-591.0042-3.65*8, -2203.9932+2.75*8, 5.872997),
            new Vector3(-591.0042-3.65*9, -2203.9932+2.75*9, 5.872997),
            new Vector3(-591.0042-3.65*10, -2203.9932+2.75*10, 5.872997),

            new Vector3(-575.0042-3.65*1, -2187.9932+2.75*1, 5.872997),
            new Vector3(-575.0042-3.65*2, -2187.9932+2.75*2, 5.872997),
            new Vector3(-575.0042-3.65*3, -2187.9932+2.75*3, 5.872997),
            new Vector3(-575.0042-3.65*4, -2187.9932+2.75*4, 5.872997),
            new Vector3(-575.0042-3.65*5, -2187.9932+2.75*5, 5.872997),
            new Vector3(-575.0042-3.65*6, -2187.9932+2.75*6, 5.872997),
            new Vector3(-575.0042-3.65*7, -2187.9932+2.75*7, 5.872997),
            new Vector3(-575.0042-3.65*8, -2187.9932+2.75*8, 5.872997),
            new Vector3(-575.0042-3.65*9, -2187.9932+2.75*9, 5.872997),
            new Vector3(-575.0042-3.65*10, -2187.9932+2.75*10, 5.872997),

            new Vector3(-559.0042-3.65*1, -2171.9932+2.75*1, 5.872997),
            new Vector3(-559.0042-3.65*2, -2171.9932+2.75*2, 5.872997),
            new Vector3(-559.0042-3.65*3, -2171.9932+2.75*3, 5.872997),
            new Vector3(-559.0042-3.65*4, -2171.9932+2.75*4, 5.872997),
            new Vector3(-559.0042-3.65*5, -2171.9932+2.75*5, 5.872997),
            new Vector3(-559.0042-3.65*6, -2171.9932+2.75*6, 5.872997),
            new Vector3(-559.0042-3.65*7, -2171.9932+2.75*7, 5.872997),
            new Vector3(-559.0042-3.65*8, -2171.9932+2.75*8, 5.872997),
            new Vector3(-559.0042-3.65*9, -2171.9932+2.75*9, 5.872997),
            new Vector3(-559.0042-3.65*10, -2171.9932+2.75*10, 5.872997),
        };

        [Command("dellmarket")]
        public void RemoveFromBazar(Player player, string number)
        {

            DataTable resultt = MySQL.QueryRead($"SELECT * FROM `autobazar` WHERE `number` = '{number}'");
            if (resultt == null || resultt.Rows.Count == 0) return;
            foreach (DataRow Row in resultt.Rows)
            {
                Cars data = new Cars
                {
                    Model = Convert.ToString(Row["model"]),
                    Number = Convert.ToString(Row["number"]),
                    Price = Convert.ToInt32(Row["price"]),
                    Holder = Convert.ToInt32(Row["holder"]),
                };
                var CarMarketID = Convert.ToInt32(Row["id"]);

                var CarMarketCar = CarsLoading[CarMarketID];
                MySqlCommand queryCommand = new MySqlCommand(@"DELETE FROM `autobazar` WHERE `number` = @VEH");
                queryCommand.Parameters.AddWithValue("@VEH", CarsLoading[CarMarketID].Number);
                MySQL.Query(queryCommand);
                DataTable res = MySQL.QueryRead($"SELECT * FROM `characters` WHERE `uuid` = '{data.Holder}'");
                var target_first = "";
                var target_second = "";
                var target_name = "";
                foreach (DataRow Rows in res.Rows)
                {
                    if (res == null || res.Rows.Count == 0) return;
                    target_first = Convert.ToString(Rows["firstname"]);
                    target_second = Convert.ToString(Rows["lastname"]);
                }
                target_name = target_first + "_" + target_second;
                CreateBazarVeh(target_name, CarMarketCar.Model, CarMarketCar.Number);
                VehicleManager.VehicleCustomization datatun = Custom[CarMarketCar.Number];

                /*VehicleManager.Vehicles[CarMarketCar.Number].Components.Muffler = datatun.Muffler;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.SideSkirt = datatun.SideSkirt;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Hood = datatun.Hood;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Spoiler = datatun.Spoiler;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Lattice = datatun.Lattice;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Wings = datatun.Wings;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Roof = datatun.Roof;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Vinyls = datatun.Vinyls;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.FrontBumper = datatun.FrontBumper;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.RearBumper = datatun.RearBumper;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Engine = datatun.Engine;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Turbo = datatun.Turbo;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Horn = datatun.Horn;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Transmission = datatun.Transmission;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.WindowTint = datatun.WindowTint;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Suspension = datatun.Suspension;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Brakes = datatun.Brakes;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Headlights = datatun.Headlights;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.NumberPlate = datatun.NumberPlate;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Wheels = datatun.Wheels;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.WheelsType = datatun.WheelsType;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.PrimColor = datatun.PrimColor;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.SecColor = datatun.SecColor;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.NeonColor = datatun.NeonColor;*/

                VehicleManager.VehicleData datacomp = VehicleManager.Vehicles[CarMarketCar.Number];
                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandText = "UPDATE `vehicles` SET components=@comp WHERE number=@numb";
                cmd.Parameters.AddWithValue("@numb", CarMarketCar.Number);
                cmd.Parameters.AddWithValue("@comp", JsonConvert.SerializeObject(datatun));
                MySQL.Query(cmd);

                Custom.Remove(CarMarketCar.Number);
                CarsLoading.Remove(CarMarketID);
                CarBazar[CarMarketID].Delete();
                CarBazar.Remove(CarMarketID);
                player.ResetData("CarMarket");
            }
        }

        [ServerEvent(Event.PlayerEnterVehicle)]
        public void onPlayerEnterVehicleHandler(Player player, Vehicle vehicle, sbyte seatid)
        {
            if (vehicle.HasSharedData("MarketID"))
            {
                Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "Нет доступа", 3000);
                player.WarpOutOfVehicle();
            }
        }
        [ServerEvent(Event.PlayerExitVehicle)]
        public void Bazar_onPlayerExitVehicle(Player player, Vehicle vehicle)
        {
            try
            {
                if (vehicle.HasSharedData("MarketID"))
                {
                    Trigger.ClientEvent(player, "closebazar");
                }

                if (player.HasData("BazarCarTest"))
                {
                    Vehicle veh = player.GetData<Vehicle>("BazarCarTest");
                    player.Position = veh.Position;
                    veh.Delete();
                    player.ResetData("BazarCarTest");
                    player.Dimension = 0;
                    OpenBazar(player);
                }
            }
            catch (Exception e) { Log.Write("BazarTestDrive: " + e.Message, nLog.Type.Error); }
        }

        public void OpenBazar(Player player)
        {
            var CarMarket = player.Vehicle.GetSharedData<int>("MarketID");
            DataTable resultt = MySQL.QueryRead($"SELECT * FROM `autobazar` WHERE `id` = '{CarMarket}'");
            if (resultt == null || resultt.Rows.Count == 0) return;
            foreach (DataRow Row in resultt.Rows)
            {
                Cars data = new Cars
                {
                    Model = Convert.ToString(Row["model"]),
                    Number = Convert.ToString(Row["number"]),
                    Price = Convert.ToInt32(Row["price"]),
                    Holder = Convert.ToInt32(Row["holder"]),
                };


                var target = Main.GetPlayerByUUID(data.Holder);
                var target_first = "Null";
                var target_second = "Null";
                if (target != null)
                {
                    target_first = Main.Players[target].FirstName;
                    target_second = Main.Players[target].LastName;
                }
                else
                {
                    DataTable res = MySQL.QueryRead($"SELECT * FROM `characters` WHERE `uuid` = '{data.Holder}'");
                    foreach (DataRow Rows in res.Rows)
                    {
                        if (res == null || res.Rows.Count == 0) return;
                        target_first = Convert.ToString(Rows["firstname"]);
                        target_second = Convert.ToString(Rows["lastname"]);
                    }

                }


                VehicleManager.VehicleCustomization datatun = Custom[data.Number];

                var engine = (datatun.Engine).ToString();
                if (engine == "-1") { engine = "Стандартный"; }
                else if (engine == "0") { engine = "Улучшение СУД, уровень 1"; }
                else if (engine == "1") { engine = "Улучшение СУД, уровень 2"; }
                else if (engine == "2") { engine = "Улучшение СУД, уровень 3"; }
                else if (engine == "3") { engine = "Улучшение СУД, уровень 4"; }

                var breaking = (datatun.Brakes).ToString();
                if (breaking == "-1") { breaking = "Стандартные"; }
                else if (breaking == "0") { breaking = "Полу-спортивные"; }
                else if (breaking == "1") { breaking = "Спортивные"; }
                else if (breaking == "2") { breaking = "Гоночные"; }

                var turbo = (datatun.Turbo).ToString();
                if (turbo == "-1") { turbo = "Нет"; } else { turbo = "Есть"; };

                var box = (datatun.Transmission).ToString();
                if (box == "-1") { box = "Стандартная"; }
                else if (box == "0") { box = "Полу-спортивная"; }
                else if (box == "1") { box = "Спортивная"; }
                else if (box == "2") { box = "Гоночная"; }

                var susp = (datatun.Suspension).ToString();
                if (susp == "-1") { susp = "Стандартная"; }
                else if (susp == "0") { susp = "Заниженная"; }
                else if (susp == "1") { susp = "Полу-спортивная"; }
                else if (susp == "2") { susp = "Спортивная"; }
                else if (susp == "3") { susp = "Раллийная"; }

                Trigger.ClientEvent(player, "openbazar", data.Model, data.Number, $"{data.Price}", turbo, engine, breaking, box, susp, $"{target_first} {target_second}");
            }
        }

        [ServerEvent(Event.ResourceStart)]
        public void onResourceStart()
        {
            NAPI.Blip.CreateBlip(490, new Vector3(-601.0428, -2228.1235, 4.9709), 1.7f, 0, Main.StringToU16("Автобазар"), 255, 0, true, 0, 0); // Блип на карте
            API.Shared.CreateTextLabel("~h~~g~- ~y~Автобазар~g~ -~w~~n~~n~FAQ (Нажмите Е)", new Vector3(-601.0428, -2228.1235, 5.9709 + 0.6f), 20.0f, 3f, 4, new Color(255, 255, 255, 255), false, 0);
            var MarketInfo = NAPI.ColShape.CreateCylinderColShape(new Vector3(-601.0428, -2228.1235, 4.9709), 3, 6, 0);
            MarketInfo.OnEntityEnterColShape += (s, p) =>
            {
                NAPI.Data.SetEntityData(p, "INTERACTIONCHECK", 99999);
            };
            MarketInfo.OnEntityExitColShape += (s, p) =>
            {
                NAPI.Data.SetEntityData(p, "INTERACTIONCHECK", 0);
            };

            var MarketShape = NAPI.ColShape.CreateCylinderColShape(new Vector3(-677.32043, -2234.262, 4.6850348), 5, 8, 0);
            MarketShape.OnEntityEnterColShape += (s, p) =>
            {
                NAPI.Data.SetEntityData(p, "INTERACTIONCHECK", 99998);
            };
            MarketShape.OnEntityExitColShape += (s, p) =>
            {
                NAPI.Data.SetEntityData(p, "INTERACTIONCHECK", 0);
            };

            MarketShape = NAPI.ColShape.CreateCylinderColShape(new Vector3(-701.7888, -2232.0925, 4.738958), 5, 8, 0);
            MarketShape.OnEntityEnterColShape += (s, p) =>
            {
                NAPI.Data.SetEntityData(p, "INTERACTIONCHECK", 99998);
            };
            MarketShape.OnEntityExitColShape += (s, p) =>
            {
                NAPI.Data.SetEntityData(p, "INTERACTIONCHECK", 0);
            };
            NAPI.Marker.CreateMarker(1, new Vector3(-677.32043, -2234.262, 4.6850348), new Vector3(), new Vector3(), 5f, new Color(227, 252, 252));
            NAPI.Marker.CreateMarker(1, new Vector3(-701.7888, -2232.0925, 4.738958), new Vector3(), new Vector3(), 5f, new Color(227, 252, 252));

            DataTable resultt = MySQL.QueryRead("SELECT * FROM `autobazar`");
            if (resultt == null || resultt.Rows.Count == 0) return;
            foreach (DataRow Row in resultt.Rows)
            {

                Cars data = new Cars
                {
                    ID = Convert.ToInt32(Row["id"]),
                    Model = Convert.ToString(Row["model"]),
                    Number = Convert.ToString(Row["number"]),
                    Tuning = JsonConvert.DeserializeObject<VehicleManager.VehicleCustomization>((string)Row["tuning"]),
                    Price = Convert.ToInt32(Row["price"]),
                    Holder = Convert.ToInt32(Row["holder"]),
                };

                Custom.Add(data.Number, data.Tuning);

                CarsLoading.Add(data.ID, data);
                string spawnveh = Convert.ToString(Row["model"]);
                VehicleHash vh = (VehicleHash)NAPI.Util.GetHashKey(spawnveh);
                var veh = NAPI.Vehicle.CreateVehicle(vh, CarsPositions[data.ID], -179, 0, 0);
                veh.SetSharedData("MarketID", data.ID);
                veh.NumberPlate = data.Number;
                veh.Locked = true;
                CarBazar.Add(data.ID, veh);

                VehicleManager.VehicleCustomization datatun = Custom[data.Number];

                if (datatun.NeonColor.Alpha != 0)
                {
                    NAPI.Vehicle.SetVehicleNeonState(veh, true);
                    NAPI.Vehicle.SetVehicleNeonColor(veh, datatun.NeonColor.Red, datatun.NeonColor.Green, datatun.NeonColor.Blue);
                }

                veh.SetMod(4, datatun.Muffler);
                veh.SetMod(3, datatun.SideSkirt);
                veh.SetMod(7, datatun.Hood);
                veh.SetMod(0, datatun.Spoiler);
                veh.SetMod(6, datatun.Lattice);
                veh.SetMod(8, datatun.Wings);
                veh.SetMod(10, datatun.Roof);
                veh.SetMod(48, datatun.Vinyls);
                veh.SetMod(1, datatun.FrontBumper);
                veh.SetMod(2, datatun.RearBumper);

                veh.SetMod(11, datatun.Engine);
                veh.SetMod(18, datatun.Turbo);
                veh.SetMod(13, datatun.Transmission);
                veh.SetMod(15, datatun.Suspension);
                veh.SetMod(12, datatun.Brakes);
                veh.SetMod(14, datatun.Horn);

                veh.WindowTint = datatun.WindowTint;
                veh.NumberPlateStyle = datatun.NumberPlate;

                NAPI.Vehicle.SetVehicleCustomPrimaryColor(veh, datatun.PrimColor.Red, datatun.PrimColor.Green, datatun.PrimColor.Blue);
                NAPI.Vehicle.SetVehicleCustomSecondaryColor(veh, datatun.SecColor.Red, datatun.SecColor.Green, datatun.SecColor.Blue);

                if (datatun.Headlights >= 0)
                {
                    veh.SetMod(22, 0);
                    veh.SetSharedData("hlcolor", datatun.Headlights);
                    Trigger.ClientEventInRange(veh.Position, 250f, "VehStream_SetVehicleHeadLightColor", veh.Handle, datatun.Headlights);
                }
                else
                {
                    veh.SetMod(22, -1);
                    veh.SetSharedData("hlcolor", 0);
                }

                veh.WheelType = datatun.WheelsType;
                veh.SetMod(23, datatun.Wheels);
            }

        }
        public static string CreateBazarVeh(string Holder, string Model, string Number, int Health = 1000, int Fuel = 100, int Price = 0)
        {
            VehicleManager.VehicleData data = new VehicleManager.VehicleData();
            data.Holder = Holder;
            data.Model = Model;
            data.Health = Health;
            data.Fuel = Fuel;
            data.Price = Price;
            data.Components = new VehicleManager.VehicleCustomization();
            data.Items = new List<nItem>();
            data.Dirt = 0.0F;

            VehicleManager.Vehicles.Add(Number, data);
            MySQL.Query("INSERT INTO `vehicles`(`number`, `holder`, `model`, `health`, `fuel`, `price`, `components`, `items`)" +
                $" VALUES ('{Number}','{Holder}','{Model}',{Health},{Fuel},{Price},'{JsonConvert.SerializeObject(data.Components)}','{JsonConvert.SerializeObject(data.Items)}')");
            Log.Write("Created new vehicle with number: " + Number);
            return Number;
        }

        [RemoteEvent("bazar:buy")]
        public static void BazarBuy(Player player)
        {
            var CarMarket = Main.Players[player].CarMarketPlayerData;
            DataTable resultt = MySQL.QueryRead($"SELECT * FROM `autobazar` WHERE `id` = '{CarMarket}'");
            if (resultt == null || resultt.Rows.Count == 0) return;
            foreach (DataRow Row in resultt.Rows)
            {
                Cars data = new Cars
                {
                    Model = Convert.ToString(Row["model"]),
                    Number = Convert.ToString(Row["number"]),
                    Price = Convert.ToInt32(Row["price"]),
                };
                player.ResetData("ByCard");
                Trigger.ClientEvent(player, "openDialog", "BUY_CAR_BAZAR", $"Вы покупаете {data.Model} с номерами {data.Number} за {data.Price} $. Чтобы купить нажмите Да");
            }
        }

        [RemoteEvent("bazar:buy:card")]
        public static void BazarBuy_Card(Player player)
        {
            var CarMarket = Main.Players[player].CarMarketPlayerData;
            DataTable resultt = MySQL.QueryRead($"SELECT * FROM `autobazar` WHERE `id` = '{CarMarket}'");
            if (resultt == null || resultt.Rows.Count == 0) return;
            foreach (DataRow Row in resultt.Rows)
            {
                Cars data = new Cars
                {
                    Model = Convert.ToString(Row["model"]),
                    Number = Convert.ToString(Row["number"]),
                    Price = Convert.ToInt32(Row["price"]),
                };
                player.SetData("ByCard", true);
                Trigger.ClientEvent(player, "openDialog", "BUY_CAR_BAZAR", $"Вы покупаете {data.Model} с номерами {data.Number} за {data.Price} $. Чтобы купить нажмите Да");
            }
        }
        [RemoteEvent("bazar:getback")]
        public static void GetBack(Player player)
        {

            var CarMarketID = Main.Players[player].CarMarketPlayerData;
            DataTable resultt = MySQL.QueryRead($"SELECT * FROM `autobazar` WHERE `id` = '{CarMarketID}'");
            if (resultt == null || resultt.Rows.Count == 0) return;
            foreach (DataRow Row in resultt.Rows)
            {
                Cars data = new Cars
                {
                    Model = Convert.ToString(Row["model"]),
                    Number = Convert.ToString(Row["number"]),
                    Price = Convert.ToInt32(Row["price"]),
                    Holder = Convert.ToInt32(Row["holder"]),
                };
                if (data.Holder == Main.Players[player].UUID)
                {
                    var CarMarketCar = CarsLoading[CarMarketID];
                    MySqlCommand queryCommand = new MySqlCommand(@"DELETE FROM `autobazar` WHERE `number` = @VEH");
                    queryCommand.Parameters.AddWithValue("@VEH", CarsLoading[CarMarketID].Number);
                    MySQL.Query(queryCommand);
                    CreateBazarVeh(player.Name, CarMarketCar.Model, CarMarketCar.Number);
                    VehicleManager.VehicleCustomization datatun = Custom[CarMarketCar.Number];

                    VehicleManager.Vehicles[CarMarketCar.Number].Components.Muffler = datatun.Muffler;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.SideSkirt = datatun.SideSkirt;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.Hood = datatun.Hood;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.Spoiler = datatun.Spoiler;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.Lattice = datatun.Lattice;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.Wings = datatun.Wings;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.Roof = datatun.Roof;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.Vinyls = datatun.Vinyls;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.FrontBumper = datatun.FrontBumper;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.RearBumper = datatun.RearBumper;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.Engine = datatun.Engine;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.Turbo = datatun.Turbo;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.Horn = datatun.Horn;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.Transmission = datatun.Transmission;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.WindowTint = datatun.WindowTint;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.Suspension = datatun.Suspension;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.Brakes = datatun.Brakes;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.Headlights = datatun.Headlights;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.NumberPlate = datatun.NumberPlate;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.Wheels = datatun.Wheels;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.WheelsType = datatun.WheelsType;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.PrimColor = datatun.PrimColor;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.SecColor = datatun.SecColor;
                    VehicleManager.Vehicles[CarMarketCar.Number].Components.NeonColor = datatun.NeonColor;

                    VehicleManager.VehicleData datacomp = VehicleManager.Vehicles[CarMarketCar.Number];
                    MySqlCommand cmd = new MySqlCommand();
                    cmd.CommandText = "UPDATE `vehicles` SET components=@comp WHERE number=@numb";
                    cmd.Parameters.AddWithValue("@numb", CarMarketCar.Number);
                    cmd.Parameters.AddWithValue("@comp", JsonConvert.SerializeObject(datatun));
                    MySQL.Query(cmd);


                    var house = Houses.HouseManager.GetHouse(player, true);
                    if (house != null)
                    {
                        var garage = Houses.GarageManager.Garages[house.GarageID];
                        garage.SpawnCar(CarMarketCar.Number);
                    }

                    Custom.Remove(CarMarketCar.Number);
                    CarsLoading.Remove(CarMarketID);
                    CarBazar[CarMarketID].Delete();
                    CarBazar.Remove(CarMarketID);
                    player.ResetData("CarMarket");

                    Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, $"Вы забрали свой автомобиль с продажи", 3000);
                }
                else
                {
                    Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Это не ваш автомобиль!", 3000);
                    return;
                }
            }
        }

        [RemoteEvent("bazar:testdrive")]
        public static void BazarTestDrive(Player player)
        {
            Vehicle veh = player.Vehicle;
            player.Dimension = (uint)Main.Players[player].UUID + 1;
            var vehicle = NAPI.Vehicle.CreateVehicle(veh.Model, veh.Position, -179, 1, 1, veh.NumberPlate, 255, false, true, player.Dimension);
            NAPI.Vehicle.SetVehicleEngineStatus(vehicle, true);
            player.SetData("BazarCarTest", vehicle);
            Trigger.ClientEvent(player, "closebazar");
            NAPI.Task.Run(() =>
            {
                try
                {
                    if (vehicle == null || player == null) return;
                    player.SetIntoVehicle(vehicle, 0);
                }
                catch { }
            }, 1550);
        }


        public static void interactPressed(Player player, int interact)
        {
            switch (interact)
            {
                case 99998:
                    if (!player.IsInVehicle) return;
                    if (player.Vehicle.NumberPlate == "ADMIN") return;
                    var mainowner = $"{Main.Players[player].FirstName}_{Main.Players[player].LastName}";
                    DataTable resulttt = MySQL.QueryRead($"SELECT holder FROM `vehicles` WHERE number = '{player.Vehicle.NumberPlate}'");
                    var holder = "Null";
                    foreach (DataRow Row in resulttt.Rows)
                    {
                        holder = Convert.ToString(Row["holder"]);
                    }
                    if (resulttt == null || resulttt.Rows.Count == 0 || holder != mainowner)
                    {
                        Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, $"Это не ваш автомобиль!", 3000);
                        return;
                    }
                    Trigger.ClientEvent(player, "openInput", "Выставить автомобиль на продажу", "Стоимость", 50, "sellcar_bazar");
                    return;
                case 99999:
                    Trigger.ClientEvent(player, "openbazarinfo_menu");
                    return;
            }
        }

        public static void vehicleSelected(Player player, Vehicle vehicle)
        {
            var CarMarket = vehicle.GetSharedData<int>("MarketID");
            DataTable resultt = MySQL.QueryRead($"SELECT * FROM `autobazar` WHERE `id` = '{CarMarket}'");
            if (resultt == null || resultt.Rows.Count == 0)
            {
                Notify.Send(player, NotifyType.Info, NotifyPosition.BottomCenter, "Автомобиль не стоит на автобазаре", 3000);
                return;
            }
            Main.Players[player].CarMarketPlayerData = CarMarket;
            foreach (DataRow Row in resultt.Rows)
            {
                Cars data = new Cars
                {
                    Model = Convert.ToString(Row["model"]),
                    Number = Convert.ToString(Row["number"]),
                    Price = Convert.ToInt32(Row["price"]),
                    Holder = Convert.ToInt32(Row["holder"]),
                };

                var target = Main.GetPlayerByUUID(data.Holder);
                var target_first = "Null";
                var target_second = "Null";
                if (target != null)
                {
                    target_first = Main.Players[target].FirstName;
                    target_second = Main.Players[target].LastName;
                }
                else
                {
                    DataTable res = MySQL.QueryRead($"SELECT * FROM `characters` WHERE `uuid` = '{data.Holder}'");
                    foreach (DataRow Rows in res.Rows)
                    {
                        if (res == null || res.Rows.Count == 0) return;
                        target_first = Convert.ToString(Rows["firstname"]);
                        target_second = Convert.ToString(Rows["lastname"]);
                    }

                }

                VehicleManager.VehicleCustomization datatun = Custom[data.Number];

                var engine = (datatun.Engine).ToString();
                if (engine == "-1") { engine = "Стандартный"; }
                else if (engine == "0") { engine = "Улучшение СУД, уровень 1"; }
                else if (engine == "1") { engine = "Улучшение СУД, уровень 2"; }
                else if (engine == "2") { engine = "Улучшение СУД, уровень 3"; }
                else if (engine == "3") { engine = "Улучшение СУД, уровень 4"; }

                var breaking = (datatun.Brakes).ToString();
                if (breaking == "-1") { breaking = "Стандартные"; }
                else if (breaking == "0") { breaking = "Полу-спортивные"; }
                else if (breaking == "1") { breaking = "Спортивные"; }
                else if (breaking == "2") { breaking = "Гоночные"; }

                var turbo = (datatun.Turbo).ToString();
                if (turbo == "-1") { turbo = "Нет"; } else { turbo = "Есть"; };

                var box = (datatun.Transmission).ToString();
                if (box == "-1") { box = "Стандартная"; }
                else if (box == "0") { box = "Полу-спортивная"; }
                else if (box == "1") { box = "Спортивная"; }
                else if (box == "2") { box = "Гоночная"; }

                var susp = (datatun.Suspension).ToString();
                if (susp == "-1") { susp = "Стандартная"; }
                else if (susp == "0") { susp = "Заниженная"; }
                else if (susp == "1") { susp = "Полу-спортивная"; }
                else if (susp == "2") { susp = "Спортивная"; }
                else if (susp == "3") { susp = "Раллийная"; }

                Trigger.ClientEvent(player, "openbazar", data.Model, data.Number, $"{data.Price}", turbo, engine, breaking, box, susp, $"{target_first} {target_second}");
            }
        }

        public static bool DialogYes(Player player)
        {
            try
            {

                var CarMarketID = Main.Players[player].CarMarketPlayerData;
                var CarMarketCar = CarsLoading[CarMarketID];
                DataTable resultt = MySQL.QueryRead($"SELECT * FROM `autobazar` WHERE `id` = '{CarMarketID}'");
                if (resultt == null || resultt.Rows.Count == 0) return false ;
                foreach (DataRow Row in resultt.Rows)
                {
                    Cars data = new Cars
                    {
                        ID = Convert.ToInt32(Row["id"]),
                        Model = Convert.ToString(Row["model"]),
                        Number = Convert.ToString(Row["number"]),
                        Price = Convert.ToInt32(Row["price"]),
                        Holder = Convert.ToInt32(Row["holder"]),
                    };
                }
                if (player.HasData("ByCard"))
                {
                    if (!MoneySystem.Bank.Change(Main.Players[player].Bank, -CarMarketCar.Price))
                    {
                        Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "У Вас недостаточно средств", 3000);
                        return true;
                    }
                }
                else
                {
                    if (!MoneySystem.Wallet.Change(player, -CarMarketCar.Price))
                    {
                        Notify.Send(player, NotifyType.Error, NotifyPosition.BottomCenter, "У Вас недостаточно средств", 3000);
                        return true;
                    }
                }
                MySqlCommand queryCommand = new MySqlCommand(@"DELETE FROM `autobazar` WHERE `number` = @VEH");
                queryCommand.Parameters.AddWithValue("@VEH", CarsLoading[CarMarketID].Number);
                MySQL.Query(queryCommand);

                DataTable resultttt = MySQL.QueryRead($"SELECT money FROM `characters` WHERE `uuid` = '{CarMarketCar.Holder}'");

                if (resultttt == null || resultttt.Rows.Count == 0) return false;
                int havemoney = 0;
                foreach (DataRow Row in resultttt.Rows)
                {
                    {
                        havemoney = Convert.ToInt32(Row["money"]);
                    };
                }

                Player target = Main.GetPlayerByUUID(CarMarketCar.Holder);

                if (target == null)
                {
                    MySQL.Query($"UPDATE `characters` SET money={havemoney + CarMarketCar.Price} WHERE uuid = {CarMarketCar.Holder}");
                    GameLog.Money($"CarMarket", $"{CarMarketCar.Holder} sell car to ({Main.Players[player].UUID})", CarMarketCar.Price, $"CarMarketSell");
                    // GameLog.Money($"CarMarket", $"{Players[target].UUID} sell car to ({Players[player].UUID})", CarMarketCar.Price, $"CarMarketSell");
                }
                else
                {
                    MoneySystem.Wallet.Change(target, CarMarketCar.Price);
                    GameLog.Money($"CarMarket", $"{CarMarketCar.Holder} sell car to ({Main.Players[player].UUID})", CarMarketCar.Price, $"CarMarketSell");
                    Notify.Send(target, NotifyType.Success, NotifyPosition.BottomCenter, $"У вас приоберли {CarMarketCar.Model} с номерами {CarMarketCar.Number} за {CarMarketCar.Price}$", 3000);
                }



                Notify.Send(player, NotifyType.Success, NotifyPosition.BottomCenter, $"Вы приоберли {CarMarketCar.Model} с номерами {CarMarketCar.Number} за {CarMarketCar.Price}$", 3000);
                GameLog.Money($"CarMarket", $"player({Main.Players[player].UUID})", -CarMarketCar.Price, $"CarMarketBuy");

                CreateBazarVeh(player.Name, CarMarketCar.Model, CarMarketCar.Number);
                VehicleManager.VehicleCustomization datatun = Custom[CarMarketCar.Number];

                VehicleManager.Vehicles[CarMarketCar.Number].Components.Muffler = datatun.Muffler;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.SideSkirt = datatun.SideSkirt;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Hood = datatun.Hood;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Spoiler = datatun.Spoiler;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Lattice = datatun.Lattice;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Wings = datatun.Wings;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Roof = datatun.Roof;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Vinyls = datatun.Vinyls;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.FrontBumper = datatun.FrontBumper;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.RearBumper = datatun.RearBumper;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Engine = datatun.Engine;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Turbo = datatun.Turbo;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Horn = datatun.Horn;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Transmission = datatun.Transmission;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.WindowTint = datatun.WindowTint;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Suspension = datatun.Suspension;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Brakes = datatun.Brakes;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Headlights = datatun.Headlights;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.NumberPlate = datatun.NumberPlate;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.Wheels = datatun.Wheels;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.WheelsType = datatun.WheelsType;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.PrimColor = datatun.PrimColor;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.SecColor = datatun.SecColor;
                VehicleManager.Vehicles[CarMarketCar.Number].Components.NeonColor = datatun.NeonColor;

                VehicleManager.VehicleData datacomp = VehicleManager.Vehicles[CarMarketCar.Number];
                MySqlCommand cmd = new MySqlCommand();
                cmd.CommandText = "UPDATE `vehicles` SET components=@comp WHERE number=@numb";
                cmd.Parameters.AddWithValue("@numb", CarMarketCar.Number);
                cmd.Parameters.AddWithValue("@comp", JsonConvert.SerializeObject(datatun));
                MySQL.Query(cmd);

                var house = Houses.HouseManager.GetHouse(player, true);
                if (house != null)
                {
                    var garage = Houses.GarageManager.Garages[house.GarageID];
                    garage.SpawnCar(CarMarketCar.Number);
                }

                Custom.Remove(CarMarketCar.Number);
                CarsLoading.Remove(CarMarketID);
                CarBazar[CarMarketID].Delete();
                CarBazar.Remove(CarMarketID);
                player.ResetData("CarMarket");
                Trigger.ClientEvent(player, "closebazar");

                return true;
            }
            catch (Exception e) { Log.Write("BUY_CAR_BAZAR: " + e.Message, nLog.Type.Error); return false; }
        }
    }

    public class Cars
    {
        public int ID { get; set; }
        public int Price { get; set; }
        public string Model { get; set; }
        public string Number { get; set; }
        public int Holder { get; set; }
        internal VehicleManager.VehicleCustomization Tuning { get; set; }
    }

}
