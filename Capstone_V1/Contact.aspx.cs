using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SendMail()
        {
            // Gmail Address from where you send the mail
            var fromAddress = YourEmail.Text.ToString(); 
            // any address where the email will be sending
            var toAddress = "intragrative.normal@gmail.com";
            //Password of your gmail address
            const string fromPassword = "massage1234";
            // Passing the values and make a email formate to display
            string subject = "An email from a potential client!";
            string body = "From: " + YourName.Text + "\n";
            body += "Email: " + YourEmail.Text + "\n";
            body += "Phone: " + YourPhone.Text + "\n";
            body += "Subject: " + subject + "\n";
            body += "Message: \n" + YourMessage.Text + "\n";
            // smtp settings
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            // Passing values to smtp object
            smtp.Send(fromAddress, toAddress, subject, body);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //here on button click what will done 
                SendMail();
                DisplayMessage.Text = "Message sent. Thank you!";
                DisplayMessage.Visible = true;
                YourEmail.Text = "";
                YourName.Text = "";
                YourMessage.Text = "";
            }
            catch (Exception) { }
        }
    }
}