using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;
namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string conSave = ConfigurationManager.ConnectionStrings["MyProject"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            product();
            Orders();
            Categories();
            Customer();
            cha();
           chartOrder();
        }
        void Customer()
        {
            SqlConnection con = new SqlConnection(conSave);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            String sql = "select COUNT(*) from customers";
            SqlCommand cmd = new SqlCommand(sql, con);
            Int32 count = (Int32)cmd.ExecuteScalar();
            labCustomer.Text = Convert.ToString(count);
        }

        void product()
        {
            SqlConnection con = new SqlConnection(conSave);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            String sql = "select COUNT(*) from Products";
            SqlCommand cmd = new SqlCommand(sql, con);
            Int32 count = (Int32)cmd.ExecuteScalar();
            labProduct.Text = Convert.ToString(count);
        }
        void Orders()
        {
            SqlConnection con = new SqlConnection(conSave);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            String sql = "select COUNT(*) from orders";
            SqlCommand cmd = new SqlCommand(sql, con);
            Int32 count = (Int32)cmd.ExecuteScalar();
            labOrder.Text = Convert.ToString(count);
        }
        void Categories()
        {
            SqlConnection con = new SqlConnection(conSave);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            String sql = "select COUNT(*) from categories";
            SqlCommand cmd = new SqlCommand(sql, con);
            Int32 count = (Int32)cmd.ExecuteScalar();
            labcategoris.Text = Convert.ToString(count);
        }
       
        
       void cha()
        {

            SqlConnection con = new SqlConnection(conSave);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select CategoryName ,NumberOfProduct from CategoryView", con);
            Series series = Chart1.Series["Categories"];
            SqlDataReader reader = cmd.ExecuteReader();
            try
            {
                while (reader.Read())

                {
                    series.Points.AddXY(reader["CategoryName"].ToString(), reader["NumberOfProduct"]);
                }

            }
            catch (Exception ex)
            {

                //Label1.Text = ex + "";


            }
        }
        void chartOrder()
        {

            SqlConnection con = new SqlConnection(conSave);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("select Year ,Total_Sales from OrderView", con);
            Series series = chaOrders.Series["Year"];
            SqlDataReader reader = cmd.ExecuteReader();
            try
            {
                while (reader.Read())
                {
                    series.Points.AddXY(reader["Year"].ToString(), reader["Total_Sales"]);
                }

            }
            catch (Exception ex)
            {

                //   Label1.Text = ex + "";

            }
        }
    }
}