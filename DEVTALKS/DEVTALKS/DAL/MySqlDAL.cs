using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


namespace DEVTALKS.DAL
{
    public class MySqlDAL
    {
        private static string server = "localhost";
        private static string database = "devtalksbd";
        private static string user = "root";
        private static string password = "";

        private string strConnection = string.Format($@"SERVER={server}; DATABASE={database}; UID={user}; PWD={password}");

        public MySqlConnection connection;

        public void Connect()
        {
            try
            {
                connection = new MySqlConnection(strConnection);
                connection.Open();
            }
            catch (Exception e)
            {
                throw new Exception("Nãoo foi possível conecta ao banco de dados. Exceção: " + e);
            }
        }

        public void ExecutionSQL(string sql)
        {
            try
            {
                Connect();
                MySqlCommand command = new MySqlCommand(sql, connection);
                command.ExecuteNonQuery();
            }
            catch (Exception error)
            {
                throw new Exception("Não foi possível executar a instrução na base de dados. Erro: " + error.Message);
            }
            finally
            {
                connection.Close();
            }
        }

        public DataTable QueryExecution(string sql)
        {
            try
            {
                Connect();
                DataTable dt = new DataTable();
                MySqlDataAdapter data = new MySqlDataAdapter(sql, connection);
                data.Fill(dt);
                return dt;
            }
            catch (Exception error)
            {
                throw new Exception("Não foi possível executar a consulta no banco de dados. Erro:" + error.Message);
            }
            finally
            {
                connection.Close();
            }
        }

    }
}