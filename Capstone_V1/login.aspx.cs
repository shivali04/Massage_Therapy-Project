using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.Security;

namespace Capstone_V1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
                {
                    uname.Text = Request.Cookies["UserName"].Value;
                    textbox_pwd.Attributes["value"] = Request.Cookies["Password"].Value;
                }
            }

           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
            }
            else
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

            }
            Response.Cookies["UserName"].Value = uname.Text.Trim();
            Response.Cookies["Password"].Value = textbox_pwd.Text.Trim();

            Session["user1"] = uname.Text;

            string userName = uname.Text;

            //to edit from here till the end .....preview line by line to edit
            SqlConnection conn = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true; Database = sqlexpress");

            conn.Open();

            string checkUser = "select count(*) from customer where username='" + userName + "'";
            SqlCommand com = new SqlCommand(checkUser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                conn.Open();

                string checkPassword = "select password, username from customer where username='" + userName + "'";
                SqlCommand passwordcom = new SqlCommand(checkPassword, conn);
                SqlDataReader reader = passwordcom.ExecuteReader();
                reader.Read();
                string password = reader["password"].ToString();

                // to edit after setting up of database
                if (password == textbox_pwd.Text)
                {
                    if ((Convert.ToString(Session["user1"])) == "admin" || (Convert.ToString(Session["user1"])) == "Admin")
                    {
                        FormsAuthentication.RedirectFromLoginPage(uname.Text, true);
                        Response.Redirect("Admin_Dashboard.aspx");
                    }
                    else
                    {
                        FormsAuthentication.RedirectFromLoginPage(uname.Text, true);
                        Response.Redirect("Customer_Account.aspx");  
                        Label1.Text = "Valid username and password.";
                    }
                }
                else
                {
                    Label1.Text = "Invalid username and password.";


                }
            }
            else
            {
                Label1.Text = "Username does not exist.";

            }


      }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //to edit
          //  Response.Redirect("Recovery.aspx");
        }
    }
}


