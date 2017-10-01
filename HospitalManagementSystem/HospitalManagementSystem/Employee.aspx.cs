using HospitalManagementSystem.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HospitalManagementSystem
{
    public partial class Employee : System.Web.UI.Page
    {
        EmployeeObj emp = new EmployeeObj();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            emp.EmpId = txtEmpIDRegister.Text.Trim();
            emp.EmpType = lstEmpType.SelectedValue;
            emp.FirstName = txtFirstName.Text.Trim();
            emp.LastName = txtLastName.Text.Trim();
            emp.Address = txtAddress.Text;
            emp.NIC = txtNIC.Text.Trim();
            emp.DOB = txtDOB.Text.Trim();
            //emp.Gender = radioGenderF.SelectedValue;
            emp.Email = txtMail.Text.Trim();
            emp.Contact = txtContact.Text.Trim();
            emp.Basic_Salary = txtSalary.Text.Trim();
            emp.SLMC_No = txtSLMCNo.Text.Trim();


        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static void GetGender_DOB(string nic)
        {
            DataManager dtMgr = new DataManager();


        }
    }
}