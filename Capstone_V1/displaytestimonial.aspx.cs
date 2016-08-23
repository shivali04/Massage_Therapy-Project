using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capstone_V1
{
    public partial class displaytestimonial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach(GridViewRow row in GridView1.Rows)
            {
                CheckBox c = (CheckBox)row.FindControl("CheckBox1") as CheckBox; ;
                if (c.Checked){
                    //  Response.Write("Success");

                  //  SqlDataSource1.UpdateParameters.Clear();
                    int userID = Convert.ToInt32(GridView1.DataKeys[row.RowIndex].Value);
                    SqlDataSource1.UpdateParameters.Add("userID", userID.ToString());
                    SqlDataSource1.UpdateParameters.Add("visible", c.Checked.ToString());
                    SqlDataSource1.Update();
                    // this.GridView1.DataBind();
                    Response.Write("success");
                   
                }
               

            }
            }

       
    }
    }
