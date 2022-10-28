using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;

namespace M3Proj.NewFolder1
{
    
    public partial class Subjects : System.Web.UI.Page
    {
        public string str2;
        public int classID;
        public string subjID;
        public int subteachID;
        public string teachName;
        public string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            string str1 = Session["Email"].ToString();
            int n1 = str1.IndexOf("@");
            str2 = str1.Substring(0, n1);
            Session["teachID"] = str2;
            SqlConnection sqlConnection = new SqlConnection(conString);
            string query = "SELECT * FROM subjectTeacher WHERE teacherID= @teachID";
            SqlCommand command = new SqlCommand(query, sqlConnection);
            command.Parameters.AddWithValue("@teachID", str2);

            SqlDataAdapter DA = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            DA.Fill(dt);

            foreach (DataRow dr in dt.Rows)
            {
                subteachID = Convert.ToInt32(dr["subjteach_ID"]);
                classID = Convert.ToInt32(dr["classID"]);
                subjID = Convert.ToString(dr["subjectID"]);
                teachName = Convert.ToString(dr["teach_name"]);
            }
        }

       
        protected void btnCapt_Click(object sender, EventArgs e)
        {
            int _final;
            string str = hdnfldVariable.Value;
            _final= Int32.Parse(str);
            //string conString ="Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            SqlConnection connection = new SqlConnection(conString);
            string query = "INSERT INTO subjectResults (studentID,subjectID,subjectTeachID,termResult,TermNo) VALUES(@stuID,@subjID,@teachID,@result,@termNo)";
            SqlCommand sqlCommand = new SqlCommand(query, connection);
            sqlCommand.Parameters.AddWithValue("@stuID",name.Text);
            sqlCommand.Parameters.AddWithValue("@subjID",subjID);
            sqlCommand.Parameters.AddWithValue("@teachID",subteachID);
            sqlCommand.Parameters.AddWithValue("@result",_final);
            


        }

        
    }

}
   
