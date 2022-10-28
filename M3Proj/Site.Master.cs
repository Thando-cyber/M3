using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace M3Proj
{
    //string currpage = HttpContext.Current.Request.Url.AbsolutePath;
    public partial class SiteMaster : MasterPage
    {
        public string name = " ";
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
            // The code below helps to protect against XSRF attacks
            var requestCookie = Request.Cookies[AntiXsrfTokenKey];
            Guid requestCookieGuidValue;
            if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
            {
                // Use the Anti-XSRF token from the cookie
                _antiXsrfTokenValue = requestCookie.Value;
                Page.ViewStateUserKey = _antiXsrfTokenValue;
            }
            else
            {
                // Generate a new Anti-XSRF token and save to the cookie
                _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                Page.ViewStateUserKey = _antiXsrfTokenValue;

                var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                {
                    HttpOnly = true,
                    Value = _antiXsrfTokenValue
                };
                if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                {
                    responseCookie.Secure = true;
                }
                Response.Cookies.Set(responseCookie);
            }

            Page.PreLoad += master_Page_PreLoad;
        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {


            string conString = "Data Source=146.230.177.46;Initial Catalog=GroupPmb2;User ID=GroupPmb2;Password=b45dc2;Integrated Security=False";
            HttpCookie userInfo = new HttpCookie("userInfo");
            userInfo["Email"] = Session["Email"].ToString();
            userInfo["UserStatus"] = Session["userType"].ToString();

            page1.Visible = false;
            dropdown1.Visible = false;
            dropdown2.Visible = false;
            dropdown3.Visible = false;
            dropdown4.Visible = false;
            dropdown5.Visible = false;
            dropdown6.Visible = false;
            dropdown7.Visible = false;
            dropdown8.Visible = false;
            dropdown9.Visible = false;


            if (Session["userType"].ToString().Equals("Student")) 
            {
                page1.Visible = true;
                dropdown1.Visible = true;
                dropdown2.Visible = true;
                dropdown6.Visible = true;
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
                }

                }
            else if(Session["userType"].ToString().Equals("Teacher"))
            {
                page1.Visible = true;
                dropdown1.Visible = true;
                dropdown3.Visible= true;
                dropdown4.Visible = true;
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
                }


            }
            else if (Session["userType"].ToString().Equals("Administrator"))
            {
                page1.Visible = true;
                dropdown1.Visible = true;
                dropdown2.Visible = true;
                dropdown3.Visible = true;
                dropdown4.Visible = true;
                dropdown5.Visible = true;
                dropdown6.Visible = true;
                dropdown7.Visible = true;
                dropdown8.Visible = true;
                dropdown9.Visible = true;

            }
            else 
            {
                page1.Visible = false;
                dropdown1.Visible = false;
                dropdown2.Visible= false;
                dropdown3.Visible = false;
                dropdown4.Visible = false;
                dropdown5.Visible = false;
                dropdown6.Visible = false;
                dropdown7.Visible = false;
                dropdown8.Visible = false;
                dropdown9.Visible = false;

            }

        }

        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account/Login.aspx");
        }
    }

}