using DEVTALKS.DAL;
using DEVTALKS.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace DEVTALKS.BLL
{
    public class UserBLL
    {
        private MySqlDAL connection = new MySqlDAL();

        public void Insert(UserDTO user)
        {
            string sql = string.Format($@"INSERT INTO user VALUES(NUll, '{user.Name}', '{user.Email}', '{user.Password}', '{user.IsAdmin}', '{user.IsCC}', {user.IsPremium});");
            connection.ExecutionSQL(sql);
        }

        public void Delete(int id)
        {
            string sql = string.Format($@"DELETE FROM user WHERE id = '{id}';");
            connection.ExecutionSQL(sql);
        }

        public bool Login(string email, string pass)
        {
            string sql = string.Format($@"SELECT * FROM user WHERE email = '{email}' AND password = '{pass}';");
            DataTable dt = connection.QueryExecution(sql);
            if (dt.Rows.Count == 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public void UpdateUser(UserDTO user)
        {
            string sql = string.Format($@"UPDATE user SET name='{user.Name}', email='{user.Email}', password='{user.Password}' WHERE id = '{user.Id}';");
            connection.ExecutionSQL(sql);
        }

        public void SignPlan(int id)
        {
            string sql = string.Format($@"UPDATE user SET isPremium='true' WHERE id = '{id}';");
            connection.ExecutionSQL(sql);
        }
    }
}