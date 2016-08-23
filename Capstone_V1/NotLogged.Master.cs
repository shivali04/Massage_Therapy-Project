using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class NotLogged : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool signedIn = Session["user1"] != null;

            SignInButton.Visible = !signedIn;
            SignUp.Visible = !signedIn;
            SignOutButton.Visible = signedIn;
            account.Visible = signedIn;
            account1.Visible = signedIn;

            if (signedIn)
            {

                if ((Convert.ToString(Session["user1"])) == "admin")
                {
                    account.Visible = true;
                    account1.Visible = false;
                    SignOutButton.Visible = true;
                }

                else
                {
                    account.Visible = false;
                    account1.Visible = true;
                    SignOutButton.Visible = true;
                }

            }
         
        }
        protected void  Logout(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Redirect("Default.aspx");
        }
    }
}