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
        public int gra;
        public char divis;
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
            Textbox44.ReadOnly = true;
            TextBox2.ReadOnly = true;
            TextBox2.Text = "Afrikaans";
            TextBox9.ReadOnly = true;
            string q1 = "SELECT * FROM classes WHERE class_id =@classID";
            SqlCommand command1 = new SqlCommand(q1, sqlConnection);
            command1.Parameters.AddWithValue("@classID", classID);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(command1);
            DataTable dt1 = new DataTable();
            dataAdapter.Fill(dt1);
            foreach (DataRow dr in dt1.Rows)
            {
                divis = Convert.ToChar(dr["Division"]);
                gra = Convert.ToInt32(dr["grade"]);
            }
            //string a1="";
            string b1 = "";
            //string a2="";
            string b2 = "";
            //string a3="";
            string b3 = "";
            //string a4="";
            string b4 = "";
            string q2 = "SELECT subject_ID FROM subjects WHERE Divis =@divi";
            SqlCommand command2 = new SqlCommand(q2, sqlConnection);
            command2.Parameters.AddWithValue("@divi", divis);
            SqlDataAdapter dataAdapter1 = new SqlDataAdapter(command2);
            DataTable dt2 = new DataTable();
            dataAdapter1.Fill(dt2);
            DataColumnCollection columns = dt2.Columns;
            foreach (DataRow dr in dt2.Rows)
            {
                /*if(dt.Rows.IndexOf(dr)==0) { b1 = Convert.ToString(dr["subject_ID"]); }
                else if (dt.Rows.IndexOf(dr)==1) { b2 = Convert.ToString(dr["subject_ID"]); }
                else if (dt.Rows.IndexOf(dr)==2) { b3 = Convert.ToString(dr["subject_ID"]); }
                else if (dt.Rows.IndexOf(dr)==3) { b4 = Convert.ToString(dr["subject_ID"]); }
                */

                if (dr[0] != null)
                {
                    b1 = Convert.ToString(dr[0]);
                    b2 = Convert.ToString(dr[0]);
                    b3 = Convert.ToString(dr[0]);
                    b4 = Convert.ToString(dr[0]);
                }


            }
            TextBox16.Text = b1.ToString();
            TextBox16.ReadOnly = true;
            TextBox23.Text = b2.ToString();
            TextBox23.ReadOnly = true;
            TextBox30.Text = b3.ToString();
            TextBox30.ReadOnly = true;
            TextBox37.Text = b4.ToString();
            TextBox37.ReadOnly = true;

        }


        protected void btnCapt_Click(object sender, EventArgs e)
        {
            string termStr = Request.Form["Term"];
            int termSelec = Convert.ToInt32(termStr);
            int _final;
            string str = hdnfldVariable.Value;
            _final = Int32.Parse(str);
            //string conString ="Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            SqlConnection connection = new SqlConnection(conString);
            string query = "INSERT INTO subjectResults (studentID,subjectID,subjectTeachID,termResult,TermNo) VALUES(@stuID,@subjID,@teachID,@result,@termNo)";
            SqlCommand sqlCommand = new SqlCommand(query, connection);
            sqlCommand.Parameters.AddWithValue("@stuID", Session["stuID"]);
            sqlCommand.Parameters.AddWithValue("@subjID", subjID);
            sqlCommand.Parameters.AddWithValue("@teachID", subteachID);
            sqlCommand.Parameters.AddWithValue("@result", _final);
            sqlCommand.Parameters.AddWithValue("@termNo", termSelec);
        }
    }

}


