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
            Label3.Visible= false; Label4.Visible= false;
            Label5.Visible= false;
            Label6.Visible= false;
            Label7.Visible= false;
            Label8.Visible= false;
            Label9.Visible= false;
            Label10.Visible= false;
            Label11.Visible= false;
            Label12.Visible= false;
            Label13.Visible= false;
            Label14.Visible= false;
            Label15.Visible= false;
            Label16.Visible= false;
            Label17.Visible= false;
            Label18.Visible= false;
            Label19.Visible= false;
            Label20.Visible= false;
            Label21.Visible= false;
            Label22.Visible= false;
            Label23.Visible= false;
            Label24.Visible= false;
            Label25.Visible= false;
            Label26.Visible= false;
            Label27.Visible= false;
            Label28.Visible= false;
            Label29.Visible= false;
            Label30.Visible= false;
            Label31.Visible= false;
            Label32.Visible= false;
            Label33.Visible= false;
            Label34.Visible= false;
            Label35.Visible= false;
            Label36.Visible= false;
            Label37.Visible= false;
            Label38.Visible= false;
            Label39.Visible= false;
            Label40.Visible= false;
            Label41.Visible= false;
            Label42.Visible= false;
            Label43.Visible= false;
            Label44.Visible= false;
             

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int Ass1=0; int Ass2 = 0;int Ass3 = 0;int Ass4 = 0;int Tes1 = 0;int Tes2 = 0;
            double A1, A2, A3, A4, T1, T2, sum;
            string As1, As2, As3, As4, Ts1, Ts2;
            if (Asses1.Text!="")
            {As1= Asses1.Text;}
            else { As1="0"; }

            if (Asses2.Text!="") { As2= Asses2.Text; }
            else { As2= "0";}

            if (Asses3.Text!="") {As3= Asses3.Text;}
            else { As3="0"; }

            if (Asses4.Text!="") {As4= Asses4.Text; }
            else { As4="0"; }

            if (Test1.Text !="") {Ts1 =Test1.Text; }
            else { Ts1 ="0"; }

            if (Test2.Text!="") {Ts2 = Test2.Text; }
            else { Ts2 ="0"; }
            A1 =Convert.ToDouble(As1); A2 =Convert.ToDouble(As2); A3 = Convert.ToDouble(As3); A4 =Convert.ToDouble(As4); T1 = Convert.ToDouble(Ts1); T2= Convert.ToDouble(Ts2);
            A1 = A1 * 0.1;
            A2 = A2 * 0.1;
            A3 = A3 * 0.1;
            A4 = A4 * 0.1;
            T1 = T1 * 0.3;
            T2 = T2 * 0.3;
            sum = A1 + A2 + A3 + A4 + T1 + T2;
            string subID = DropDownList6.SelectedItem.Value;
            string termStr =DropDownList8.SelectedItem.Value;
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
            if (table.Rows.Count ==1 || dt.Rows.Count >= 1)
            {

                MessageBox.Show(Page, "Marks Already added");
                foreach (DataRow dr in table.Rows)
                {
                    Ass1= Convert.ToInt32(dr["Asses1"]);
                    Ass2=  Convert.ToInt32(dr["Asses2"]);
                    Ass3= Convert.ToInt32(dr["Asses3"]);
                    Ass4=  Convert.ToInt32(dr["Asses4"]);
                    Tes1= Convert.ToInt32(dr["Test1"]);
                    Tes2= Convert.ToInt32(dr["Test2"]);
                }
                if (Ass1 != 0) { Label3.Text=Convert.ToString(Ass1); Label3.Visible=true; Asses1.Visible= false; }
                else { Asses1.Visible= true; Label3.Visible= false; }
                if (Ass2 != 0) { Label4.Text=Convert.ToString(Ass2); Label4.Visible=true; Asses2.Visible= false; }
                else { Asses2.Visible= true; Label4.Visible= false; }
                if (Ass3 != 0) { Label5.Text=Convert.ToString(Ass3); Label5.Visible=true; Asses3.Visible= false; }
                else { Asses3.Visible= true; Label5.Visible= false; }
                if (Ass4 != 0) { Label6.Text=Convert.ToString(Ass4); Label6.Visible=true; Asses4.Visible= false; }
                else { Asses4.Visible= true; Label6.Visible= false; }
                if (Tes1 != 0) { Label7.Text=Convert.ToString(Tes1); Label7.Visible=true; Test1.Visible= false; }
                else { Test1.Visible= true; Label7.Visible= false; }
                if (Tes2 != 0) { Label8.Text=Convert.ToString(Tes2); Label8.Visible=true; Test2.Visible= false; }
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
                MessageBox.Show(Page, "Mark Added");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int Ass1 = 0; int Ass2 = 0; int Ass3 = 0; int Ass4 = 0; int Tes1 = 0; int Tes2 = 0;
            double A1, A2, A3, A4, T1, T2, sum;
            string As1, As2, As3, As4, Ts1, Ts2;
            
            if (TextBox3.Text!="")
            { As1= TextBox3.Text; }
            else { As1="0"; }

            if (TextBox4.Text!="") { As2=TextBox4.Text; }
            else { As2= "0"; }

            if (TextBox5.Text!="") { As3= TextBox5.Text; }
            else { As3="0"; }

            if (TextBox6.Text!="") { As4= TextBox6.Text; }
            else { As4="0"; }

            if (TextBox7.Text !="") { Ts1 =TextBox7.Text; }
            else { Ts1 ="0"; }

            if (TextBox8.Text!="") { Ts2 = TextBox8.Text; }
            else { Ts2 ="0"; }
            
            A1 =Convert.ToDouble(As1); A2 =Convert.ToDouble(As2); A3 = Convert.ToDouble(As3); A4 =Convert.ToDouble(As4); T1 = Convert.ToDouble(Ts1); T2= Convert.ToDouble(Ts2);
            A1 = A1 * 0.1;
            A2 = A2 * 0.1;
            A3 = A3 * 0.1;
            A4 = A4 * 0.1;
            T1 = T1 * 0.3;
            T2 = T2 * 0.3;
            sum = A1 + A2 + A3 + A4 + T1 + T2;
            string subID = DropDownList5.SelectedItem.Value;
            string termStr = DropDownList8.SelectedItem.Value;
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

                MessageBox.Show(Page, "Marks Already Added");
                foreach (DataRow dr in table.Rows)
                {
                    Ass1= Convert.ToInt32(dr["Asses1"]);
                    Ass2=  Convert.ToInt32(dr["Asses2"]);
                    Ass3= Convert.ToInt32(dr["Asses3"]);
                    Ass4=  Convert.ToInt32(dr["Asses4"]);
                    Tes1= Convert.ToInt32(dr["Test1"]);
                    Tes2= Convert.ToInt32(dr["Test2"]);
                }
                if (Ass1 != 0) { Label9.Text=Convert.ToString(Ass1); Label9.Visible=true; TextBox3.Visible= false; }
                else { TextBox3.Visible= true; Label9.Visible= false; }
                if (Ass2 != 0) { Label10.Text=Convert.ToString(Ass2); Label10.Visible=true; TextBox4.Visible= false; }
                else { TextBox4.Visible= true; Label10.Visible= false; }
                if (Ass3 != 0) { Label11.Text=Convert.ToString(Ass3); Label11.Visible=true; TextBox5.Visible= false; }
                else { TextBox5.Visible= true; Label11.Visible= false; }
                if (Ass4 != 0) { Label12.Text=Convert.ToString(Ass4); Label12.Visible=true; TextBox6.Visible= false; }
                else { TextBox6.Visible= true; Label12.Visible= false; }
                if (Tes1 != 0) { Label13.Text=Convert.ToString(Tes1); Label13.Visible=true; TextBox7.Visible= false; }
                else { TextBox7.Visible= true; Label13.Visible= false; }
                if (Tes2 != 0) { Label14.Text=Convert.ToString(Tes2); Label14.Visible=true; TextBox8.Visible= false; }
                else { TextBox8.Visible= true; Label14.Visible= false; }

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
                MessageBox.Show(Page, "Mark Added");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //int Ass1 = 0; int Ass2 = 0; int Ass3 = 0; int Ass4 = 0; int Tes1 = 0; int Tes2 = 0;
            double A1, A2, A3, A4, T1, T2, sum;
            string As1, As2, As3, As4, Ts1, Ts2;
            
            if (TextBox10.Text!="")
            { As1= TextBox10.Text; }
            else { As1="0"; }

            if (TextBox11.Text!="") { As2=TextBox11.Text; }
            else { As2= "0"; }

            if (TextBox12.Text!="") { As3= TextBox12.Text; }
            else { As3="0"; }

            if (TextBox13.Text!="") { As4= TextBox13.Text; }
            else { As4="0"; }

            if (TextBox14.Text !="") { Ts1 =TextBox14.Text; }
            else { Ts1 ="0"; }

            if (TextBox15.Text!="") { Ts2 = TextBox15.Text; }
            else { Ts2 ="0"; }

            A1 =Convert.ToDouble(As1); A2 =Convert.ToDouble(As2); A3 = Convert.ToDouble(As3); A4 =Convert.ToDouble(As4); T1 = Convert.ToDouble(Ts1); T2= Convert.ToDouble(Ts2);
            A1 = A1 * 0.1;
            A2 = A2 * 0.1;
            A3 = A3 * 0.1;
            A4 = A4 * 0.1;
            T1 = T1 * 0.3;
            T2 = T2 * 0.3;
            sum = A1 + A2 + A3 + A4 + T1 + T2;
            string subID = DropDownList7.SelectedItem.Value;
            string termStr = DropDownList8.SelectedItem.Value;
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

            }
                if (dt.Rows.Count >= 1)
            {
                MessageBox.Show(Page, "Mark has already added");
            }
            else
            {
                
                connection.Open();
                sqlCommand0.ExecuteNonQuery();
                sqlCommand2.ExecuteNonQuery();
                MessageBox.Show(Page, "Mark Added");
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            double A1, A2, A3, A4, T1, T2, sum;
            string As1, As2, As3, As4, Ts1, Ts2;
            //As1= TextBox17.Text; As2= TextBox18.Text; As3= TextBox19.Text; As4= TextBox20.Text; Ts1 =TextBox21.Text; Ts2 = TextBox22.Text;

            if (TextBox17.Text!="")
            { As1= TextBox17.Text; }
            else { As1="0"; }

            if (TextBox18.Text!="") { As2=TextBox18.Text; }
            else { As2= "0"; }

            if (TextBox19.Text!="") { As3= TextBox19.Text; }
            else { As3="0"; }

            if (TextBox20.Text!="") { As4= TextBox20.Text; }
            else { As4="0"; }

            if (TextBox21.Text !="") { Ts1 =TextBox21.Text; }
            else { Ts1 ="0"; }

            if (TextBox22.Text!="") { Ts2 = TextBox22.Text; }
            else { Ts2 ="0"; }

            A1 =Convert.ToDouble(As1); A2 =Convert.ToDouble(As2); A3 = Convert.ToDouble(As3); A4 =Convert.ToDouble(As4); T1 = Convert.ToDouble(Ts1); T2= Convert.ToDouble(Ts2);
            A1 = A1 * 0.1;
            A2 = A2 * 0.1;
            A3 = A3 * 0.1;
            A4 = A4 * 0.1;
            T1 = T1 * 0.3;
            T2 = T2 * 0.3;
            sum = A1 + A2 + A3 + A4 + T1 + T2;
            string subID = DropDownList1.SelectedItem.Value;
            string termStr = DropDownList8.SelectedItem.Value;
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
            if (dt.Rows.Count >= 1)
            {
                MessageBox.Show(Page, "Mark already added");
            }
            else
            {

                connection.Open();
                sqlCommand0.ExecuteNonQuery();
                sqlCommand2.ExecuteNonQuery();
                MessageBox.Show(Page, "Mark Added");
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            double A1, A2, A3, A4, T1, T2, sum;
            string As1, As2, As3, As4, Ts1, Ts2;
            if (TextBox24.Text!="") { As1= TextBox24.Text; }
            else { As1="0"; }

            if (TextBox25.Text!="") { As2=TextBox25.Text; }
            else { As2= "0"; }

            if (TextBox26.Text!="") { As3= TextBox26.Text; }
            else { As3="0"; }

            if (TextBox27.Text!="") { As4= TextBox27.Text; }
            else { As4="0"; }

            if (TextBox28.Text !="") { Ts1 =TextBox28.Text; }
            else { Ts1 ="0"; }

            if (TextBox29.Text!="") { Ts2 = TextBox29.Text; }
            else { Ts2 ="0"; }
            //As1= TextBox24.Text; As2= TextBox25.Text; As3= TextBox26.Text; As4= TextBox27.Text; Ts1 =TextBox28.Text; Ts2 = TextBox29.Text;
            A1 =Convert.ToDouble(As1); A2 =Convert.ToDouble(As2); A3 = Convert.ToDouble(As3); A4 =Convert.ToDouble(As4); T1 = Convert.ToDouble(Ts1); T2= Convert.ToDouble(Ts2);
            A1 = A1 * 0.1;
            A2 = A2 * 0.1;
            A3 = A3 * 0.1;
            A4 = A4 * 0.1;
            T1 = T1 * 0.3;
            T2 = T2 * 0.3;
            sum = A1 + A2 + A3 + A4 + T1 + T2;
            string subID = DropDownList2.SelectedItem.Value;
            string termStr = DropDownList8.SelectedItem.Value;
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
            if (dt.Rows.Count >= 1)
            {
                MessageBox.Show(Page, "Mark already added");
            }
            else
            {

                connection.Open();
                sqlCommand0.ExecuteNonQuery();
                sqlCommand2.ExecuteNonQuery();
                MessageBox.Show(Page, "Mark Added");
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            double A1, A2, A3, A4, T1, T2, sum;
            string As1, As2, As3, As4, Ts1, Ts2;
            //As1= TextBox31.Text; As2= TextBox32.Text; As3= TextBox33.Text; As4= TextBox34.Text; Ts1 =TextBox35.Text; Ts2 = TextBox36.Text;
            
            if (TextBox31.Text!="")
            { As1= TextBox31.Text; }
            else { As1="0"; }

            if (TextBox32.Text!="") { As2=TextBox32.Text; }
            else { As2= "0"; }

            if (TextBox33.Text!="") { As3= TextBox33.Text; }
            else { As3="0"; }

            if (TextBox34.Text!="") { As4= TextBox34.Text; }
            else { As4="0"; }

            if (TextBox35.Text !="") { Ts1 =TextBox35.Text; }
            else { Ts1 ="0"; }

            if (TextBox36.Text!="") { Ts2 = TextBox36.Text; }
            else { Ts2 ="0"; }
            A1 =Convert.ToDouble(As1); A2 =Convert.ToDouble(As2); A3 = Convert.ToDouble(As3); A4 =Convert.ToDouble(As4); T1 = Convert.ToDouble(Ts1); T2= Convert.ToDouble(Ts2);
            A1 = A1 * 0.1;
            A2 = A2 * 0.1;
            A3 = A3 * 0.1;
            A4 = A4 * 0.1;
            T1 = T1 * 0.3;
            T2 = T2 * 0.3;
            sum = A1 + A2 + A3 + A4 + T1 + T2;
            string subID = DropDownList3.SelectedItem.Value;
            string termStr = DropDownList8.SelectedItem.Value;
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

            if (dt.Rows.Count >= 1)
            {
                MessageBox.Show(Page, "Mark already added");
            }
            else
            {

                connection.Open();
                sqlCommand0.ExecuteNonQuery();
                sqlCommand2.ExecuteNonQuery();
                MessageBox.Show(Page, "Mark Added");
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            double A1, A2, A3, A4, T1, T2, sum;
            string As1, As2, As3, As4, Ts1, Ts2;
            if (TextBox38.Text!="")
            { As1= TextBox38.Text; }
            else { As1="0"; }

            if (TextBox39.Text!="") { As2=TextBox39.Text; }
            else { As2= "0"; }

            if (TextBox40.Text!="") { As3= TextBox40.Text; }
            else { As3="0"; }

            if (TextBox41.Text!="") { As4= TextBox41.Text; }
            else { As4="0"; }

            if (TextBox42.Text !="") { Ts1 =TextBox42.Text; }
            else { Ts1 ="0"; }

            if (TextBox43.Text!="") { Ts2 = TextBox43.Text; }
            else { Ts2 ="0"; }
            //As1= TextBox38.Text; As2= TextBox39.Text; As3= TextBox40.Text; As4= TextBox41.Text; Ts1 =TextBox42.Text; Ts2 = TextBox43.Text;
            A1 =Convert.ToDouble(As1); A2 =Convert.ToDouble(As2); A3 = Convert.ToDouble(As3); A4 =Convert.ToDouble(As4); T1 = Convert.ToDouble(Ts1); T2= Convert.ToDouble(Ts2);
            A1 = A1 * 0.1;
            A2 = A2 * 0.1;
            A3 = A3 * 0.1;
            A4 = A4 * 0.1;
            T1 = T1 * 0.3;
            T2 = T2 * 0.3;
            sum = A1 + A2 + A3 + A4 + T1 + T2;
            string subID = DropDownList4.SelectedItem.Value;
            string termStr = DropDownList8.SelectedItem.Value;
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

            if (dt.Rows.Count >= 1)
            {
                MessageBox.Show(Page, "Mark already added");
            }
            else
            {

                connection.Open();
                sqlCommand0.ExecuteNonQuery();
                sqlCommand2.ExecuteNonQuery();
                MessageBox.Show(Page, "Mark Added");
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


