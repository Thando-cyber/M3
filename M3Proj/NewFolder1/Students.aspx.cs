using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Timers;
using System.Configuration;
namespace M3Proj
{

   
    public partial class WebForm1 : System.Web.UI.Page
    {

        public String sName;
        public String sLast;
        public String sID;
        public String sEmail;
        public String sGender;
        public String pNum;
        public String sAge;
       

        protected void Page_Load(object sender, EventArgs e)
        {
            getStudent();

            datagrid.HeaderRow.Cells[1].Text = "ID";
            datagrid.HeaderRow.Cells[3].Text = "Name";
            datagrid.HeaderRow.Cells[4].Text = "Surname";
            datagrid.HeaderRow.Cells[8].Text = "Gender";
            datagrid.HeaderRow.HorizontalAlign = HorizontalAlign.Left;





        }

        public DataSet getStudent(){

            string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            SqlConnection con = new SqlConnection(conString);
            
            string query = "SELECT * FROM Teachers WHERE teach_email = @email ";
            SqlCommand command = new SqlCommand(query, con);
            string email = Session["Email"].ToString();
            command.Parameters.AddWithValue("@email", Session["Email"].ToString());
            

            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable DT = new DataTable();
            DataSet ds = new DataSet();
            da.Fill(DT);
           

            string teachID = " ";
            foreach (DataRow dr in DT.Rows)
            {
                teachID = Convert.ToString(dr[0]);
            }



            
            string query2 = "SELECT * FROM classes WHERE teacher_id = @Id";
            SqlCommand command2 = new SqlCommand(query2, con);
            command2.Parameters.AddWithValue("@Id", teachID);
            SqlDataAdapter DA = new SqlDataAdapter(command2);
            DataTable dt = new DataTable();
            DA.Fill(dt);
            int classId = 0;
            foreach (DataRow dr in dt.Rows)
            {
                classId = Convert.ToInt32(dr["class_id"]);
            }
            Session["classID"] = classId;


            string query3 = "SELECT * FROM student WHERE classID = @classId";
            SqlCommand command3 = new SqlCommand(query3, con);
            command3.Parameters.AddWithValue("@classID", Session["classID"]);
            SqlDataAdapter da3 = new SqlDataAdapter(command3);
            DataTable DT3 = new DataTable();
            DataSet data = new DataSet();

            da3.Fill(data);

            return data;

        }
        protected void datagrid_SelectedIndexChanged(object sender, EventArgs e)
        {
            sID = datagrid.Rows[datagrid.SelectedIndex].Cells[1].Text.ToString();
            sName = datagrid.Rows[datagrid.SelectedIndex].Cells[3].Text.ToString();
            sLast = datagrid.Rows[datagrid.SelectedIndex].Cells[4].Text.ToString();
            sEmail = datagrid.Rows[datagrid.SelectedIndex].Cells[6].Text.ToString();
            sGender = datagrid.Rows[datagrid.SelectedIndex].Cells[8].Text.ToString();
            pNum = datagrid.Rows[datagrid.SelectedIndex].Cells[10].Text.ToString();
            sAge = datagrid.Rows[datagrid.SelectedIndex].Cells[7].Text.ToString();
        }

        protected void datagrid_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.Cells.Count > 1) {
               
                e.Row.Cells[2].Visible = false;
                e.Row.Cells[5].Visible = false;
                e.Row.Cells[6].Visible = false;
                e.Row.Cells[7].Visible = false;
                e.Row.Cells[9].Visible = false;
                e.Row.Cells[10].Visible = false;



            }
        
        }

        
    }
}