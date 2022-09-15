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
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
           SqlConnection con = new SqlConnection(conString);
           string query = "SELECT * FROM PaymentService WHERE  = @Email";
           SqlCommand sqlCommand = new SqlCommand(query, con);
           sqlCommand.Parameters.AddWithValue("@Email", Session["Email"]);
           SqlDataAdapter DA = new SqlDataAdapter(sqlCommand);
           DataTable dt = new DataTable();
           /*DA.Fill(dt);
           GridView1.DataSource= dt;
           GridView1.DataBind();
           */
        }
    }
}