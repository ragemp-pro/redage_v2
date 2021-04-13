using GTANetworkAPI;
using NeptuneEvo.Houses;
using Redage.SDK;
using System;
using System.Collections.Generic;
using System.Data;

namespace NeptuneEvo.Families
{
    public class Family
    {
        private static readonly nLog Log = new nLog("Family");
        private static readonly Random Rnd = new Random();

        public string FamilyCID { get; set; }
        public string Name { get; set; }
        public int Leader { get; set; }
        public int FamilyHouse { get; set; }
        public int MaxPlayers { get; set; }
        public string ImageURL { get; set; }
        public string Desc_1 { get; set; }
        public string Desc_2 { get; set; }

        public List<Member> Players = new List<Member>();
        public List<Ranks> AllRanks = new List<Ranks>();
        public Family(string familycid, string name, int leader, int house, int maxplayers = 10, string imgurl = null)
        {
            FamilyCID = familycid;
            Name = name;
            Leader = leader;
            FamilyHouse = house;
            MaxPlayers = maxplayers;
            ImageURL = imgurl;
        }

        public static int CreateFamilies(Player player, string name, int maxpl, string img)
        {
            try
            {
                House pHouse = HouseManager.Houses.Find(x => x.Owner == player.Name);
                if (pHouse == null) return 1;
                CharacterData acc = Main.Players[player];
                int price = Manager.CreatePrice + (Manager.Multiplier * (maxpl / 10));
                if (acc.Money < price) return 2;
                if (acc.LVL < Manager.NeedLVL) return 3;
                if (acc.FamilyCID != "null" && acc.FamilyRank != 0) return 4;

                var cid = GenerateFamilyCid();
                var familyname = name;
                var leader = Main.Players[player].UUID;
                var house = pHouse.ID;
                var maxplayers = maxpl;
                var imgurl = img == null ? "images/avatar.png" : img;

                Family data = new Family(cid, name, leader, house, maxplayers, imgurl);

                MySQL.Query($"INSERT INTO `family`(`cid`, `name`, `house`, `maxplayers`, `leader`, `imgurl`) VALUES('{cid}', '{familyname}', {house}, {maxplayers}, {leader}, '{imgurl}')");
                Log.Write($"Я создал запись в таблице семьей: {cid} - {familyname} - {house} - {maxplayers}", nLog.Type.Warn);

                data.AllRanks = Ranks.CreateRanks(cid);
                data.Players.Add(new Member(player.Name.ToString(), familyname, cid, 10, Ranks.GetFamilyRankName(cid, 10)));

                Manager.Families.Add(data);
                acc.FamilyCID = cid;
                acc.FamilyRank = 10;

                MoneySystem.Wallet.Change(player, -price);
                Main.Players[player].Save(player).Wait();
                Member.LoadMembers(player, cid, 10); //пересмотреть
                return 0;
            }
            catch (Exception e)
            {
                Log.Write(e.ToString(), nLog.Type.Error);
                return 0;
            }

        }
        public static void LoadFamilies()
        {
            try
            {
                DataTable result = MySQL.QueryRead("SELECT * FROM `family`");
                if (result == null || result.Rows.Count == 0) return;
                foreach (DataRow Row in result.Rows)
                {
                    var cid = Convert.ToString(Row["cid"]);
                    var name = Convert.ToString(Row["name"]);
                    var leader = Convert.ToInt32(Row["leader"]);
                    var house = Convert.ToInt32(Row["house"]);
                    var maxplayers = Convert.ToInt32(Row["maxplayers"]);
                    var imgurl = Convert.ToString(Row["imgurl"]);
                    var desc_1 = Convert.ToString(Row["desc_1"]);
                    var desc_2 = Convert.ToString(Row["desc_2"]);

                    Family data = new Family(cid, name, leader, house, maxplayers, imgurl);
                    data.AllRanks = Ranks.LoadRanks(cid);
                    data.Desc_1 = desc_1;
                    data.Desc_2 = desc_2;

                    Manager.Families.Add(data);
                }
            }
            catch (Exception e)
            {
                Log.Write(e.ToString(), nLog.Type.Error);
            }
           
        }

        public static void SaveFamily(Family family)
        {
            try
            {
                if (family == null) return;

                DataTable result = MySQL.QueryRead($"SELECT * FROM `family` WHERE `cid`='{family.FamilyCID}'");
                if (result == null || result.Rows.Count == 0) return;

                MySQL.Query($"UPDATE `family` SET `name`='{family.Name}', `house`={family.FamilyHouse}, `maxplayers`={family.MaxPlayers}, `leader`={family.Leader}, `imgurl`='{family.ImageURL}', `desc_1`='{family.Desc_1}', `desc_2`='{family.Desc_2}' WHERE `cid`='{family.FamilyCID}'");

                if(Manager.Families.Contains(family))
                {
                    int index = Manager.Families.FindIndex(x => x.FamilyCID == family.FamilyCID);

                    Manager.Families[index] = family;
                }
            }
            catch (Exception e)
            {
                Log.Write(e.ToString(), nLog.Type.Error);
            }
        }

        public static void DeleteFamily(Family family)
        {
            try
            {
                if (family == null) return;

                Ranks.DeleteRanks(family);
                DataTable result = MySQL.QueryRead($"SELECT * FROM `family` WHERE `cid`='{family.FamilyCID}'");
                if (result == null || result.Rows.Count == 0) return;

                MySQL.Query($"DELETE FROM `family` WHERE `cid`='{family.FamilyCID}'");

                if (Manager.Families.Contains(family))
                {
                    int index = Manager.Families.FindIndex(x => x.FamilyCID == family.FamilyCID);

                    Manager.Families.RemoveAt(index);
                }

            }
            catch (Exception e)
            {
                Log.Write(e.ToString(), nLog.Type.Error);
            }
        }

        private static string GenerateFamilyCid()
        {
            try
            {
                string result = "";
                do
                {
                    result += (char)Rnd.Next(0x0041, 0x005A);
                    result += (char)Rnd.Next(0x0030, 0x0039);
                    result += (char)Rnd.Next(0x0041, 0x005A);
                    result += (char)Rnd.Next(0x0030, 0x0039);

                } while (Manager.Families.FindAll(x => x.FamilyCID == result) == null);
                return result;
            }
            catch (Exception e)
            {
                Log.Write(e.ToString(), nLog.Type.Error);
                return null;
            }
        }

        public static Family GetFamilyToCid(Player player)
        {
            try
            {
                CharacterData acc = Main.Players[player];
                if (acc.FamilyCID == null) return null;

                if (Manager.Families.FindAll(x => x.FamilyCID == acc.FamilyCID) != null)
                {
                    return Manager.Families.Find(x => x.FamilyCID == acc.FamilyCID);
                }
                return null;
            }
            catch (Exception e)
            {
                Log.Write(e.ToString(), nLog.Type.Error);
                return null;
            }
        }

        public static Family GetFamilyToCid(string cid)
        {
            try
            {
                if (Manager.Families.FindAll(x => x.FamilyCID == cid) != null)
                {
                    return Manager.Families.Find(x => x.FamilyCID == cid);
                }
                return null;
            }
            catch (Exception e)
            {
                Log.Write(e.ToString(), nLog.Type.Error);
                return null;
            }

        }

        public static string GetFamilyName(Player player)
        {
            try
            {
                CharacterData acc = Main.Players[player];
                if (acc.FamilyCID == null || acc.FamilyCID == "") return null;
                else { return Manager.Families.Find(x => x.FamilyCID == acc.FamilyCID).Name; }
            }
            catch (Exception e)
            {
                Log.Write(e.ToString(), nLog.Type.Error);
                return null;
            }
        }

        public static string GetFamilyName(string cid)
        {
            try
            {
                Family family = Manager.Families.Find(x => x.FamilyCID == cid);
                if (family != null) return family.Name;
                else return null;
            }
            catch (Exception e)
            {
                Log.Write(e.ToString(), nLog.Type.Error);
                return null;
            }
        }
    }

}
