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
            //object email = Session["Email"];
            sear.Visible = false;
            string str1 = Session["Email"].ToString();
            int n1 = str1.IndexOf("@");
            string str2 = str1.Substring(0, n1);
            if (Session["userType"].ToString() =="Administration" )
            {
                sear.Visible = true;

            }

            Session["stuID"] = str2;
            //Session["ID"] = stu;              

            /*string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            SqlConnection con = new SqlConnection(conString);
            string query = "SELECT * FROM PaymentService WHERE stu_ID = @ID";
            SqlCommand sqlCommand = new SqlCommand(query, con);
            sqlCommand.Parameters.AddWithValue("@ID", Session["stuID"]);
            SqlDataAdapter da = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();*/
        }
    }
}