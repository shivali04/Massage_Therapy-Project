using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_V1
{
    public partial class Customer_Account : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string firstName = "";
            string lastName = "";
            
            if (Session["user1"] != null)
            {
                if (!IsPostBack)
                {
                    SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true; Database=sqlexpress");
                    dbConnection.Open();

                    String queryStr = "select firstName, lastName from customer where username='" + Session["user1"] + "'";
                    SqlCommand cmd = new SqlCommand(queryStr, dbConnection);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {

                        firstName = dr["firstName"].ToString();
                        lastName = dr["lastName"].ToString();

                    }
                    dbConnection.Close();

                }
                welcome1.Text = "Welcome " + firstName + " " + lastName;
            }
            else
            {
               // Response.Redirect("SignIn1.aspx");
            }
        }

       
    }
}