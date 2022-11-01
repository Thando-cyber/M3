using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Timers;


namespace M3Proj.NewFolder1
{
    public partial class Payments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Session["userType"].ToString().Equals("Administrator"))
            {
                Response.Redirect("~/Account/Login.aspx");
            }
            else
            {
                GridView1.Visible = true;
                GridView2.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = false;
            Box2.Text = "";
        }
    }
}