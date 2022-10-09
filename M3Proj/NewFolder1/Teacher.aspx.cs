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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            SqlConnection con = new SqlConnection(conString);
            string query = "SELECT s.stu_ID ,s.classID,s.stu_name,s.stu_surname,s.stu_address,s.stu_email,s.stu_age FROM student s JOIN classes c ON s.classID = c.class_id JOIN Teachers t ON t.teach_ID = c.teacher_id WHERE c.teacher = @Email";
            SqlCommand sqlCommand = new SqlCommand(query, con);
            sqlCommand.Parameters.AddWithValue("@Email", Session["Email"]);
            SqlDataAdapter DA = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            DA.Fill(dt);
            GridView2.DataSource= dt;
            GridView2.DataBind();
            */
        }
    }
}