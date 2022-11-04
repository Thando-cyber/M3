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
    public partial class recordPayment : System.Web.UI.Page
    {
        //Admin id
        string admin_id = "";
        //Current Date
        string date = "";
        //receipt no
        int receiptNo = 0;
        //payment amount
        string payed = "";
        int amount_payed = 0;
        //student name
        string student = "";
        //db connect
        public string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";

        int fees = 0;
        int bal = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userType"].ToString().Equals("Administrator"))
            {

            }
            else
            {
                Response.Redirect("~/Account/Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            if (amount.Text != "" || studentID.Text != "")
            {
                //admin id
                if (GridView2.Rows.Count > 0)
                {


                    string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
                    SqlConnection con = new SqlConnection(conString);
                    string query = "SELECT stu_Fees FROM student WHERE stu_ID = @ID";
                    SqlCommand sqlCommand = new SqlCommand(query, con);
                    sqlCommand.Parameters.AddWithValue("@ID", studentID.Text);
                    SqlDataAdapter DA = new SqlDataAdapter(sqlCommand);
                    DataTable dt = new DataTable();
                    DA.Fill(dt);

                    foreach (DataRow dr in dt.Rows)
                    {

                        fees = Convert.ToInt32(dr["stu_Fees"]);


                    }

                    string str1 = Session["Email"].ToString();
                    int n1 = str1.IndexOf("@");
                    string str2 = str1.Substring(0, n1);
                    Session["ID"] = str2;


                    bool go = false;
                    string a = amount.Text;
                    for (int i = 0; i < a.Length; i++)
                    {
                        if (!char.IsDigit(a[i]))
                        {
                            adminLbl.Text = "Please enter a valid fee payment amount.\nAmount must not only contain numbers.";
                            go = false;
                            break;
                        }
                        else
                        {
                            go = true;
                        }

                    }

                    if (go)
                    {
                        //Admin id
                        admin_id = Session["ID"].ToString();
                        //Current Date
                        date = DateTime.Now.ToShortDateString();
                        //receipt no
                        receiptNo = GridView1.Rows.Count;
                        receiptNo = receiptNo + 1;

                        //payment amount
                        payed = amount.Text;
                        amount_payed = Convert.ToInt32(payed);

                        //student name
                        student = studentID.Text;

                        bal = fees - amount_payed;

                        SqlConnection connection = new SqlConnection(conString);
                        string query1 = "INSERT INTO PaymentService(receiptNum, AdminID, stu_ID, pay_Date, pay_Amount, pay_Type, balance) VALUES" +
                            "(@receiptno, @AdminID, @stu_ID, @pay_Date, @pay_Amount, @pay_Type, @balance)";
                        string query2 = "UPDATE student SET stu_Fees=@fees  WHERE stu_ID=@stu ";
                        SqlCommand sqlCommand1 = new SqlCommand(query1, connection);
                        SqlCommand sqlCommand2 = new SqlCommand(query2, connection);

                        //Query parameters
                        sqlCommand1.Parameters.AddWithValue("@receiptno", receiptNo);
                        sqlCommand1.Parameters.AddWithValue("@AdminID", admin_id);
                        sqlCommand1.Parameters.AddWithValue("@stu_ID", student);
                        sqlCommand1.Parameters.AddWithValue("@pay_Date", date);
                        sqlCommand1.Parameters.AddWithValue("@pay_Amount", amount_payed);
                        sqlCommand1.Parameters.AddWithValue("@pay_Type", DropDownList1.SelectedValue);
                        sqlCommand1.Parameters.AddWithValue("@balance", bal);
                        //Query parameters
                        sqlCommand2.Parameters.AddWithValue("@fees", bal);
                        sqlCommand2.Parameters.AddWithValue("@stu", student);


                        connection.Open();
                        sqlCommand1.ExecuteNonQuery();
                        sqlCommand2.ExecuteNonQuery();
                        connection.Close();
                        adminLbl.Text = "The transaction has been confirmed and can be viewed under Payments - Thank you.";
                    }


                }
                else
                {
                    adminLbl.Text = "Transaction failed - Student does not exist.\nPlease enter a valid student number;";

                }
            }
            else
            {
                adminLbl.Text = "Enter all input fields in order to process the transaction.";
            }
        }
    }
}