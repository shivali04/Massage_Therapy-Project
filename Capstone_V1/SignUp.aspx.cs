using System;
using System.Data.SqlClient;
using System.Net.Mail;

namespace Capstone_V1
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

        protected void OnRegistration(object sender, EventArgs e)
        {
            SqlConnection dbConnection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=True; Database=sqlexpress");
            dbConnection.Open();
            string insertquery = "INSERT into customer (firstName,lastName,username,email,password,Phone,address,onMailingList)  VALUES(@fname,@lname,@username,@email,@password,@phone,@address, @CheckBox1)";
            SqlCommand comm = new SqlCommand(insertquery, dbConnection);
            comm.Parameters.AddWithValue("@fname", textbox_fname.Text);
            comm.Parameters.AddWithValue("@lname", textbox_lname.Text);
            comm.Parameters.AddWithValue("@username", txt_uname.Text);
            comm.Parameters.AddWithValue("@email", textbox_id.Text); 
            comm.Parameters.AddWithValue("@password", txtpass.Text);
            comm.Parameters.AddWithValue("@Phone",textbox_number.Text);
            comm.Parameters.AddWithValue("@address", txtadd.Text);
            comm.Parameters.AddWithValue("@CheckBox1", CheckBox1.Checked);
            comm.ExecuteNonQuery();

            MailMessage m = new MailMessage();
            SmtpClient sc = new SmtpClient();

            m.From = new MailAddress("intragrative.normal@gmail.com");
            m.To.Add(textbox_id.Text);
            m.Subject = "Welcome to Intragrative Massage Therapy";
            m.IsBodyHtml = true;
            m.Body = "Hi " + textbox_lname.Text + ", <br><br>Below are your account details. <br><br>Username: "
               + txt_uname.Text + "<br>Password: " + txtpass.Text + "<br><br>"
              + "Thanks" + ", <br>Sheri <br>Intragrative Massage Therapy";
            sc.Host = "smtp.gmail.com";
            sc.Port = 587;
            sc.Credentials = new System.Net.NetworkCredential("intragrative.normal@gmail.com", "massage1234");

            sc.EnableSsl = true;
            sc.Send(m);
            // Response.Write("Email Send successfully");

           

           
            results.Text = "Account created successfully and email sent to your registered email address";
            ClearAll();
        }


        protected void ClearAll()
        {
            textbox_fname.Text = "";
            textbox_lname.Text = "";
           txt_uname.Text = "";
            Label1.Text = "";
          textbox_id.Text = "";
           txtpass.Text = "";
           txtrepass.Text = "";
            textbox_number.Text = "";
            txtadd.Text = "";
           CheckBox1.Checked = false;


        }


    }
}