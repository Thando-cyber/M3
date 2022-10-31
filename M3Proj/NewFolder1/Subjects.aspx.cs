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

    public static class MessageBox
    {
        public static void Show(this Page Page, String Message)
        {
            Page.ClientScript.RegisterStartupScript(
               Page.GetType(),
               "MessageBox",
               "<script language='javascript'>alert('" + Message + "');</script>"
            );
        }
    }
    public partial class Subjects : System.Web.UI.Page
    {

        public int year = DateTime.Now.Year;
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
        public int gra;
        public char divis;
        public int classID;
        public string subjID;
        public int subteachID;
        public string teachName;
        public string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
        protected void Page_Load(object sender, EventArgs e)
        {

            subjectAll.Visible=false;
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
            //Textbox44.ReadOnly= true;
            /*TextBox2.ReadOnly= true;
            TextBox2.Text= "Afrikaans";*/
            //TextBox9.ReadOnly = true;
            string q1 = "SELECT * FROM classes WHERE class_id =@classID";
            SqlCommand command1 = new SqlCommand(q1, sqlConnection);
            command1.Parameters.AddWithValue("@classID", classID);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(command1);
            DataTable dt1 = new DataTable();
            dataAdapter.Fill(dt1);
            foreach (DataRow dr in dt1.Rows)
            {
                divis= Convert.ToChar(dr["Division"]);
                gra = Convert.ToInt32(dr["grade"]);
            }
            Session["Division"]= divis;



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            object Ass1 = ""; object Ass2 = ""; object Ass3 = ""; object Ass4 = ""; object Tes1 = ""; object Tes2 = "";
            double A1, A2, A3, A4, T1, T2, sum;
            string As1, As2, As3, As4, Ts1, Ts2;
            As1= Asses1.Text; As2= Asses2.Text; As3= Asses3.Text; As4= Asses4.Text; Ts1 =Test1.Text; Ts2 = Test2.Text;
            A1 =Convert.ToDouble(As1); A2 =Convert.ToDouble(As2); A3 = Convert.ToDouble(As3); A4 =Convert.ToDouble(As4); T1 = Convert.ToDouble(Ts1); T2= Convert.ToDouble(Ts2);
            A1 = A1 * 0.1;
            A2 = A2 * 0.1;
            A3 = A3 * 0.1;
            A4 = A4 * 0.1;
            T1 = T1 * 0.3;
            T2 = T2 * 0.3;
            sum = A1 + A2 + A3 + A4 + T1 + T2;
            string subID = DropDownList6.SelectedItem.Value;
            string termStr = Request.Form["Term"];
            int termSelec = Convert.ToInt32(termStr);
            double _final;
            _final= sum;
            //string conString ="Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            SqlConnection connection = new SqlConnection(conString);
            string query = "INSERT INTO subjectResults(studentID,subjectID,subjectTeachID,termResult,TermNo) VALUES(@stuID,@subjID,@teachID,@result,@termNo)";
            string query2 = "SELECT * FROM subjectResults WHERE subjectID=@subj AND TermNo=@terNo AND studentID=@stuRe";
            string query3 = "INSERT INTO Capture(stu_ID,sub_ID,Asses1,Asses2,Asses3,Asses4,Test1,Test2,Term,Year) VALUES(@stu_ID,@sub_ID,@Asses1,@Asses2,@Asses3,@Asses4,@Test1,@Test2,@Term,@year)";
            string query4 = "SELECT * FROM Capture WHERE stu_ID=@stu AND sub_ID=@subID AND Term=@term AND Year=@Year";
            SqlCommand sqlCommand0 = new SqlCommand(query, connection);
            SqlCommand sqlCommand1 = new SqlCommand(query2, connection);
            SqlCommand sqlCommand2 = new SqlCommand(query3, connection);
            SqlCommand sqlCommand3 = new SqlCommand(query4, connection);
            //Query parameters
            sqlCommand0.Parameters.AddWithValue("@stuID", Session["stuID"]);
            sqlCommand0.Parameters.AddWithValue("@subjID", subID);
            sqlCommand0.Parameters.AddWithValue("@teachID", subteachID);
            sqlCommand0.Parameters.AddWithValue("@result", _final);
            sqlCommand0.Parameters.AddWithValue("@termNo", termSelec);
            //Query parameters
            sqlCommand1.Parameters.AddWithValue("@stuRe", Session["stuID"]);
            sqlCommand1.Parameters.AddWithValue("@terNo", termSelec);
            sqlCommand1.Parameters.AddWithValue("@subj", subID);
            //Query parameters
            sqlCommand2.Parameters.AddWithValue("@stu_ID", Session["stuID"]);
            sqlCommand2.Parameters.AddWithValue("@sub_ID", subID);
            sqlCommand2.Parameters.AddWithValue("@Asses1", A1);
            sqlCommand2.Parameters.AddWithValue("@Asses2", A2);
            sqlCommand2.Parameters.AddWithValue("@Asses3", A3);
            sqlCommand2.Parameters.AddWithValue("@Asses4", A4);
            sqlCommand2.Parameters.AddWithValue("@Test1", T1);
            sqlCommand2.Parameters.AddWithValue("@Test2", T2);
            sqlCommand2.Parameters.AddWithValue("@Term", termSelec);
            sqlCommand2.Parameters.AddWithValue("@year", year);
            //Query parameters
            sqlCommand3.Parameters.AddWithValue("@stu", Session["stuID"]);
            sqlCommand3.Parameters.AddWithValue("@subID", subID);
            sqlCommand3.Parameters.AddWithValue("@term", termSelec);
            sqlCommand3.Parameters.AddWithValue("@Year", year);


            DataTable dt = new DataTable();
            DataTable table = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(sqlCommand1);
            SqlDataAdapter sqlData = new SqlDataAdapter(sqlCommand3);

            da1.Fill(dt);
            sqlData.Fill(table);
            if (table.Rows.Count ==1)
            {

                MessageBox.Show(Page, "marks Test 1");
                foreach (DataRow dr in table.Rows)
                {
                    Ass1= dr["Asses1"];
                    Ass2= (dr["Asses2"]);
                    Ass3= (dr["Asses3"]);
                    Ass4= (dr["Asses4"]);
                    Tes1= (dr["Test1"]);
                    Tes2= (dr["Test2"]);
                }
                if (Ass1 != DBNull.Value) { Label3.Text=Convert.ToString(Ass1); Asses1.Visible= false; }
                else { Asses1.Visible= true; Label3.Visible= false; }
                if (Ass2 != DBNull.Value) { Label4.Text=Convert.ToString(Ass2); Asses2.Visible= false; }
                else { Asses2.Visible= true; Label4.Visible= false; }
                if (Ass3 != DBNull.Value) { Label5.Text=Convert.ToString(Ass3); Asses3.Visible= false; }
                else { Asses3.Visible= true; Label5.Visible= false; }
                if (Ass4 != DBNull.Value) { Label6.Text=Convert.ToString(Ass4); Asses4.Visible= false; }
                else { Asses4.Visible= true; Label6.Visible= false; }
                if (Tes1 != DBNull.Value) { Label7.Text=Convert.ToString(Tes1); Test1.Visible= false; }
                else { Test1.Visible= true; Label7.Visible= false; }
                if (Tes2 != DBNull.Value) { Label8.Text=Convert.ToString(Tes2); Test2.Visible= false; }
                else { Test2.Visible= true; Label8.Visible= false; }


            }
            else if (dt.Rows.Count >= 1)
            {
                MessageBox.Show(Page, "Mark already added");
            }
            else
            {

                connection.Open();
                sqlCommand0.ExecuteNonQuery();
                sqlCommand2.ExecuteNonQuery();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            double A1, A2, A3, A4, T1, T2, sum;
            string As1, As2, As3, As4, Ts1, Ts2;
            As1= TextBox3.Text; As2= TextBox4.Text; As3= TextBox5.Text; As4= TextBox6.Text; Ts1 =TextBox7.Text; Ts2 = TextBox8.Text;
            A1 =Convert.ToDouble(As1); A2 =Convert.ToDouble(As2); A3 = Convert.ToDouble(As3); A4 =Convert.ToDouble(As4); T1 = Convert.ToDouble(Ts1); T2= Convert.ToDouble(Ts2);
            A1 = A1 * 0.1;
            A2 = A2 * 0.1;
            A3 = A3 * 0.1;
            A4 = A4 * 0.1;
            T1 = T1 * 0.3;
            T2 = T2 * 0.3;
            sum = A1 + A2 + A3 + A4 + T1 + T2;
            string subID = DropDownList5.SelectedItem.Value;
            string termStr = Request.Form["Term"];
            int termSelec = Convert.ToInt32(termStr);
            double _final;
            _final= sum;
            //string conString ="Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            SqlConnection connection = new SqlConnection(conString);
            string query = "INSERT INTO subjectResults(studentID,subjectID,subjectTeachID,termResult,TermNo) VALUES(@stuID,@subjID,@teachID,@result,@termNo)";
            string query2 = "SELECT * FROM subjectResults WHERE subjectID=@subj AND TermNo=@terNo AND studentID=@sub";
            string query3 = "INSERT INTO Capture(stu_ID,sub_ID,Asses1,Asses2,Asses3,Asses4,Test1,Test2,Term) VALUES(@stu_ID,@sub_ID,@Asses1,@Asses2,@Asses3,@Asses4,@Test1,@Test2,@Term)";
            SqlCommand sqlCommand = new SqlCommand(query, connection);
            SqlCommand sqlCommand1 = new SqlCommand(query2, connection);
            SqlCommand sqlCommand2 = new SqlCommand(query3, connection);

            sqlCommand.Parameters.AddWithValue("@stuID", Session["stuID"]);
            sqlCommand.Parameters.AddWithValue("@subjID", subID);
            sqlCommand.Parameters.AddWithValue("@teachID", subteachID);
            sqlCommand.Parameters.AddWithValue("@result", _final);
            sqlCommand.Parameters.AddWithValue("@termNo", termSelec);

            sqlCommand1.Parameters.AddWithValue("@sub", Session["stuID"]);
            sqlCommand1.Parameters.AddWithValue("@terNo", termSelec);
            sqlCommand1.Parameters.AddWithValue("@subj", subID);

            sqlCommand2.Parameters.AddWithValue("@stu_ID", Session["stuID"]);
            sqlCommand2.Parameters.AddWithValue("@sub_ID", subID);
            sqlCommand2.Parameters.AddWithValue("@Asses1", A1*10);
            sqlCommand2.Parameters.AddWithValue("@Asses2", A2*10);
            sqlCommand2.Parameters.AddWithValue("@Asses3", A3*10);
            sqlCommand2.Parameters.AddWithValue("@Asses4", A4*10);
            sqlCommand2.Parameters.AddWithValue("@Test1", T1*30);
            sqlCommand2.Parameters.AddWithValue("@Test2", T2*30);
            sqlCommand2.Parameters.AddWithValue("@Term", termSelec);

            DataTable dt = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(sqlCommand1);
            da1.Fill(dt);

            if (dt.Rows.Count >= 1)
            {
                MessageBox.Show(Page, "Mark already added");
            }
            else
            {

                connection.Open();
                sqlCommand.ExecuteNonQuery();
                sqlCommand2.ExecuteNonQuery();
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            double A1, A2, A3, A4, T1, T2, sum;
            string As1, As2, As3, As4, Ts1, Ts2;
            As1= TextBox10.Text; As2= TextBox11.Text; As3= TextBox12.Text; As4= TextBox13.Text; Ts1 =TextBox14.Text; Ts2 = TextBox15.Text;
            A1 =Convert.ToDouble(As1); A2 =Convert.ToDouble(As2); A3 = Convert.ToDouble(As3); A4 =Convert.ToDouble(As4); T1 = Convert.ToDouble(Ts1); T2= Convert.ToDouble(Ts2);
            A1 = A1 * 0.1;
            A2 = A2 * 0.1;
            A3 = A3 * 0.1;
            A4 = A4 * 0.1;
            T1 = T1 * 0.3;
            T2 = T2 * 0.3;
            sum = A1 + A2 + A3 + A4 + T1 + T2;
            string subID = DropDownList7.SelectedItem.Value;
            string termStr = Request.Form["Term"];
            int termSelec = Convert.ToInt32(termStr);
            double _final;
            _final= sum;
            //string conString ="Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            SqlConnection connection = new SqlConnection(conString);
            string query = "INSERT INTO subjectResults(studentID,subjectID,subjectTeachID,termResult,TermNo) VALUES(@stuID,@subjID,@teachID,@result,@termNo)";
            string query2 = "SELECT * FROM subjectResults WHERE subjectID=@subj AND TermNo=@terNo AND studentID=@sub";
            string query3 = "INSERT INTO Capture(stu_ID,sub_ID,Asses1,Asses2,Asses3,Asses4,Test1,Test2,Term) VALUES(@stu_ID,@sub_ID,@Asses1,@Asses2,@Asses3,@Asses4,@Test1,@Test2,@Term)";
            SqlCommand sqlCommand = new SqlCommand(query, connection);
            SqlCommand sqlCommand1 = new SqlCommand(query2, connection);
            SqlCommand sqlCommand2 = new SqlCommand(query3, connection);

            sqlCommand.Parameters.AddWithValue("@stuID", Session["stuID"]);
            sqlCommand.Parameters.AddWithValue("@subjID", subID);
            sqlCommand.Parameters.AddWithValue("@teachID", subteachID);
            sqlCommand.Parameters.AddWithValue("@result", _final);
            sqlCommand.Parameters.AddWithValue("@termNo", termSelec);

            sqlCommand1.Parameters.AddWithValue("@sub", Session["stuID"]);
            sqlCommand1.Parameters.AddWithValue("@terNo", termSelec);
            sqlCommand1.Parameters.AddWithValue("@subj", subID);

            sqlCommand2.Parameters.AddWithValue("@stu_ID", Session["stuID"]);
            sqlCommand2.Parameters.AddWithValue("@sub_ID", subID);
            sqlCommand2.Parameters.AddWithValue("@Asses1", A1*10);
            sqlCommand2.Parameters.AddWithValue("@Asses2", A2*10);
            sqlCommand2.Parameters.AddWithValue("@Asses3", A3*10);
            sqlCommand2.Parameters.AddWithValue("@Asses4", A4*10);
            sqlCommand2.Parameters.AddWithValue("@Test1", T1*30);
            sqlCommand2.Parameters.AddWithValue("@Test2", T2*30);
            sqlCommand2.Parameters.AddWithValue("@Term", termSelec);

            DataTable dt = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(sqlCommand1);
            da1.Fill(dt);

            if (dt.Rows.Count >= 1)
            {
                MessageBox.Show(Page, "Mark has already added");
            }
            else
            {
                MessageBox.Show(Page, "Mark successfully added !");
                connection.Open();
                sqlCommand.ExecuteNonQuery();
                sqlCommand2.ExecuteNonQuery();
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            double A1, A2, A3, A4, T1, T2, sum;
            string As1, As2, As3, As4, Ts1, Ts2;
            As1= TextBox17.Text; As2= TextBox18.Text; As3= TextBox19.Text; As4= TextBox20.Text; Ts1 =TextBox21.Text; Ts2 = TextBox22.Text;
            A1 =Convert.ToDouble(As1); A2 =Convert.ToDouble(As2); A3 = Convert.ToDouble(As3); A4 =Convert.ToDouble(As4); T1 = Convert.ToDouble(Ts1); T2= Convert.ToDouble(Ts2);
            A1 = A1 * 0.1;
            A2 = A2 * 0.1;
            A3 = A3 * 0.1;
            A4 = A4 * 0.1;
            T1 = T1 * 0.3;
            T2 = T2 * 0.3;
            sum = A1 + A2 + A3 + A4 + T1 + T2;
            string subID = DropDownList1.SelectedItem.Value;
            string termStr = Request.Form["Term"];
            int termSelec = Convert.ToInt32(termStr);
            double _final;
            _final= sum;
            //string conString ="Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            SqlConnection connection = new SqlConnection(conString);
            string query = "INSERT INTO subjectResults(studentID,subjectID,subjectTeachID,termResult,TermNo) VALUES(@stuID,@subjID,@teachID,@result,@termNo)";
            string query2 = "SELECT * FROM subjectResults WHERE subjectID=@subj AND TermNo=@terNo AND studentID=@sub";
            string query3 = "INSERT INTO Capture(stu_ID,sub_ID,Asses1,Asses2,Asses3,Asses4,Test1,Test2,Term) VALUES(@stu_ID,@sub_ID,@Asses1,@Asses2,@Asses3,@Asses4,@Test1,@Test2,@Term)";
            SqlCommand sqlCommand = new SqlCommand(query, connection);
            SqlCommand sqlCommand1 = new SqlCommand(query2, connection);
            SqlCommand sqlCommand2 = new SqlCommand(query3, connection);

            sqlCommand.Parameters.AddWithValue("@stuID", Session["stuID"]);
            sqlCommand.Parameters.AddWithValue("@subjID", subID);
            sqlCommand.Parameters.AddWithValue("@teachID", subteachID);
            sqlCommand.Parameters.AddWithValue("@result", _final);
            sqlCommand.Parameters.AddWithValue("@termNo", termSelec);

            sqlCommand1.Parameters.AddWithValue("@sub", Session["stuID"]);
            sqlCommand1.Parameters.AddWithValue("@terNo", termSelec);
            sqlCommand1.Parameters.AddWithValue("@subj", subID);

            sqlCommand2.Parameters.AddWithValue("@stu_ID", Session["stuID"]);
            sqlCommand2.Parameters.AddWithValue("@sub_ID", subID);
            sqlCommand2.Parameters.AddWithValue("@Asses1", A1*10);
            sqlCommand2.Parameters.AddWithValue("@Asses2", A2*10);
            sqlCommand2.Parameters.AddWithValue("@Asses3", A3*10);
            sqlCommand2.Parameters.AddWithValue("@Asses4", A4*10);
            sqlCommand2.Parameters.AddWithValue("@Test1", T1*30);
            sqlCommand2.Parameters.AddWithValue("@Test2", T2*30);
            sqlCommand2.Parameters.AddWithValue("@Term", termSelec);

            DataTable dt = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(sqlCommand1);
            da1.Fill(dt);

            if (dt.Rows.Count >= 1)
            {
                MessageBox.Show(Page, "Mark already added");
            }
            else
            {

                connection.Open();
                sqlCommand.ExecuteNonQuery();
                sqlCommand2.ExecuteNonQuery();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            double A1, A2, A3, A4, T1, T2, sum;
            string As1, As2, As3, As4, Ts1, Ts2;
            As1= TextBox24.Text; As2= TextBox25.Text; As3= TextBox26.Text; As4= TextBox27.Text; Ts1 =TextBox28.Text; Ts2 = TextBox29.Text;
            A1 =Convert.ToDouble(As1); A2 =Convert.ToDouble(As2); A3 = Convert.ToDouble(As3); A4 =Convert.ToDouble(As4); T1 = Convert.ToDouble(Ts1); T2= Convert.ToDouble(Ts2);
            A1 = A1 * 0.1;
            A2 = A2 * 0.1;
            A3 = A3 * 0.1;
            A4 = A4 * 0.1;
            T1 = T1 * 0.3;
            T2 = T2 * 0.3;
            sum = A1 + A2 + A3 + A4 + T1 + T2;
            string subID = DropDownList2.SelectedItem.Value;
            string termStr = Request.Form["Term"];
            int termSelec = Convert.ToInt32(termStr);
            double _final;
            _final= sum;
            //string conString ="Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            SqlConnection connection = new SqlConnection(conString);
            string query = "INSERT INTO subjectResults(studentID,subjectID,subjectTeachID,termResult,TermNo) VALUES(@stuID,@subjID,@teachID,@result,@termNo)";
            string query2 = "SELECT * FROM subjectResults WHERE subjectID=@subj AND TermNo=@terNo AND studentID=@sub";
            string query3 = "INSERT INTO Capture(stu_ID,sub_ID,Asses1,Asses2,Asses3,Asses4,Test1,Test2,Term) VALUES(@stu_ID,@sub_ID,@Asses1,@Asses2,@Asses3,@Asses4,@Test1,@Test2,@Term)";
            SqlCommand sqlCommand = new SqlCommand(query, connection);
            SqlCommand sqlCommand1 = new SqlCommand(query2, connection);
            SqlCommand sqlCommand2 = new SqlCommand(query3, connection);

            sqlCommand.Parameters.AddWithValue("@stuID", Session["stuID"]);
            sqlCommand.Parameters.AddWithValue("@subjID", subID);
            sqlCommand.Parameters.AddWithValue("@teachID", subteachID);
            sqlCommand.Parameters.AddWithValue("@result", _final);
            sqlCommand.Parameters.AddWithValue("@termNo", termSelec);

            sqlCommand1.Parameters.AddWithValue("@sub", Session["stuID"]);
            sqlCommand1.Parameters.AddWithValue("@terNo", termSelec);
            sqlCommand1.Parameters.AddWithValue("@subj", subID);

            sqlCommand2.Parameters.AddWithValue("@stu_ID", Session["stuID"]);
            sqlCommand2.Parameters.AddWithValue("@sub_ID", subID);
            sqlCommand2.Parameters.AddWithValue("@Asses1", A1*10);
            sqlCommand2.Parameters.AddWithValue("@Asses2", A2*10);
            sqlCommand2.Parameters.AddWithValue("@Asses3", A3*10);
            sqlCommand2.Parameters.AddWithValue("@Asses4", A4*10);
            sqlCommand2.Parameters.AddWithValue("@Test1", T1*30);
            sqlCommand2.Parameters.AddWithValue("@Test2", T2*30);
            sqlCommand2.Parameters.AddWithValue("@Term", termSelec);

            DataTable dt = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(sqlCommand1);
            da1.Fill(dt);

            if (dt.Rows.Count >= 1)
            {
                MessageBox.Show(Page, "Mark already added");
            }
            else
            {

                connection.Open();
                sqlCommand.ExecuteNonQuery();
                sqlCommand2.ExecuteNonQuery();
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            double A1, A2, A3, A4, T1, T2, sum;
            string As1, As2, As3, As4, Ts1, Ts2;
            As1= TextBox31.Text; As2= TextBox32.Text; As3= TextBox33.Text; As4= TextBox34.Text; Ts1 =TextBox35.Text; Ts2 = TextBox36.Text;
            A1 =Convert.ToDouble(As1); A2 =Convert.ToDouble(As2); A3 = Convert.ToDouble(As3); A4 =Convert.ToDouble(As4); T1 = Convert.ToDouble(Ts1); T2= Convert.ToDouble(Ts2);
            A1 = A1 * 0.1;
            A2 = A2 * 0.1;
            A3 = A3 * 0.1;
            A4 = A4 * 0.1;
            T1 = T1 * 0.3;
            T2 = T2 * 0.3;
            sum = A1 + A2 + A3 + A4 + T1 + T2;
            string subID = DropDownList3.SelectedItem.Value;
            string termStr = Request.Form["Term"];
            int termSelec = Convert.ToInt32(termStr);
            double _final;
            _final= sum;
            //string conString ="Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            SqlConnection connection = new SqlConnection(conString);
            string query = "INSERT INTO subjectResults(studentID,subjectID,subjectTeachID,termResult,TermNo) VALUES(@stuID,@subjID,@teachID,@result,@termNo)";
            string query2 = "SELECT * FROM subjectResults WHERE subjectID=@subj AND TermNo=@terNo AND studentID=@sub";
            string query3 = "INSERT INTO Capture(stu_ID,sub_ID,Asses1,Asses2,Asses3,Asses4,Test1,Test2,Term) VALUES(@stu_ID,@sub_ID,@Asses1,@Asses2,@Asses3,@Asses4,@Test1,@Test2,@Term)";
            SqlCommand sqlCommand = new SqlCommand(query, connection);
            SqlCommand sqlCommand1 = new SqlCommand(query2, connection);
            SqlCommand sqlCommand2 = new SqlCommand(query3, connection);

            sqlCommand.Parameters.AddWithValue("@stuID", Session["stuID"]);
            sqlCommand.Parameters.AddWithValue("@subjID", subID);
            sqlCommand.Parameters.AddWithValue("@teachID", subteachID);
            sqlCommand.Parameters.AddWithValue("@result", _final);
            sqlCommand.Parameters.AddWithValue("@termNo", termSelec);

            sqlCommand1.Parameters.AddWithValue("@sub", Session["stuID"]);
            sqlCommand1.Parameters.AddWithValue("@terNo", termSelec);
            sqlCommand1.Parameters.AddWithValue("@subj", subID);

            sqlCommand2.Parameters.AddWithValue("@stu_ID", Session["stuID"]);
            sqlCommand2.Parameters.AddWithValue("@sub_ID", subID);
            sqlCommand2.Parameters.AddWithValue("@Asses1", A1*10);
            sqlCommand2.Parameters.AddWithValue("@Asses2", A2*10);
            sqlCommand2.Parameters.AddWithValue("@Asses3", A3*10);
            sqlCommand2.Parameters.AddWithValue("@Asses4", A4*10);
            sqlCommand2.Parameters.AddWithValue("@Test1", T1*30);
            sqlCommand2.Parameters.AddWithValue("@Test2", T2*30);
            sqlCommand2.Parameters.AddWithValue("@Term", termSelec);

            DataTable dt = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(sqlCommand1);
            da1.Fill(dt);

            if (dt.Rows.Count >= 1)
            {
                MessageBox.Show(Page, "Mark already added");
            }
            else
            {

                connection.Open();
                sqlCommand.ExecuteNonQuery();
                sqlCommand2.ExecuteNonQuery();
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            double A1, A2, A3, A4, T1, T2, sum;
            string As1, As2, As3, As4, Ts1, Ts2;
            As1= TextBox38.Text; As2= TextBox39.Text; As3= TextBox40.Text; As4= TextBox41.Text; Ts1 =TextBox42.Text; Ts2 = TextBox43.Text;
            A1 =Convert.ToDouble(As1); A2 =Convert.ToDouble(As2); A3 = Convert.ToDouble(As3); A4 =Convert.ToDouble(As4); T1 = Convert.ToDouble(Ts1); T2= Convert.ToDouble(Ts2);
            A1 = A1 * 0.1;
            A2 = A2 * 0.1;
            A3 = A3 * 0.1;
            A4 = A4 * 0.1;
            T1 = T1 * 0.3;
            T2 = T2 * 0.3;
            sum = A1 + A2 + A3 + A4 + T1 + T2;
            string subID = DropDownList4.SelectedItem.Value;
            string termStr = Request.Form["Term"];
            int termSelec = Convert.ToInt32(termStr);
            double _final;
            _final= sum;
            //string conString ="Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            SqlConnection connection = new SqlConnection(conString);
            string query = "INSERT INTO subjectResults(studentID,subjectID,subjectTeachID,termResult,TermNo) VALUES(@stuID,@subjID,@teachID,@result,@termNo)";
            string query2 = "SELECT * FROM subjectResults WHERE subjectID=@subj AND TermNo=@terNo AND studentID=@sub";
            string query3 = "INSERT INTO Capture(stu_ID,sub_ID,Asses1,Asses2,Asses3,Asses4,Test1,Test2,Term) VALUES(@stu_ID,@sub_ID,@Asses1,@Asses2,@Asses3,@Asses4,@Test1,@Test2,@Term)";
            SqlCommand sqlCommand = new SqlCommand(query, connection);
            SqlCommand sqlCommand1 = new SqlCommand(query2, connection);
            SqlCommand sqlCommand2 = new SqlCommand(query3, connection);

            sqlCommand.Parameters.AddWithValue("@stuID", Session["stuID"]);
            sqlCommand.Parameters.AddWithValue("@subjID", subID);
            sqlCommand.Parameters.AddWithValue("@teachID", subteachID);
            sqlCommand.Parameters.AddWithValue("@result", _final);
            sqlCommand.Parameters.AddWithValue("@termNo", termSelec);

            sqlCommand1.Parameters.AddWithValue("@sub", Session["stuID"]);
            sqlCommand1.Parameters.AddWithValue("@terNo", termSelec);
            sqlCommand1.Parameters.AddWithValue("@subj", subID);

            sqlCommand2.Parameters.AddWithValue("@stu_ID", Session["stuID"]);
            sqlCommand2.Parameters.AddWithValue("@sub_ID", subID);
            sqlCommand2.Parameters.AddWithValue("@Asses1", A1*10);
            sqlCommand2.Parameters.AddWithValue("@Asses2", A2*10);
            sqlCommand2.Parameters.AddWithValue("@Asses3", A3*10);
            sqlCommand2.Parameters.AddWithValue("@Asses4", A4*10);
            sqlCommand2.Parameters.AddWithValue("@Test1", T1*30);
            sqlCommand2.Parameters.AddWithValue("@Test2", T2*30);
            sqlCommand2.Parameters.AddWithValue("@Term", termSelec);

            DataTable dt = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(sqlCommand1);
            da1.Fill(dt);

            if (dt.Rows.Count >= 1)
            {
                MessageBox.Show(Page, "Mark already added");
            }
            else
            {

                connection.Open();
                sqlCommand.ExecuteNonQuery();
                sqlCommand2.ExecuteNonQuery();
            }
        }

        protected void Search_Click(object sender, EventArgs e)
        {
            string stu = TextBox1.Text;
            if (stu.Length >= 5)
            {
                string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
                string query1 = "SELECT* FROM student where stu_ID = @email and classID=@classID";

                //string query4 = "SELECT* FROM student WHERE stu_ = @email3";
                SqlConnection con = new SqlConnection(conString);

                SqlCommand command = new SqlCommand(query1, con);
                //SqlCommand command2 = new SqlCommand(query2, con);
                //SqlCommand command3 = new SqlCommand(query4, con);
                DataTable dt = new DataTable();
                //DataTable dt2 = new DataTable();
                //DataTable dt3 = new DataTable();
                SqlDataAdapter da1 = new SqlDataAdapter(command);
                //SqlDataAdapter da2 = new SqlDataAdapter(command2);
                //SqlDataAdapter da3 = new SqlDataAdapter(command3);
                command.Parameters.AddWithValue("@email", stu);
                command.Parameters.AddWithValue("@classID", classID);
                //command3.Parameters.AddWithValue("@email3", Session["Email"]);
                da1.Fill(dt);
                //da2.Fill(dt2);
                //da3.Fill(dt3);
                if (dt.Rows.Count == 1)
                {
                    Session["stuID"]= stu;
                    SqlConnection con1 = new SqlConnection(conString);
                    string query = "SELECT * FROM student WHERE stu_ID = @ID";
                    SqlCommand sqlCommand = new SqlCommand(query, con1);
                    sqlCommand.Parameters.AddWithValue("@ID", Session["stuID"]);
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
                        elecmail = Convert.ToString(dr["stu_email"]);
                    }
                    Label1.Text = Name+" "+Surname;
                    Label2.Text= elecmail;
                }
            }

        }
    }
}


