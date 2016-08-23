using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Net.Mail;

namespace Capstone_V1
{
    public partial class Appointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user1"] != null)
            {
              //  welcome1.Text = "Welcome " + Session["user1"];
                if (!IsPostBack)
                {                
                    SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true; Database=sqlexpress");
                    dbConnection.Open();

                    String queryStr = "select * from customer where username='" + Session["user1"] + "'";
                    SqlCommand cmd = new SqlCommand(queryStr, dbConnection);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        userIDText.Text = dr["userID"].ToString();
                        TextBox2.Text = dr["firstName"].ToString();
                        TextBox3.Text = dr["lastName"].ToString();
                        TextBox1.Text = dr["email"].ToString();
                        TextBox4.Text = dr["Phone"].ToString();

                     
                    }
                    dbConnection.Close();

                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }


            
        }




        protected void submit1_Click(object sender, EventArgs e)
        {
            SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=True; Database=sqlexpress");
            dbConnection.Open();
            string insertquery = "INSERT into AppointmentRequest (userID,preferredTime,preferredDate,alternateDate,comment,Done) VALUES(@userID,@DropDownList1,@TextBox6,@TextBox7, @TextBox8,@Done)";
            SqlCommand comm = new SqlCommand(insertquery, dbConnection);
            comm.Parameters.AddWithValue("@userID", userIDText.Text);
            comm.Parameters.AddWithValue("@DropDownList1", DropDownList1.SelectedItem.Value);
            comm.Parameters.AddWithValue("@TextBox6", TextBox6.Text);
            comm.Parameters.AddWithValue("@TextBox7", TextBox7.Text);
            comm.Parameters.AddWithValue("@TextBox8", TextBox8.Text);
            comm.Parameters.AddWithValue("@Done","False");

            comm.ExecuteNonQuery();
            results.Text = "Thanks for the booking of the appointment. We will get back to you soon.";

        }
    }
}

