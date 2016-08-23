using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace paypalTest
{
    public partial class success : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = "";
            Random random = new Random();
            int randomNumber = random.Next(0, 100000000);
            if (Session["user1"] != null)
            {
                Label1.Text = "Welcome " + Session["user1"];
                if (!IsPostBack)
                {
                    SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true; Database=sqlexpress");
                    dbConnection.Open();

                    String queryStr = "select email from customer where username='" + Session["user1"] + "'";
                    SqlCommand cmd = new SqlCommand(queryStr, dbConnection);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                       
                      email = dr["email"].ToString();
                      
                    }
                    dbConnection.Close();

                }
                    MailMessage m = new MailMessage();
                    SmtpClient sc = new SmtpClient();

                    m.From = new MailAddress("intragrative.normal@gmail.com");
                    m.To.Add(email);
                    m.CC.Add("intragrative.normal@gmail.com");
                    m.Subject = "Welcome to Intragrative Massage Therapy";
                    m.IsBodyHtml = true;
                    m.Body = "Hi " + "<br><br>Your payment for successful." + "<br /><br />Your Voucher number for this certificate is: "+ randomNumber + "<br /><br />Please consider this mail as your certificate and bring it during your visit<br /><br />-Sheri";
                    sc.Host = "smtp.gmail.com";
                    sc.Port = 587;
                    sc.Credentials = new System.Net.NetworkCredential("intragrative.normal@gmail.com", "massage1234");
                    sc.EnableSsl = true;
                    sc.Send(m);
                }
        }
    }
}