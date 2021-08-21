using DEVTALKS.DAL;
using DEVTALKS.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DEVTALKS.BLL
{
    public class AdsBLL
    {
        private MySqlDAL connection = new MySqlDAL();

        public void CreateAds(AdsDTO ads)
        {
            string sql = string.Format($@"INSERT INTO Ads VALUES(NULL, '{ads.Title}', '{ads.Description}', '{ads.Image}', '{ads.Link}', '{ads.UserId}');");
            connection.ExecutionSQL(sql);
        }

        public void DeleteAds(int id)
        {
            string sql = string.Format($@"DELETE FROM Ads WHERE id = '{id}';");
            connection.ExecutionSQL(sql);
        }
    }
}