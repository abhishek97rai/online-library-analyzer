using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace TryOutWebPage
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs if an error occurs
            Response.Write("<font face=\"Tahoma\" color=\"red\" size=\"3\">");
            Response.Write("Error encountered!<hr></font>");
            Response.Write("<font face=\"Arial\" size=\"3\">");
            Response.Write(Server.GetLastError().Message.ToString());
            Response.Write("<hr>" + Server.GetLastError().ToString());
            Server.ClearError();
        }
    }
}