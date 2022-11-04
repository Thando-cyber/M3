using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Security.Claims;
using System.Security.Principal;
using System.Web.Security;
using Microsoft.AspNet.Identity;
using System.Web.UI.HtmlControls;

namespace M3Proj.NewFolder1
{
    public partial class stuGeninfo : System.Web.UI.Page
    {
        public int grade = 0;
        public char divi = ' ';
        public string Name = " ";
        public string elecmail;
        public string Surname = " ";
        public string Address = " ";
        public int age = 0;
        public string gender = " ";
        public decimal fees = 0;
        public string cont = " ";
        public string FullName = " ";
        public string str2 = " ";
        public string title = " ";
        public string gradeDiv = " ";
        public string teachId = " ";
        public string clateac = "";

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["userType"].ToString() == "Student")
            {
                SubjectButton.Visible =false;

                sear.Visible= false;
                int idClass = 0;
                
                title = Session["userType"].ToString();
                string str1 = Session["Email"].ToString();
                int n1 = str1.IndexOf("@");
                str2 = str1.Substring(0, n1);
                Session["stuID"] = str2;
                Session["ID"]= str2;
                string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
                SqlConnection con = new SqlConnection(conString);
                string query = "SELECT * FROM student WHERE stu_ID = @ID";
                SqlCommand sqlCommand = new SqlCommand(query, con);
                sqlCommand.Parameters.AddWithValue("@ID", Session["ID"]);
                SqlDataAdapter DA = new SqlDataAdapter(sqlCommand);
                DataTable dt = new DataTable();
                DA.Fill(dt);

                foreach (DataRow dr in dt.Rows)
                {
                    Name = Convert.ToString(dr["stu_name"]);
                    Surname = Convert.ToString(dr["stu_surname"]);
                    Address = Convert.ToString(dr["stu_address"]);
                    age = Convert.ToInt32(dr["stu_age"]);
                    gender = Convert.ToString(dr["stu_gender"]);
                    fees = Convert.ToDecimal(dr["stu_Fees"]);
                    cont = Convert.ToString(dr["parentContact"]);
                    idClass = Convert.ToInt32(dr["classID"]);
                    elecmail = Convert.ToString(dr["stu_email"]);

                }
                string query2 = "SELECT * FROM classes WHERE class_id= @classID";

                SqlCommand com = new SqlCommand(query2, con);

                com.Parameters.AddWithValue("@classID", idClass);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable DT = new DataTable();
                da.Fill(DT);
                foreach (DataRow dr in DT.Rows)
                {
                    grade = Convert.ToInt32(dr["grade"]);
                    divi = Convert.ToChar(dr["Division"]);
                    teachId = Convert.ToString(dr["teacher_id"]);
                }

                FullName = Name + " " + Surname;
                gradeDiv = grade.ToString()+divi.ToString();

                string fir = "";
                string sec = "";
                string gen = "";
                string q = "SELECT * FROM Teachers WHERE teach_ID = @id";
                SqlCommand sql = new SqlCommand(q, con);
                sql.Parameters.AddWithValue("@id", teachId);
                SqlDataAdapter sql1Da = new SqlDataAdapter(sql);
                DataTable data = new DataTable();
                sql1Da.Fill(data);

                foreach (DataRow dr in data.Rows)
                {
                    fir= Convert.ToString(dr["teach_firstname"]);
                    sec =Convert.ToString(dr["teach_lastname"]);
                    gen = Convert.ToString(dr["gender"]);

                }
                clateac = fir+" "+sec;




            }
            else if (Session["userType"].ToString() == "Teacher")
            {
                SubjectButton.Visible =true;
                //reportButton.Visible=false;
                sear.Visible= false;
                text1.Visible= false;
                text2.Visible=false;
                tex7.Visible = false;
                line6.Visible=false;
                line7.Visible= false;
                string str1 = Session["Email"].ToString();
                int n1 = str1.IndexOf("@");
                str2 = str1.Substring(0, n1);
                Session["teachID"] = str2;
                Session["ID"]= str2;
                string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
                SqlConnection con = new SqlConnection(conString);
                string query = "SELECT * FROM Teachers WHERE teach_ID = @ID";
                SqlCommand sqlCommand = new SqlCommand(query, con);
                sqlCommand.Parameters.AddWithValue("@ID", Session["ID"]);
                SqlDataAdapter DA = new SqlDataAdapter(sqlCommand);
                DataTable dt = new DataTable();
                DA.Fill(dt);

                foreach (DataRow dr in dt.Rows)
                {
                    Name = Convert.ToString(dr["teach_firstname"]);
                    Surname = Convert.ToString(dr["teach_lastname"]);
                    Address = Convert.ToString(dr["Address"]);
                    age = Convert.ToInt32(dr["age"]);
                    gender = Convert.ToString(dr["gender"]);
                    //fees = Convert.ToDecimal(dr["stu_Fees"]);
                    cont = Convert.ToString(dr["contactNum"]);
                    title = Convert.ToString(dr["teach_title"]);
                    elecmail =Convert.ToString(dr["teach_email"]);
                }

                FullName = Name + " " + Surname;

            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            string userinput = Box2.Text;
            if (userinput.Length >= 5)
            {
                string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
                string query1 = "SELECT* FROM student where stu_ID = @email";
                string query2 = "SELECT* FROM Teachers where teach_ID = @email2";
                string query4 = "SELECT* FROM student WHERE stu_ = @email3";
                SqlConnection con = new SqlConnection(conString);

                SqlCommand command = new SqlCommand(query1, con);
                SqlCommand command2 = new SqlCommand(query2, con);
                SqlCommand command3 = new SqlCommand(query4, con);
                DataTable dt = new DataTable();
                DataTable dt2 = new DataTable();
                DataTable dt3 = new DataTable();
                SqlDataAdapter da1 = new SqlDataAdapter(command);
                SqlDataAdapter da2 = new SqlDataAdapter(command2);
                SqlDataAdapter da3 = new SqlDataAdapter(command3);
                command.Parameters.AddWithValue("@email", userinput);
                command2.Parameters.AddWithValue("@email2", userinput);
                command3.Parameters.AddWithValue("@email3", Session["Email"]);
                da1.Fill(dt);
                da2.Fill(dt2);
                //da3.Fill(dt3);
                if (dt.Rows.Count == 1)
                {
                    SubjectButton.Visible =false;
                    text1.Visible= true;
                    text2.Visible=true;
                    tex7.Visible = true;
                    line6.Visible=true;
                    line7.Visible= true;
                    Session["userType2"] = "Student";
                    Session["ID"] = userinput;
                    Session["stuID"] = userinput;
                    int idClass = 0;
                   
                    
                    title = Session["userType2"].ToString();
                    /*string str1 = Session["Email"].ToString();
                    int n1 = str1.IndexOf("@");
                    str2 = str1.Substring(0, n1);
                    */

                    SqlConnection con1 = new SqlConnection(conString);
                    string query = "SELECT * FROM student WHERE stu_ID = @ID";
                    SqlCommand sqlCommand = new SqlCommand(query, con1);
                    sqlCommand.Parameters.AddWithValue("@ID", Session["ID"]);
                    SqlDataAdapter DA = new SqlDataAdapter(sqlCommand);
                    DataTable dt1 = new DataTable();
                    DA.Fill(dt1);

                    foreach (DataRow dr in dt1.Rows)
                    {
                        Name = Convert.ToString(dr["stu_name"]);
                        Surname = Convert.ToString(dr["stu_surname"]);
                        Address = Convert.ToString(dr["stu_address"]);
                        age = Convert.ToInt32(dr["stu_age"]);
                        gender = Convert.ToString(dr["stu_gender"]);
                        fees = Convert.ToDecimal(dr["stu_Fees"]);
                        cont = Convert.ToString(dr["parentContact"]);
                        idClass = Convert.ToInt32(dr["classID"]);
                        elecmail = Convert.ToString(dr["stu_email"]);
                         

                    }
                    string query3 = "SELECT * FROM classes WHERE class_id= @classID";
                    SqlCommand com = new SqlCommand(query3, con);
                    com.Parameters.AddWithValue("@classID", idClass);
                    SqlDataAdapter da = new SqlDataAdapter(com);
                    DataTable DT = new DataTable();
                    da.Fill(DT);
                    foreach (DataRow dr in DT.Rows)
                    {
                        grade = Convert.ToInt32(dr["grade"]);
                        divi = Convert.ToChar(dr["Division"]);
                        teachId = Convert.ToString(dr["teacher_id"]);
                    }

                    FullName = Name + " " + Surname;
                    gradeDiv = grade.ToString()+divi.ToString();

                    string fir = "";
                    string sec = "";
                    string gen = "";
                    string q = "SELECT * FROM Teachers WHERE teach_ID = @id";
                    SqlCommand sql = new SqlCommand(q, con);
                    sql.Parameters.AddWithValue("@id", teachId);
                    SqlDataAdapter sql1Da = new SqlDataAdapter(sql);
                    DataTable data = new DataTable();
                    sql1Da.Fill(data);

                    foreach (DataRow dr in data.Rows)
                    {
                        fir= Convert.ToString(dr["teach_firstname"]);
                        sec =Convert.ToString(dr["teach_lastname"]);
                        gen = Convert.ToString(dr["gender"]);
                    }
                    clateac = fir+" "+sec;
                    //con.Close();


                }
                else if (dt2.Rows.Count == 1)
                {
                    SubjectButton.Visible =true;
                    text1.Visible= false;
                    text2.Visible=false;
                    tex7.Visible = false;
                    line6.Visible=false;
                    line7.Visible= false;
                    Session["userType2"] = "Teacher";
                    Session["ID"] = userinput;
                    title = Session["userType2"].ToString();
                    Session["teachID"] =userinput;
                    /*string str1 = Session["Email"].ToString();
                    int n1 = str1.IndexOf("@");
                    str2 = str1.Substring(0, n1);
                    Session["teachID"] = str2;
                    Session["ID"]= str2;*/
                    //string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
                    SqlConnection con2 = new SqlConnection(conString);
                    string query = "SELECT * FROM Teachers WHERE teach_ID = @ID";
                    SqlCommand sqlCommand = new SqlCommand(query, con2);
                    sqlCommand.Parameters.AddWithValue("@ID", Session["ID"]);
                    SqlDataAdapter DA = new SqlDataAdapter(sqlCommand);
                    DataTable dt4 = new DataTable();
                    DA.Fill(dt4);

                    foreach (DataRow dr in dt4.Rows)
                    {
                        Name = Convert.ToString(dr["teach_firstname"]);
                        Surname = Convert.ToString(dr["teach_lastname"]);
                        Address = Convert.ToString(dr["Address"]);
                        age = Convert.ToInt32(dr["age"]);
                        gender = Convert.ToString(dr["gender"]);
                        //fees = Convert.ToDecimal(dr["stu_Fees"]);
                        cont = Convert.ToString(dr["contactNum"]);
                        title = Convert.ToString(dr["teach_title"]);
                        elecmail =Convert.ToString(dr["teach_email"]);
                    }

                    FullName = Name + " " + Surname;

                }
                else
                {
                    warn1.Text= "Wrong ID Enterd";
                }

            }

        }
        protected void Report_click(object sender, EventArgs e)
        {
            if (Session["stuID"] != null)
            {

                Session["rDivison"] = divi;
                Session["rGrade"] = grade;
                Session["rTerm"] = 1;
                Session["rTeachName"] = clateac;
                Session["rName"]= FullName;
                Session["rID"]= Session["stuID"].ToString();
                Session["rFees"]= fees;


                Response.Redirect("/Report2.aspx");
            }
            else
            {
                Response.Write("Please select a row on Gridview");

            }
        }



    }
}