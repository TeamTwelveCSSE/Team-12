using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace HospitalManagementSystem
{
    public partial class Account : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader reader;
        String queryStr;
        String ConnString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new MySql.Data.MySqlClient.MySqlConnection(ConnString);
            conn.Open();
            try
            {
                cmd = conn.CreateCommand();
                cmd.CommandText = "SELECT * FROM expenses ORDER BY expense_id DESC LIMIT 1 ";
            
                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    int idd;
                    idd = reader.GetInt32("expense_id");
                    idd = idd + 1;
                    tb_expenseid.Text = idd + "";


                }
            }
            catch { }
            conn.Close();
        }

        protected void btn_date_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            tb_expensedate.Text = Calendar1.SelectedDate.ToString("MM - dd - yyyy");
            Calendar1.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            conn = new MySql.Data.MySqlClient.MySqlConnection(ConnString);
            try
            {
                conn.Open();
                queryStr = "insert into expenses (expense_id,date,type,description,amount) values ('" + tb_expenseid.Text + "','" + tb_expensedate.Text + "','" + Convert.ToString(list_expensetype.SelectedValue) + "','" + tb_expensedescription.Text + "','" + tb_expenseamount.Text + "')";
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
                cmd.ExecuteNonQuery();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Succesfully Inserted.!  ');</script>");
            }

            catch (Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Fill all the text fields.!  ');</script>");
            }

            conn.Close();
           
        }

        public void clear()
        {
            this.tb_expenseid.Text = "";
            this.tb_expenseamount.Text = null;
            this.tb_expensedescription.Text = null;
            this.tb_expensedate.Text = null;
            this.list_expensetype.SelectedValue = null; 
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            clear();
        }
    }
}