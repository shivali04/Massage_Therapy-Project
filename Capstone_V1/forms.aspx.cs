﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_V1
{
    public partial class forms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user1"] == null)
            {
                Response.Redirect("login.aspx"); 
            }
            
        }
    }
}