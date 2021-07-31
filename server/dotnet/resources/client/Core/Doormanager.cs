using System;
using System.Collections.Generic;
using System.Text;
using GTANetworkAPI;
using Redage.SDK;

namespace NeptuneEvo.Core
{
    class Doormanager : Script
    {
        private static nLog Log = new nLog("Doormanager");

        [ServerEvent(Event.ResourceStart)]
        public void onResourceStart()
        {
            try
            {
                RegisterDoor(961976194, new Vector3(255.2283, 223.976, 102.3932)); // Система ограбления сейфа (хранилище).
                SetDoorLocked(0, true, 0);

                RegisterDoor(110411286, new Vector3(232.6054, 214.1584, 106.4049)); // Pacific Standard Bank Main Doors 1
                SetDoorLocked(1, true, 0);

                RegisterDoor(110411286, new Vector3(231.5123, 216.5177, 106.4049)); // Pacific Standard Bank Main Doors 2
                SetDoorLocked(2, true, 0);

                RegisterDoor(110411286, new Vector3(260.6432, 203.2052, 106.4049), 1); // Pacific Standard Bank Exit Doors 1
                SetDoorLocked(3, true, 0);

                RegisterDoor(110411286, new Vector3(258.2022, 204.1005, 106.4049), 1); // Pacific Standard Bank Exit Doors 2
                SetDoorLocked(4, true, 0);

                RegisterDoor(631614199, new Vector3(461.8065, -997.6583, 25.06443), 1); // LSPD police prison door
                SetDoorLocked(5, true, 0);

                RegisterDoor(-1663022887, new Vector3(150.8389, -1008.352, -98.85)); // Система отелей (закрытая дверь в интерьере).
                SetDoorLocked(6, true, 0);
            }
            catch (Exception e) { Log.Write("ResourceStart: " + e.Message, nLog.Type.Error); }
        }

        private static List<Door> allDoors = new List<Door>();
        public static int RegisterDoor(int model, Vector3 Position, int type = 0)
        {
            //NAPI.Blip.CreateBlip(456, Position, 0.7f, 1, Main.StringToU16($"Door {allDoors.Count}"), 254, 0, true, 0, 0);

            allDoors.Add(new Door(model, Position));
            var col = NAPI.ColShape.CreateCylinderColShape(Position, 5, 5, 0);
            col.SetData("DoorID", allDoors.Count - 1);
            col.OnEntityEnterColShape += Door_onEntityEnterColShape;

            /*
            switch (type)
            {
                default: break;
                case 1:
                    Door_CreateTextLabel(allDoors.Count - 1);
                    break;
            }
            */

            return allDoors.Count - 1;
        }

        /*
        private static void Door_CreateTextLabel(int id)
        {
            if (allDoors.Count < id + 1) return;

            Vector3 position = allDoors[id].Position;
            allDoors[id].Label = NAPI.TextLabel.CreateTextLabel(allDoors[id].Locked ? Main.StringToU16("~r~\uD83D\uDD12") : Main.StringToU16("~g~\uD83D\uDD12"), position, 5F, 0.125F, 4, new Color(255, 255, 255));
        }
        */

        private static void Door_onEntityEnterColShape(ColShape shape, Player entity)
        {
            try
            {
                if (NAPI.Entity.GetEntityType(entity) != EntityType.Player) return;

                NAPI.Task.Run(() =>
                {
                    var door = allDoors[shape.GetData<int>("DoorID")];
                    Trigger.ClientEvent(entity, "setDoorLocked", door.Model, door.Position.X, door.Position.Y, door.Position.Z, door.Locked, door.Angle);

                    Log.Debug($"setDoorLocked for {entity.Name} " + shape.GetData<int>("DoorID"), nLog.Type.Info);
                }, 250);
            }
            catch (Exception e) { Log.Write("Door_onEntityEnterColshape: " + e.ToString(), nLog.Type.Error); }
        }

        public static void SetDoorLocked(int id, bool locked, float angle)
        {
            if (allDoors.Count < id + 1) return;
            allDoors[id].Locked = locked;
            allDoors[id].Angle = angle;
            Main.ClientEventToAll("setDoorLocked", allDoors[id].Model, allDoors[id].Position.X, allDoors[id].Position.Y, allDoors[id].Position.Z, allDoors[id].Locked, allDoors[id].Angle);
        }

        public static bool GetDoorLocked(int id)
        {
            if (allDoors.Count < id + 1) return false;
            return allDoors[id].Locked;
        }

        internal class Door
        {
            public Door(int model, Vector3 position)
            {
                Model = model;
                Position = position;
                Locked = false;
                Angle = 50.0f;
            }

            public int Model { get; set; }
            public Vector3 Position { get; set; }
            public bool Locked { get; set; }
            public float Angle { get; set; }
            public TextLabel Label { get; set; }
        }
    }
}
