using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;
using static ElectiveSoapWcfServices.Service1;

namespace ElectiveSoapWcfServices.Model
{
    public class Root
    {
        public int totalArticles { get; set; }
        public List<Article> articles { get; set; }
    }

}