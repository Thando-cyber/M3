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
            object email = Session["Email"];
            string str1 = email.ToString();
            
            
            char char1 = ' ';
            foreach (char ch in str1)
            {
                if (ch != '@')
                {
                    char1 += ch;
                }
                else
                {
                    break;
                }
            }
            string stu = char1.ToString();
            int x = Convert.ToInt32(stu);
            object obj = x;
            //Session["ID"] = stu;              

            string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            SqlConnection con = new SqlConnection(conString);
            string query = "SELECT * FROM PaymentService WHERE stu_ID = @ID";
            SqlCommand sqlCommand = new SqlCommand(query, con);
            sqlCommand.Parameters.AddWithValue("@ID", obj);
            SqlDataAdapter da = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}