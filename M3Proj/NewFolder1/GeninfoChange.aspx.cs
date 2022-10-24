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
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userType"].ToString() == "Student")
            {
                Title = Session["userType"].ToString();
                string str1 = Session["Email"].ToString();
                int n1 = str1.IndexOf("@");
                str2 = str1.Substring(0, n1);
                Session["ID"] = str2;
                string conString =
                    "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
                SqlConnection con = new SqlConnection(conString);
                string query = "SELECT * FROM student WHERE stu_email = @Email";
                SqlCommand sqlCommand = new SqlCommand(query, con);
                sqlCommand.Parameters.AddWithValue("@Email", Session["Email"]);
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

                }

                FullName = name + " " + Surname;
                FirstName.Text = name;
                FirstName.ReadOnly = true;
                lastname.Text=Surname;
                lastname.ReadOnly= true;
                email.Text=Session["Email"].ToString();
                email.ReadOnly= true;
                TextBox1.Text= gender;
                TextBox1.ReadOnly = true;

                /*
                addre.Text= Address;
                Mobile.Text=cont;
                contac.Text=cont;
                */
            }
            else if (Session["userType"].ToString() == "Teacher")
            {

                string str1 = Session["Email"].ToString();
                int n1 = str1.IndexOf("@");
                str2 = str1.Substring(0, n1);
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

                }
             
                FullName = name + " " + Surname;
                
                
                FirstName.Text = name;
                FirstName.ReadOnly = true;
                lastname.Text=Surname;
                lastname.ReadOnly= true;
                email.Text=Session["Email"].ToString();
                email.ReadOnly= true;
                TextBox1.Text= gender;
                TextBox1.ReadOnly = true;

                

                //.Controls.Add(new LiteralControl("<script type = 'text/javascript'> alert('The user is a student')<script>"));

            }

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

            if (Session["userType"].ToString() == "Student")
            {
                string sqlStmt;
                string conString;
                SqlConnection cn = null;
                SqlCommand cmd = null;
                //SqlDateTime sqldatenull;
                sqlStmt = "Update student SET stu_name=@FirstName ,stu_surname=@LastName,stu_address=@Address,parentContact=@contact WHERE  stu_email = @Email";
                conString = "Data Source = 146.230.177.46; Initial Catalog = GroupPmb2; User ID = GroupPmb2; Password=b45dc2; Integrated Security = False";
                cn = new SqlConnection(conString);
                cmd = new SqlCommand(sqlStmt, cn);
                cmd.Parameters.AddWithValue("@FirstName", FirstName.Text);
                cmd.Parameters.AddWithValue("@LastName", lastname.Text);
                cmd.Parameters.AddWithValue("@Address", addre.Text);
                cmd.Parameters.AddWithValue("@contact",contac.Text);
                cmd.Parameters.AddWithValue("@Email",Session["Email"]);
                /*
                if (contac.Text == " ")
                {
                    Label1.Text= "Contact cannot be empty";
                }
                else if (addre.Text ==" ")
                {
                    Label1.Text= "Address cannot be empty";
                }
                else if (Mobile.Text== " ")
                {
                    Label1.Text= "Mobile cannot be empty";
                }
                */
                cn.Open();
                cmd.ExecuteNonQuery();
                Label1.Text = "Record Inserted Succesfully";
                
            }else if (Session["userType"].ToString() == "Teacher")
            {
                string sqlStmt;
                string conString;
                SqlConnection cn = null;
                SqlCommand cmd = null;
                //SqlDateTime sqldatenull;
                sqlStmt = "Update Teachers SET teach_firstname=@FirstName ,teach_lastname=@LastName,Address=@Address,contactNum=@contact WHERE  teach_email = @Email";
                conString = "Data Source = 146.230.177.46; Initial Catalog = GroupPmb2; User ID = GroupPmb2; Password=b45dc2; Integrated Security = False";
                cn = new SqlConnection(conString);
                cmd = new SqlCommand(sqlStmt, cn);
                cmd.Parameters.AddWithValue("@FirstName", FirstName.Text);
                cmd.Parameters.AddWithValue("@LastName", lastname.Text);
                cmd.Parameters.AddWithValue("@Address", addre.Text);
                cmd.Parameters.AddWithValue("@contact", contac.Text);
                cmd.Parameters.AddWithValue("@Email", Session["Email"]);
                /*
                if (contac.Text == " ")
                {
                    Label1.Text= "Contact cannot be empty";
                }
                else if (addre.Text ==" ")
                {
                    Label1.Text= "Address cannot be empty";
                }
                else if (Mobile.Text== " ")
                {
                    Label1.Text= "Mobile cannot be empty";
                }
                */
                cn.Open();
                cmd.ExecuteNonQuery();
                Label1.Text = "Record Inserted Succesfully";

            }
        }
    }
}