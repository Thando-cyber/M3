using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Timers;
namespace M3Proj
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            string query = "SELECT * FROM Teachers WHERE teach_email = @email ";
            SqlCommand command = new SqlCommand(query, con);
            string email = Session["Email"].ToString();
            command.Parameters.AddWithValue("@email", Session["Email"].ToString());
            //int total = (int)command.ExecuteScalar();
  
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable DT = new DataTable();
            DataSet ds = new DataSet();
            da.Fill(DT);
            //DT = ds.Tables["Teachers"];

            string teachID=" ";
            foreach (DataRow dr in DT.Rows)
            {
                teachID =Convert.ToString(dr[0]);
            }
            
            
                
            /*div1.Controls.Add(new LiteralControl("<h1>" +Session["Email"].ToString()+ "</h1>"));
            div1.Controls.Add(new LiteralControl("<h1>" +teachID+ "</h1>"));
            */

            Session.Add("teacher", "");

            Session["teacher"] = teachID;
            string query2 = "SELECT * FROM classes WHERE teacher_id = @Id";
            SqlCommand command2 = new SqlCommand(query2, con);
            command2.Parameters.AddWithValue("@Id", teachID);
            SqlDataAdapter DA = new SqlDataAdapter(command2);
            DataTable dt = new DataTable();
            DA.Fill(dt);
            int classId = 0;
            foreach (DataRow dr in dt.Rows )
            {
                classId =Convert.ToInt32(dr["class_id"]);
            }
            Session["classID"] = classId;

            
            /*string query3 = "SELECT * FROM student WHERE classID = @classId";
            SqlCommand command3 = new SqlCommand(query3, con);
            command3.Parameters.AddWithValue("@classID", Session["classID"]);
            SqlDataAdapter da3 = new SqlDataAdapter(command3);
            DataTable DT3 = new DataTable();
            DataSet data = new DataSet();
            
            da3.Fill(data, "student");
            DT3 = data.Tables["student"];
            GridView2.DataSource = DT3;
            GridView2.DataBind();
            con.Close();*/
        }
    }
}