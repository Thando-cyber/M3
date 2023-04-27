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
    public partial class GeninfoChange : System.Web.UI.Page
    {
        public string name = " ";
        public string Surname = " ";
        public string Address = " ";
        public int age = 0;
        public string gender = " ";
        public decimal fees = 0;
        public string cont = " ";
        public string FullName = " ";
        public string str2 = " ";
        public string title = " ";
        public string em = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userType"].ToString() == "Student")
            {
                Session["userType2"]= "Student";
                Search.Visible = false;
                title = Session["userType"].ToString();
                string str1 = Session["Email"].ToString();
                int n1 = str1.IndexOf("@");
                str2 = str1.Substring(0, n1);
                Session["stuID"]= str2;
                Session["ID"] = str2;
                string conString ="Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
                SqlConnection con = new SqlConnection(conString);
                string query = "SELECT * FROM student WHERE stu_ID = @ID";
                SqlCommand sqlCommand = new SqlCommand(query, con);
                sqlCommand.Parameters.AddWithValue("@ID", Session["ID"]);
                SqlDataAdapter DA = new SqlDataAdapter(sqlCommand);
                DataTable dt = new DataTable();
                DA.Fill(dt);

                foreach (DataRow dr in dt.Rows)
                {
                    name = Convert.ToString(dr["stu_name"]);
                    Surname = Convert.ToString(dr["stu_surname"]);
                    Address = Convert.ToString(dr["stu_address"]);
                    age = Convert.ToInt32(dr["stu_age"]);
                    gender = Convert.ToString(dr["stu_gender"]);
                    fees = Convert.ToDecimal(dr["stu_Fees"]);
                    cont = Convert.ToString(dr["parentContact"]);
                    em= Convert.ToString(dr["stu_email"]);
                }
                FullName = name + " " + Surname;

                FirstName.Text = name;
                FirstName.Visible = false;
                Label2.Text =name;

                lastname.Text=Surname;
                lastname.Visible= false;
                Label3.Text=Surname;

                email.Text=em;
                email.Visible= false;
                Label4.Text =em;

                TextBox1.Text= gender;
                TextBox1.Visible = false;
                Label6.Text = gender;
                lang.Visible =false;

                stuAge.Text = age.ToString();
                stuAge.Visible = false;
                Label5.Text = age.ToString();
                /*
                addre.Text= Address;
                Mobile.Text=cont;
                contac.Text=cont;
                */
            }
            else if (Session["userType"].ToString() == "Teacher")
            {
                lang.Visible =false;
                Session["userType2"]= "Teacher";
                Search.Visible = false;
                string str1 = Session["Email"].ToString();
                int n1 = str1.IndexOf("@");
                str2 = str1.Substring(0, n1);
                Session["teachID"]=str2;
                Session["ID"] = str2;
                string conString =
                    "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
                SqlConnection con = new SqlConnection(conString);
                string query = "SELECT * FROM Teachers WHERE teach_email = @Email";
                SqlCommand sqlCommand = new SqlCommand(query, con);
                sqlCommand.Parameters.AddWithValue("@Email", Session["Email"]);
                SqlDataAdapter DA = new SqlDataAdapter(sqlCommand);
                DataTable dt = new DataTable();
                DA.Fill(dt);

                foreach (DataRow dr in dt.Rows)
                {
                    name = Convert.ToString(dr["teach_firstname"]);
                    Surname = Convert.ToString(dr["teach_lastname"]);
                    Address = Convert.ToString(dr["Address"]);
                    age = Convert.ToInt32(dr["age"]);
                    gender = Convert.ToString(dr["gender"]);
                    //fees = Convert.ToDecimal(dr["stu_Fees"]);
                    cont = Convert.ToString(dr["contactNum"]);
                    title = Convert.ToString(dr["teach_title"]);
                    em= Convert.ToString(dr["teach_email"]);

                }

                FullName = name + " " + Surname;

                FirstName.Text = name;
                FirstName.Visible = false;
                Label2.Text =name;

                lastname.Text=Surname;
                lastname.Visible= false;
                Label3.Text=Surname;

                email.Text=em;
                email.Visible= false;
                Label4.Text =em;

                TextBox1.Text= gender;
                TextBox1.Visible = false;
                Label6.Text = gender;
                lang.Visible =false;

                stuAge.Text = age.ToString();
                stuAge.Visible = false;
                Label5.Text = age.ToString();

            }
            else if (Session["userType"].ToString() == "Administrator")
            {
                TextBox1.Visible =false;
                Search.Visible = true;
                Label2.Visible=false;
                Label3.Visible= false;
                Label4.Visible=false;
                Label5.Visible=false;
                Label6.Visible=false;

            }
        }



        protected void btnAdd_Click(object sender, EventArgs e)
        {

            if (Session["userType2"].ToString() == "Student")
            {

                string sqlStmt;
                string conString;
                string Gender = gender;
                if (Session["userType"].ToString()=="Administrator")
                {
                    Gender=lang.Value;

                }

                SqlConnection cn = null;
                SqlCommand cmd = null;
                //SqlDateTime sqldatenull;
                sqlStmt = "Update student SET stu_name=@FirstName ,stu_surname=@LastName,stu_address=@Address,stu_age=@age,stu_gender=@gender,parentContact=@contact WHERE  stu_ID = @id";
                conString = "Data Source = 146.230.177.46; Initial Catalog = GroupPmb2; User ID = GroupPmb2; Password=b45dc2; Integrated Security = False";
                cn = new SqlConnection(conString);
                cmd = new SqlCommand(sqlStmt, cn);
                if (addre.Text =="")
                {
                    addre.Text= Address;
                }
                if (contac.Text == "")
                {
                    contac.Text = cont;
                }
                if (FirstName.Text =="")
                {
                    FirstName.Text = name;
                }
                if (lastname.Text =="")
                {

                }
                if (stuAge.Text =="")
                {

                }
                cmd.Parameters.AddWithValue("@FirstName", FirstName.Text);
                cmd.Parameters.AddWithValue("@LastName", lastname.Text);
                cmd.Parameters.AddWithValue("@Address", addre.Text);
                cmd.Parameters.AddWithValue("@contact", contac.Text);
                cmd.Parameters.AddWithValue("@id", Session["ID"]);
                cmd.Parameters.AddWithValue("@age", stuAge.Text);
                cmd.Parameters.AddWithValue("@gender", Gender);
                cn.Open();
                cmd.ExecuteNonQuery();
                Label1.Text = "Record Inserted Succesfully";
                Response.Redirect("/NewFolder1/Geninfo.aspx");

            }
            else if (Session["userType2"].ToString() == "Teacher")
            {
                string sqlStmt;
                string conString;
                SqlConnection cn = null;
                SqlCommand cmd = null;
                //SqlDateTime sqldatenull;
                sqlStmt = "Update Teachers SET teach_firstname=@FirstName ,teach_lastname=@LastName,Address=@Address,contactNum=@contact , age=@age WHERE  teach_ID = @id";
                conString = "Data Source = 146.230.177.46; Initial Catalog = GroupPmb2; User ID = GroupPmb2; Password=b45dc2; Integrated Security = False";
                cn = new SqlConnection(conString);
                cmd = new SqlCommand(sqlStmt, cn);
                if (addre.Text =="")
                {
                    addre.Text= Address;
                }
                if (contac.Text == "")
                {
                    contac.Text = cont;
                }
                if (FirstName.Text =="")
                {
                    FirstName.Text = name;
                }
                if (lastname.Text =="")
                {
                    lastname.Text= Surname;
                }
                if (stuAge.Text =="")
                {
                    stuAge.Text=age.ToString();
                }
                cmd.Parameters.AddWithValue("@FirstName", FirstName.Text);
                cmd.Parameters.AddWithValue("@LastName", lastname.Text);
                cmd.Parameters.AddWithValue("@Address", addre.Text);
                cmd.Parameters.AddWithValue("@contact", contac.Text);
                cmd.Parameters.AddWithValue("@id", Session["ID"]);
                cmd.Parameters.AddWithValue("@age",stuAge.Text);

                cn.Open();
                cmd.ExecuteNonQuery();
                Label1.Text = "Record Inserted Succesfully";
                Response.Redirect("/NewFolder1/Geninfo.aspx");

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string userinput = searchID.Text;
            if (userinput.Length >=5)
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
                    Session["userType2"] = "Student";
                    Session["ID"] = userinput;
                    Session["stuID"] = userinput;
                    title = Session["userType2"].ToString();
                    string str1 = Session["Email"].ToString();
                    //int n1 = str1.IndexOf("@");
                    //str2 = str1.Substring(0, n1);
                    Session["stuID"]= Session["ID"].ToString();

                    conString ="Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
                    SqlConnection con1 = new SqlConnection(conString);
                    string query = "SELECT * FROM student WHERE stu_ID = @ID";
                    SqlCommand sqlCommand = new SqlCommand(query, con);
                    sqlCommand.Parameters.AddWithValue("@ID", Session["ID"]);
                    SqlDataAdapter DA = new SqlDataAdapter(sqlCommand);
                    DataTable dt1 = new DataTable();
                    DA.Fill(dt1);

                    foreach (DataRow dr in dt1.Rows)
                    {
                        name = Convert.ToString(dr["stu_name"]);
                        Surname = Convert.ToString(dr["stu_surname"]);
                        Address = Convert.ToString(dr["stu_address"]);
                        age = Convert.ToInt32(dr["stu_age"]);
                        gender = Convert.ToString(dr["stu_gender"]);
                        fees = Convert.ToDecimal(dr["stu_Fees"]);
                        cont = Convert.ToString(dr["parentContact"]);
                        em = Convert.ToString(dr["stu_email"]);
                    }
                    FullName = name + " " + Surname;
                    email.Text=em;
                    email.ReadOnly= true;
                    Label2.Visible=false;
                    Label3.Visible= false;
                    Label4.Visible=false;
                    Label5.Visible=false;
                    Label6.Visible=false;

                }
                else if (dt2.Rows.Count == 1)
                {

                }
                else
                {

                }
            }
            else
            {

            }

        }
    }
}