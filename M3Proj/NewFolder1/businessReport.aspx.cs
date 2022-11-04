using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace M3Proj
{

    public partial class businessReport : System.Web.UI.Page
    {
        public int gr8;
        public int gr9;
        public int gr10;
        public int gr11;
        public int gr12;

        public int am8;
        public int am9;
        public int am10;
        public int am11;
        public int am12;

        public int boy;
        public int girl;

        string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conString);
            string q1 = "select count(stu_ID) FROM student where classID= 8001";
            string q2 = "select count(stu_ID) FROM student where classID= 9001";
            string q3 = "select count(stu_ID) FROM student where classID= 10001";
            string q4 = "select count(stu_ID) FROM student where classID= 11001";
            string q5 = "select count(stu_ID) FROM student where classID= 12001";
            SqlCommand c1 = new SqlCommand(q1, con);
            SqlCommand c2 = new SqlCommand(q2, con);
            SqlCommand c3 = new SqlCommand(q3, con);
            SqlCommand c4 = new SqlCommand(q4, con);
            SqlCommand c5 = new SqlCommand(q5, con);
            con.Open();
            gr8 = Convert.ToInt32(c1.ExecuteScalar());
            gr9 = Convert.ToInt32(c2.ExecuteScalar());
            gr10 = Convert.ToInt32(c3.ExecuteScalar());
            gr11 = Convert.ToInt32(c4.ExecuteScalar());
            gr12 = Convert.ToInt32(c5.ExecuteScalar());




            string l1 = "select sum(stu_Fees) FROM student where classID= 8001";
            string l2 = "select sum(stu_Fees) FROM student where classID= 9001";
            string l3 = "select sum(stu_Fees) FROM student where classID= 10001";
            string l4 = "select sum(stu_Fees) FROM student where classID= 11001";
            string l5 = "select sum(stu_Fees) FROM student where classID= 12001";
            SqlCommand a1 = new SqlCommand(l1, con);
            SqlCommand a2 = new SqlCommand(l2, con);
            SqlCommand a3 = new SqlCommand(l3, con);
            SqlCommand a4 = new SqlCommand(l4, con);
            SqlCommand a5 = new SqlCommand(l5, con);

            am8 = Convert.ToInt32(a1.ExecuteScalar());
            am9 = Convert.ToInt32(a2.ExecuteScalar());
            am10 = Convert.ToInt32(a3.ExecuteScalar());
            am11 = Convert.ToInt32(a4.ExecuteScalar());
            am12 = Convert.ToInt32(a5.ExecuteScalar());

            string b1 = "select count(stu_ID) FROM student where stu_gender LIKE '%Male%'";
            string g1 = "select count(stu_ID) FROM student where stu_gender LIKE '%Female%'";

            SqlCommand cb = new SqlCommand(b1, con);
            SqlCommand cg = new SqlCommand(g1, con);

            boy = Convert.ToInt32(cb.ExecuteScalar());
            girl = Convert.ToInt32(cg.ExecuteScalar());


            con.Close();


        }
    }
}