using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace Capstone_V1
{
    public partial class usertestimony : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user1"] != null)
            {
               welcome1.Text = "Welcome " + Session["user1"];
                if (!IsPostBack)
                {
                    SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true; Database=sqlexpress");
                    dbConnection.Open();

                    String queryStr = "select * from customer where username='" + Session["user1"] + "'";
                    SqlCommand cmd = new SqlCommand(queryStr, dbConnection);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {

                       Userid.Text = dr["userID"].ToString();
                       


                    }
                    dbConnection.Close();

                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }

      

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=True; Database=sqlexpress");
            dbConnection.Open();
            string insertquery = "INSERT into Testimony(userID,date,testimony) VALUES(@userID,@date,@testimony)";
            SqlCommand comm = new SqlCommand(insertquery, dbConnection);
            comm.Parameters.AddWithValue("@userID", Userid.Text);
            comm.Parameters.AddWithValue("@date", TextBox6.Text);
            comm.Parameters.AddWithValue("@testimony", testi.Text);
         //   comm.Parameters.AddWithValue("@visible", "False");


            comm.ExecuteNonQuery();
            results.Text = "Testimonial subimtted";
        }
    }
}