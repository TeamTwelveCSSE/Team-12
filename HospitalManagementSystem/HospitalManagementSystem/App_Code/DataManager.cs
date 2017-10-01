using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HospitalManagementSystem.App_Code
{
    public class DataManager
    {
        public float GetBasicSalary(string type)
        { 
            float salary = 0;

            string query = @"SELECT s.Basic_Salary
                            FROM Salary s
                            WHERE s.Type = :salary";

            return salary;
        }

        /// <summary>
        /// Add Employee Details to Database
        /// </summary>
        public bool InsertEmpDetails(EmployeeObj employe)
        {
            return false;
        }

        public string GetDOBbyNIC(string nic)
        {
            //NICcal n = new NICcal(nic);
            return null;
        }
    }
}