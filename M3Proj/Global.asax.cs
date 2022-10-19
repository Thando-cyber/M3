using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace M3Proj
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
           
        }
        void Session_Start(object sender, EventArgs e)
        {
            Session.Add("Email", "");
            Session.Add("userType", "");
            Session.Add("classID",0);
            Session.Add("stuID","");

            
            // Code that runs on application startup
            //RouteConfig.RegisterRoutes(RouteTable.Routes);
            //BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
    }
}