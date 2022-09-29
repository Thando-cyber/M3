using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using System.Data.SqlClient;
using System.Data;



namespace M3Proj.NewFolder1
{
    public partial class Reports : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            string query = "SELECT student.classID, subjectResults.*, classes.* FROM student INNER JOIN subjectResults ON student.stu_ID = subjectResults.studentID INNER JOIN classes ON student.classID = classes.class_id WHERE student.stu_id =@Email";
            String ConnectionString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            SqlConnection Cn = new SqlConnection(ConnectionString);
            SqlCommand mCmd = new SqlCommand(query, Cn);

            mCmd.Parameters.AddWithValue("@Email", Session["Email"]);
            SqlDataAdapter mySqlAdapter = new SqlDataAdapter(mCmd);
            DataSet myDataSet = new DataSet();

            mySqlAdapter.Fill(myDataSet);

            if (!IsPostBack)
            {
                ReportViewer5.ProcessingMode = ProcessingMode.Local;
                LocalReport localReport = ReportViewer5.LocalReport;
                localReport.ReportPath = "NewFolder1/academicResults.rdlc";

                ReportDataSource reportDataSource = new ReportDataSource();
                reportDataSource.Name = "reportDataSource";


                reportDataSource.Value = myDataSet.Tables[0];
                localReport.DataSources.Add(reportDataSource);
            }
            

        }
        
    }
}
    
        

    
    

