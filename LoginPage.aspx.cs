using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class LoginPage : System.Web.UI.Page
    {
        string conSave = ConfigurationManager.ConnectionStrings["MyProject"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(conSave);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }

            string logg = "Select * from users where UserName=@UserName and Password=@password";
            SqlCommand cmd = new SqlCommand(logg, con);
            cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);
            SqlDataReader SR;
            try
            {
                SR = cmd.ExecuteReader();
                if (SR.Read())
                {
                    Session["UName"] = txtUserName.Text;
                    Response.Redirect("DashBoard.aspx");
                  //  Response.Redirect("ProccePage.aspx");
                    // Response.Redirect("DashBoard.Master");

                }
                else
                {

                    txtUserName.Text = "";
                    txtPassword.Text = "";
                }

            }
            catch (Exception ex)
            {
                //labAttintion.Text = (ex + "");
            }



            txtUserName.Text = "";
            txtPassword.Text = "";
            con.Close();
          


        
    }
    }
}