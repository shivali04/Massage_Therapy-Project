using System;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_V1
{
    public partial class MailingList : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true; Database = sqlexpress");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ViewList(object sender, EventArgs e)
        {
            /*
            //Pulls directory of email addresses.
            String str = "SELECT firstname AS First, lastname AS Last, email AS 'Email Address' FROM customer WHERE onMailingList = 1";
            SqlCommand cmd = new SqlCommand(str, connection);

            connection.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "firstname, lastname, email");

            gvMailingList.DataSource = ds;
            gvMailingList.DataBind();

            connection.Close();
            */
        }

        protected void SearchList(object sender, EventArgs e)
        {
            /*
            String str = "SELECT userID, firstName AS 'First Name', lastName AS 'Last Name', email AS 'Email Address', onMailingList AS 'On Mailing List' FROM customer WHERE (firstName like '%' + @search + '%') OR (lastName like '%' + @search + '%')";
            SqlCommand cmd = new SqlCommand(str, connection);
   
            cmd.Parameters.Add("@search", SqlDbType.NVarChar).Value = TextBox1.Text;

            connection.Open();
            cmd.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds, "lastName");

            GridView2.DataSource = ds;
            GridView2.DataBind();

            connection.Close();*/
        }

        protected void MassEmailButtonClick(object sender, EventArgs e)
        {
            string subject = txtSubject.Value;
            string body = txtEmailBody.Text;
            if (subject != "" && body != "")
            {
                SendMassEmail(subject, body);
            }
            txtSubject.Value = "";
            txtEmailBody.Text = "";
        }

        protected void SendMassEmail(string subject, string body)
        {
            //Define sql connection and array to store email addresses 
            var connection = new SqlConnection("Data Source=itksqlexp8;Integrated Security=true; Database = sqlexpress");

            //Get array of email addresses
            const string str = "SELECT email FROM customer WHERE onMailingList = 1";
            SqlCommand cmd = new SqlCommand(str, connection);
            connection.Open();
            SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

            //Reads through the addresses in the SqlDataReader one at a time and sends them the email.
            while (rdr.Read())
            {
               SendEmail((string)rdr["Email"], subject, body);
            }

            //Close connection
            connection.Close();
        }

        protected void SendEmail(string email, string subject, string body)
        {
            //Send email to person on list using the address given, subject, and body.
            MailMessage m = new MailMessage();
            SmtpClient sc = new SmtpClient();

            body = "<!doctype html> <head> <body> " + body + " </body> </html>";

            m.From = new MailAddress("intragrative.normal@gmail.com");
            m.To.Add(email);
            m.Subject = subject;
            m.IsBodyHtml = true;
            m.Body = body;
            sc.Host = "smtp.gmail.com";
            sc.Port = 587;
            sc.Credentials = new System.Net.NetworkCredential("intragrative.normal@gmail.com", "massage1234");

            sc.EnableSsl = true;
            sc.Send(m);
        }

        protected void Subscribe(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox1") as CheckBox; ;
                if (checkbox.Checked)
                {
                    int userID = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);
                    dsMailingList.UpdateParameters.Clear();
                    dsMailingList.UpdateParameters.Add("userID", userID.ToString());
                    dsMailingList.UpdateParameters.Add("onMailingList", "True");
                    dsMailingList.Update();
                    this.GridView1.DataBind();
                }
            }
        }

        protected void Unsubscribe(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox1") as CheckBox; ;
                if (checkbox.Checked)
                {
                    int userID = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);
                    dsMailingList.UpdateParameters.Clear();
                    dsMailingList.UpdateParameters.Add("userID", userID.ToString());
                    dsMailingList.UpdateParameters.Add("onMailingList", "False");
                    dsMailingList.Update();
                    this.GridView1.DataBind();
                    
                }
            }
        }
    }
}