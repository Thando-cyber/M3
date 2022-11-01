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
    public partial class ClassList : System.Web.UI.Page
    {

        public string teacherID = "";
        public string teacherName = "";
        public string teacherSurname = "";
        public string teacherFullName = "";
        public string roll = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            GridView1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            SqlConnection con = new SqlConnection(conString);
            string query = "SELECT * FROM classes WHERE grade = @grade AND Division = @Division";
            SqlCommand sqlCommand = new SqlCommand(query, con);
            sqlCommand.Parameters.AddWithValue("@grade", DropDownList1.SelectedValue);
            sqlCommand.Parameters.AddWithValue("@Division", DropDownList2.SelectedValue);
            SqlDataAdapter DA = new SqlDataAdapter(sqlCommand);
            DataTable dt = new DataTable();
            DA.Fill(dt);

            foreach (DataRow dr in dt.Rows)
            {
                teacherID = Convert.ToString(dr["teacher_id"]);
                roll = Convert.ToString(dr["numStudents"]);
            }

            string query2 = "SELECT * FROM Teachers WHERE teach_ID = @id";
            SqlCommand sqlCommand2 = new SqlCommand(query2, con);
            sqlCommand2.Parameters.AddWithValue("@id", teacherID);
            SqlDataAdapter DA2 = new SqlDataAdapter(sqlCommand2);
            DataTable dt2 = new DataTable();
            DA2.Fill(dt2);

            foreach (DataRow dr in dt2.Rows)
            {
                teacherName = Convert.ToString(dr["teach_firstname"]);
                teacherSurname = Convert.ToString(dr["teach_lastname"]);

            }
            teacherFullName = teacherName + teacherSurname;

            Label1.Text = teacherID;
            Label2.Text = roll;
            Label3.Text = teacherFullName;

            GridView1.Visible = true;
            this.GridView1.DataSource = null;
        }
    }
}