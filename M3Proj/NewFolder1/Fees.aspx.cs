using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace M3Proj.NewFolder1
{
    public partial class Fees : System.Web.UI.Page
    {
        public decimal amount = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView2.Visible=true;
            string str1 = Session["Email"].ToString();
            int n1 = str1.IndexOf("@");
            string str2 = str1.Substring(0, n1);
            Session["stuID"] = str2;

            
            string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            SqlConnection con = new SqlConnection(conString);

            string query = "SELECT * FROM student WHERE stu_email = @Email";
            //string query1 = "SELECT stu_Fees FROM student WHERE stu_email = @Email";
            SqlCommand sqlCommand = new SqlCommand(query,con);
            //SqlCommand sqlCommand1 = new SqlCommand(query1, con);

            sqlCommand.Parameters.AddWithValue("@Email", Session["Email"]);
            //sqlCommand1.Parameters.AddWithValue("@Email", Session["Email"]);
            SqlDataAdapter DA = new SqlDataAdapter(sqlCommand);
            //SqlDataAdapter DA1 = new SqlDataAdapter(sqlCommand1);
            DataSet dataSet = new DataSet();
            //DataTable daTa = new DataTable();
            DataTable dt = new DataTable();
            DA.Fill(dt);
            
            

            //DA1.Fill(daTa);

           

            foreach (DataRow dr in dt.Rows)
            {
                amount = Convert.ToDecimal(dr["stu_Fees"]);

            }



            /*GridView1.DataSource = dt;
            GridView1.DataBind();

            GridView2.DataSource = daTa;
            GridView2.DataBind();
            */


        }

        
    }
}