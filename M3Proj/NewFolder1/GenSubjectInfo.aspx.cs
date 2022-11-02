using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace M3Proj
{
    public partial class GenSubjectInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userType"].ToString().Equals("Administrator"))
            {

            }
            else
            {
                Response.Redirect("~/Account/Login.aspx");
            }
        }
    protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string code = TextBox2.Text;
            string details = TextBox3.Text;
            string divi = TextBox4.Text;

            if (name.Length > 0 && code.Length > 0 && details.Length > 0 && divi.Length == 1)
            {
                SqlDataSource1.Insert();
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                Response.Write("<script>alert('Subject Successfully Added!)</script>");
            }
            else
            {
                Response.Write("<script>alert('Please fill in all the boxes, and ensure the division box only contains one character')</script>");
              
            }
        }
    }
}