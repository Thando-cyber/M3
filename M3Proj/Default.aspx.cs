using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace M3Proj
{
    public partial class _Default : Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            string query1 = "SELECT* FROM student where stu_email = @email";
            string query2 = "SELECT* FROM Teachers where teach_email = @email2";

            SqlConnection con = new SqlConnection(conString);
            SqlCommand command = new SqlCommand(query1,con);
            SqlCommand command2 = new SqlCommand(query2, con);
            DataTable dt = new DataTable();
            DataTable dt2 = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(command);
            SqlDataAdapter da2 = new SqlDataAdapter(command2);
            command.Parameters.AddWithValue("@email", Session["Email"]);
            command2.Parameters.AddWithValue("@email2", Session["Email"]);
            da.Fill(dt);
            da2.Fill(dt2);


            if (dt.Rows.Count > 0)
            {

                Session["userType"] = "student";
            }

            else if(dt2.Rows.Count > 0){
                Session["userType"] = "teacher";
            }
                
        }
    }
}