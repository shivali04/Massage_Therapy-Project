using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Capstone_V1
{
    public partial class Services : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if ((Convert.ToString(Session["user1"])) != "admin")
                {

                    Response.Redirect("login.aspx");
                }
            }

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=True; Database=sqlexpress");
            dbConnection.Open();
            string insertquery = "INSERT into Service (modality,Description,duration,price)  VALUES(@modality,@Description,@duration,@price)";
            SqlCommand comm = new SqlCommand(insertquery, dbConnection);
            comm.Parameters.AddWithValue("@modality", TextBox1.Text);
            comm.Parameters.AddWithValue("@Description", TextBox2.Text);
            comm.Parameters.AddWithValue("@duration", TextBox3.Text);
            comm.Parameters.AddWithValue("@price", TextBox4.Text);
           

            comm.ExecuteNonQuery();


            results.Text = "Service added successfully Successfully";
            clear();
        }

        protected void clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
           TextBox4.Text = "";

        }


    }
}