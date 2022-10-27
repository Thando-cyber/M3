using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M3Proj.NewFolder1
{
    public partial class Subjects : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            TextBox1.Text = " ";
            TextBox2.Text = " ";
            TextBox3.Text = " ";
        }
    }
}