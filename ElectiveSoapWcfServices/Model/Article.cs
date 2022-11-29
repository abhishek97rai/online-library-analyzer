using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;
using static ElectiveSoapWcfServices.Service1;

namespace ElectiveSoapWcfServices.Model
{
    public class Article
    {
        public string title { get; set; }
        public string description { get; set; }
        public string content { get; set; }
        public string url { get; set; }
        public string image { get; set; }
        public DateTime publishedAt { get; set; }
        public Source source { get; set; }

    }

}