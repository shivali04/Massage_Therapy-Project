using System;
using System.Configuration;

namespace Capstone_V1
{
    public partial class GiftCerts : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["user1"] == null)
            {
                // Label1.Text = "Welcome " + Session["user1"];
                Response.Redirect("login.aspx");
            }
        }
  
            protected void OnlinePayment(object sender, EventArgs e)
        {
            Session["Swedish Massage"] = btnShow;
            string redirectUrl = "";
            redirectUrl += "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" + ConfigurationManager.AppSettings["paypalemail"].ToString();
            redirectUrl += "&item_name=Swedish Massage";
            redirectUrl += "&amount=" + price.Text;
            redirectUrl += "&business=intragrative.normal-facilitator@gmail.com";
            redirectUrl += "&return=" + ConfigurationManager.AppSettings["SuccessURL"].ToString();
            redirectUrl += "&cancel_return=" + ConfigurationManager.AppSettings["FailedURL"].ToString();
            Response.Redirect(redirectUrl);
        }
        protected void OnlinePayment1(object sender, EventArgs e)
        {
           
            string redirectUrl = "";
            redirectUrl += "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" + ConfigurationManager.AppSettings["paypalemail"].ToString();
            redirectUrl += "&item_name=Deep Tissue Massage";
            redirectUrl += "&amount=" + TextBox1.Text;
            redirectUrl += "&business=intragrative.normal-facilitator@gmail.com";
            redirectUrl += "&return=" + ConfigurationManager.AppSettings["SuccessURL"].ToString();
            redirectUrl += "&cancel_return=" + ConfigurationManager.AppSettings["FailedURL"].ToString();
            Response.Redirect(redirectUrl);
        }


        protected void OnlinePayment2(object sender, EventArgs e)
        {
           
            string redirectUrl = "";
            redirectUrl += "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" + ConfigurationManager.AppSettings["paypalemail"].ToString();
            redirectUrl += "&item_name=Cranial Sacral Therapy";
            redirectUrl += "&amount=" + TextBox2.Text;
            redirectUrl += "&business=intragrative.normal-facilitator@gmail.com";
            redirectUrl += "&return=" + ConfigurationManager.AppSettings["SuccessURL"].ToString();
            redirectUrl += "&cancel_return=" + ConfigurationManager.AppSettings["FailedURL"].ToString();
            Response.Redirect(redirectUrl);
        }
        protected void OnlinePayment3(object sender, EventArgs e)
        {
            
            string redirectUrl = "";
            redirectUrl += "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" + ConfigurationManager.AppSettings["paypalemail"].ToString();
            redirectUrl += "&item_name=Manual Lymphatic Drain (MLD)";
            redirectUrl += "&amount=" + TextBox3.Text;
            redirectUrl += "&business=intragrative.normal-facilitator@gmail.com";
            redirectUrl += "&return=" + ConfigurationManager.AppSettings["SuccessURL"].ToString();
            redirectUrl += "&cancel_return=" + ConfigurationManager.AppSettings["FailedURL"].ToString();
            Response.Redirect(redirectUrl);
        }

        protected void OnlinePayment4(object sender, EventArgs e)
        {
           
            string redirectUrl = "";
            redirectUrl += "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" + ConfigurationManager.AppSettings["paypalemail"].ToString();
            redirectUrl += "&item_name=Hot Stone Therapy";
            redirectUrl += "&amount=" + TextBox4.Text;
            redirectUrl += "&business=intragrative.normal-facilitator@gmail.com";
            redirectUrl += "&return=" + ConfigurationManager.AppSettings["SuccessURL"].ToString();
            redirectUrl += "&cancel_return=" + ConfigurationManager.AppSettings["FailedURL"].ToString();
            Response.Redirect(redirectUrl);
        }
        protected void OnlinePayment5(object sender, EventArgs e)
        {
           
            string redirectUrl = "";
            redirectUrl += "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" + ConfigurationManager.AppSettings["paypalemail"].ToString();
            redirectUrl += "&item_name=Thai Massage";
            redirectUrl += "&amount=" + TextBox5.Text;
            redirectUrl += "&business=intragrative.normal-facilitator@gmail.com";
            redirectUrl += "&return=" + ConfigurationManager.AppSettings["SuccessURL"].ToString();
            redirectUrl += "&cancel_return=" + ConfigurationManager.AppSettings["FailedURL"].ToString();
            Response.Redirect(redirectUrl);
        }


        protected void OnlinePayment6(object sender, EventArgs e)
        {
          
            string redirectUrl = "";
            redirectUrl += "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=" + ConfigurationManager.AppSettings["paypalemail"].ToString();
            redirectUrl += "&item_name=Reflexology";
            redirectUrl += "&amount=" + TextBox6.Text;
            redirectUrl += "&business=intragrative.normal-facilitator@gmail.com";
            redirectUrl += "&return=" + ConfigurationManager.AppSettings["SuccessURL"].ToString();
            redirectUrl += "&cancel_return=" + ConfigurationManager.AppSettings["FailedURL"].ToString();
            Response.Redirect(redirectUrl);
        }
    }
    
}