using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Web;

namespace TryOutWebPage
{
    /// <summary>
    /// Summary description for ImageHandler
    /// </summary>
    public class ImageHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.Clear();

            if (!String.IsNullOrEmpty(context.Request.QueryString["id"]))
            {
                string id = context.Request.QueryString["id"];
                Image image = GetImage(id);

                context.Response.ContentType = "image/jpeg";
                image.Save(context.Response.OutputStream, ImageFormat.Jpeg);
            }
            else
            {
                context.Response.ContentType = "text/html";
                context.Response.Write("<p>Need a valid id</p>");
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

        private Image GetImage(string id)
        {
            ImageService.ServiceClient imgService = new ImageService.ServiceClient();
            Stream myStream = imgService.GetImage(id);
            return Image.FromStream(myStream);
        }
    }
}