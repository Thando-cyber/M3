using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace M3Proj
{
    public partial class Report2 : System.Web.UI.Page
    {


        public string name;
        public string teachername;
        public string stuID;
        public string division;
        public string grade;
        public string term;
        public int fees;
        public DataTable dt;
        public DataTable dt2;
        public DataTable dt3;
        public DataTable dt4;
        public int avg1;
        public int avg2;
        public int avg3;
        public int avg4;
        public char rate1;
        public char rate2;
        public char rate3;
        public char rate4;
        public int total;

        string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
        protected void Page_Load(object sender, EventArgs e)
        {
            //Details
            name =  Session["rName"].ToString();
            division = Session["rDivison"].ToString();
            grade = Session["rGrade"].ToString();
            term = Session["rTerm"].ToString();
            teachername =Session["rTeachName"].ToString();
            stuID = Convert.ToString(Session["rID"]);
            fees = Convert.ToInt16(Session["rFees"]);

            //Term 1
            SqlConnection con = new SqlConnection(conString);
            string query = "SELECT* FROM subjectResults where studentID = @ID AND TermNo = 1";
            SqlCommand cmd = new SqlCommand(query,con);

            cmd.Parameters.AddWithValue("@ID",stuID);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);

            //Term 2
            string query2 = "SELECT* FROM subjectResults where studentID = @ID AND TermNo = 2";
            SqlCommand cmd2 = new SqlCommand(query2, con);

            cmd2.Parameters.AddWithValue("@ID", stuID);
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            dt2 = new DataTable();
            da2.Fill(dt2);

            //Term 3
            string query3 = "SELECT* FROM subjectResults where studentID = @ID AND TermNo = 3";
            SqlCommand cmd3 = new SqlCommand(query3, con);

            cmd3.Parameters.AddWithValue("@ID", stuID);
            SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
            dt3 = new DataTable();
            da3.Fill(dt3);

            //Term 4
            string query4 = "SELECT* FROM subjectResults where studentID = @ID AND TermNo = 4";
            SqlCommand cmd4 = new SqlCommand(query4, con);

            cmd4.Parameters.AddWithValue("@ID", stuID);
            SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
            dt4 = new DataTable();
            da4.Fill(dt4);

            //Averages
            string q1 = "SELECT AVG(termResult) From subjectResults where studentID = @ID AND TermNo = 1";
            string q2 = "SELECT AVG(termResult) From subjectResults where studentID = @ID AND TermNo = 2";
            string q3 = "SELECT AVG(termResult) From subjectResults where studentID = @ID AND TermNo = 3";
            string q4 = "SELECT AVG(termResult) From subjectResults where studentID = @ID AND TermNo = 4";
            SqlCommand c1 = new SqlCommand(q1,con);
            SqlCommand c2 = new SqlCommand(q2, con);
            SqlCommand c3 = new SqlCommand(q3, con);
            SqlCommand c4 = new SqlCommand(q4, con);

            c1.Parameters.AddWithValue("@ID", stuID);
            c2.Parameters.AddWithValue("@ID", stuID);
            c3.Parameters.AddWithValue("@ID", stuID);
            c4.Parameters.AddWithValue("@ID", stuID);

            con.Open();

            if ( c1.ExecuteScalar() != DBNull.Value) {
                avg1 = Convert.ToUInt16(c1.ExecuteScalar());
            }
            if (c2.ExecuteScalar() != DBNull.Value)
            {
                avg2 = Convert.ToUInt16(c2.ExecuteScalar());
            }
            if (c3.ExecuteScalar() != DBNull.Value)
            {
                avg3 = Convert.ToUInt16(c3.ExecuteScalar());
            }
            if (c4.ExecuteScalar() != DBNull.Value)
            {
                avg4 = Convert.ToUInt16(c4.ExecuteScalar());
            }
           
            con.Close();


           
               
                if (avg1 > 50)
                {
                    rate1 = 'P';
                }

                else if (avg1 >0 && avg1 < 50)
                {
                    rate1 = 'F';
                }

                if (avg2 > 50)
                {
                    rate2 = 'P';
                }
            else if (avg2 >0 && avg2 < 50)
            {
                rate2 = 'F';
            }

            if (avg3 > 50)
                {
                    rate3 = 'P';
                }
            else if (avg3 >0 && avg3 < 50)
            {
                rate3= 'F';
            }

            if (avg4 > 50)
                {
                    rate4 = 'P';
                }

            else if (avg4 >0 && avg4 < 50)
            {
                rate4 = 'F';
            }



            total = (avg1 + avg2 + avg3 + avg4)/4;
        }
         
            
        }


    }
