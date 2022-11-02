using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using M3Proj.Models;

namespace M3Proj.NewFolder1
{
    public partial class AddStudents : System.Web.UI.Page
    {
        public int stunum;
        public int rowNum;
        public int newNum = 0;
        public string conString = "Data Source = 146.230.177.46; Initial Catalog = GroupPmb2; User ID = GroupPmb2; Password=b45dc2; Integrated Security = False";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userType"].ToString() == "Administrator")
            {
                AdminContent.Visible=true;
                String query = "SELECT * FROM student ORDER BY stu_ID DESC";
                SqlConnection con = new SqlConnection(conString);
                SqlCommand sqlCommand = new SqlCommand(query, con);
                SqlDataAdapter DA = new SqlDataAdapter(sqlCommand);
                DataTable dt = new DataTable();
                DA.Fill(dt);
                rowNum= dt.Rows.Count;
                foreach (DataRow dc in dt.Rows)
                {
                    stunum = Convert.ToInt32(dc["stu_ID"]);
                }
                newNum = (stunum+rowNum);
                Label2.Text= Convert.ToString(newNum);


            }
            else
            {
                AdminContent.Visible=false;
            }
        }



        protected void Upload(object sender, EventArgs e)
        {
            //Access the File using the Name of HTML INPUT File.
            HttpPostedFile postedFile = Request.Files["FileUpload"];

            //Check if File is available.
            if (postedFile != null && postedFile.ContentLength > 0)
            {
                //Save the File.
                string filePath = Server.MapPath("~/logos/") + Path.GetFileName(postedFile.FileName);
                postedFile.SaveAs(filePath);
                lblMessage.Visible = true;
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string Password = Convert.ToString(newNum)+"a";
            string a = Select1.Value;
            int grade = Convert.ToInt32(a);
            string b = Select2.Value;
            char division = Convert.ToChar(b);
            int classid = 0;
            string email = Convert.ToString(newNum)+"stu.kharina.ac.za";
            int fees = 5000;
            string classes = "SELECT * FROM classes WHERE grade=@grade AND Division=@division";
            string query = "INSERT INTO student(stu_ID,classID,stu_name,stu_surname,stu_address,stu_email,stu_age,stu_gender,stu_Fees,parentContact,DOB) VALUES(@stu_ID,@classID,@stu_name,@stu_surname,@stu_address,@stu_email,@stu_age,@stu_gender,@stu_Fees,@parentContact,@DOB)";
            //string query2 = "SELECT * FROM student WHERE stu_name=@name AND DOB";
            SqlConnection con = new SqlConnection(conString);
            SqlCommand sqlCommand = new SqlCommand(query, con);
            SqlCommand sqlCommand1 = new SqlCommand(classes,con);
            sqlCommand1.Parameters.AddWithValue("@grade",grade);
            sqlCommand1.Parameters.AddWithValue("@division",division);
            SqlDataAdapter DA = new SqlDataAdapter(sqlCommand1);
            DataTable dt = new DataTable();
            DA.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                classid= Convert.ToInt32(dr["class_id"]);
            }

            sqlCommand.Parameters.AddWithValue("@stu_ID",Convert.ToString(newNum));
            sqlCommand.Parameters.AddWithValue("@classID",classid);
            sqlCommand.Parameters.AddWithValue("@stu_name", FirstName.Text);
            sqlCommand.Parameters.AddWithValue("@stu_surname",lastname.Text);
            sqlCommand.Parameters.AddWithValue("@stu_address",addre.Text);
            sqlCommand.Parameters.AddWithValue("@stu_email",email);
            sqlCommand.Parameters.AddWithValue("@stu_age",stuAge.Text);
            sqlCommand.Parameters.AddWithValue("@stu_Fees",fees);
            sqlCommand.Parameters.AddWithValue("@parentContact",contac.Text);
            sqlCommand.Parameters.AddWithValue("@DOB",DOB.Text);
            sqlCommand.Parameters.AddWithValue("@stu_gender",lang.Value);
            con.Open();

            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = email, Email = email };
            IdentityResult result = manager.Create(user, Password);
            if (result.Succeeded)
            {

                signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            }
            
            sqlCommand.ExecuteNonQuery();
        }
    }
}