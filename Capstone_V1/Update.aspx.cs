using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Capstone_V1
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user1"] == null)
            {
                Response.Redirect("login.aspx");
            }

                if (!IsPostBack)
            {
               
              
                SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true; Database=sqlexpress;");
                dbConnection.Open();

                String queryStr = "select * from customer where username='" + Session["user1"] + "'";
                SqlCommand cmd = new SqlCommand(queryStr, dbConnection);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {

                    textbox_fname.Text = dr["firstName"].ToString();
                   textbox_lname.Text = dr["lastName"].ToString();
                   txt_uname.Text = dr["username"].ToString();
                  textbox_id.Text = dr["email"].ToString();
                   txtpass.Text = dr["password"].ToString();
                   txtrepass.Text = dr["password"].ToString();
                   textbox_number.Text = dr["Phone"].ToString();
                   txtadd.Text = dr["address"].ToString();
                          
                }
                dbConnection.Close();

            }
           
        }


        protected void textchanged(object sender, EventArgs e)
        {  // using AJAX
            SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=True; Database=sqlexpress");
            dbConnection.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM customer WHERE username=@User_Name", dbConnection);
            cmd.Parameters.AddWithValue("@User_Name", txt_uname.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Label1.Text = "User already exists";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Label1.Text = "Username available";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            using (
   SqlConnection con = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true; Database=sqlexpress"))
            {
                con.Open();
                using (SqlCommand comm = new SqlCommand("UPDATE customer  SET firstName=@fname, lastName=@lname, username=@username, email=@email, password=@password, Phone=@phone, address=@address WHERE username=@username", con))
                {
                    comm.Parameters.AddWithValue("@fname", textbox_fname.Text);
                    comm.Parameters.AddWithValue("@lname", textbox_lname.Text);
                    comm.Parameters.AddWithValue("@username", txt_uname.Text);
                    comm.Parameters.AddWithValue("@email", textbox_id.Text);
                    comm.Parameters.AddWithValue("@password", txtpass.Text);
                    comm.Parameters.AddWithValue("@phone", textbox_number.Text);       
                     comm.Parameters.AddWithValue("@address", txtadd.Text);

                    comm.ExecuteNonQuery();



                    results.Text = "Updated successfully!";
                }
            }
        }

        



    }

}