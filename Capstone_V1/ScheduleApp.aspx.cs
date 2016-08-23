using System;
using System.Net.Mail;
using System.Web.UI.WebControls;

namespace Capstone_V1
{
    public partial class ScheduleApp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (GridView1.Rows.Count <= 0)
            {
                gridresponse.Text = "No appointments are requested at this time";
                Label5.Visible = false;
                DropDownList1.Visible = false;
                Button1.Visible = false;
                Button2.Visible = false;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox cb = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
                Label lb = (Label)GridView1.Rows[i].FindControl("Label1");
                Label name = (Label)GridView1.Rows[i].FindControl("Label2");
                Label date   = (Label)GridView1.Rows[i].FindControl("Label3");
             

                if (cb.Checked == true)
                {
                    MailMessage m = new MailMessage();
                    SmtpClient sc = new SmtpClient();
                    m.From = new MailAddress("intragrative.normal@gmail.com");
                    m.To.Add(lb.Text.ToString());
                    m.Subject = "Welcome to Intragrative Massage Therapy";
                    m.IsBodyHtml = true;
                    m.Body = "Hi " + name.Text.ToString()+"," + "<br><br>Your appointment on "+date.Text.ToString() + " at "+ DropDownList1.SelectedItem.Value + " is confirmed.<br>"
                      + "Thanks" + ", <br>Sheri <br>Intragrative Massage Therapy"; 
                    sc.Host = "smtp.gmail.com";
                    sc.Port = 587;
                    sc.Credentials = new System.Net.NetworkCredential("intragrative.normal@gmail.com", "massage1234");
                    sc.EnableSsl = true;
                    sc.Send(m);
                    msg.Text = "Email for Appointment Confirmation Sent Successfully";
                  
                }
            }
        }

        protected void MarkAsRead(object sender, EventArgs e)
        {
            
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox checkbox = (CheckBox)row.FindControl("CheckBox1") as CheckBox; ;
                if (checkbox.Checked)
                {                 
                    int appointmentID = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);
                    SqlDataSource1.UpdateParameters.Add("appointmentID", appointmentID.ToString());
                    SqlDataSource1.UpdateParameters.Add("Done", checkbox.Checked.ToString());
                    SqlDataSource1.Update();
                    this.GridView1.DataBind();
                    GridView2.DataBind();
                    msg.Text = "Customer is successfully marked and service delivered";
                    if(GridView1.Rows.Count <= 0){
                        gridresponse.Text = "You have no more pending appointments.";
                        Label5.Visible = false;
                        DropDownList1.Visible = false;
                        Button1.Visible = false;
                        Button2.Visible = false;
                    }
                }
            }
        }

    }
}