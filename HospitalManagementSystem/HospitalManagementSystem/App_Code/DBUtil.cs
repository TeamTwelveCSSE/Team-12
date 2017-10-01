using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
//using MySql.Data.MySqlClient;

namespace HospitalManagementSystem.App_Code
{
    public class DBUtil
    {
        public bool OpenConnection()
        {
            string conString = ConfigurationManager.ConnectionStrings["defaultConnection"].ConnectionString;
            //MySqlConnection conn = new MySqlConnection(conString);

            return false;
        }
    }
}