using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace ProjectWebShare
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\Register.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string check = "select count (*) from [Table] where Student_ID ='" + studentid.Text + "'and Pw = '" + pass.Text + "'";
            SqlCommand com = new SqlCommand(check, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1) {
                Response.Redirect("Main.aspx");
            }
            else
            {
                Label3.ForeColor = System.Drawing.Color.Red;
                Label3.Text = "Your Student ID or Password is Invalid";
            }
        }
    }
}