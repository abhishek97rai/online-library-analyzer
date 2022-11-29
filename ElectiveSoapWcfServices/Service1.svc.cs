using ElectiveSoapWcfServices.Model;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Text.RegularExpressions;
using static System.Net.Mime.MediaTypeNames;

namespace ElectiveSoapWcfServices
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        /// <summary>
        /// Call external API GNEWS, and gets the most relevant search results on the internet based on the passed keywords
        /// </summary>
        /// <param name="keywords"></param>
        /// <returns></returns>
        public string[] GetTopSearchUrlsFromKeywords(string keywords)
        {
            WebClient wc = new WebClient();
            string serviceUrl = string.Format("https://gnews.io/api/v4/search?q={0}&token={1}", keywords, "9977348d25c3946912b19ed7d79387a4");
            string myJsonResponse = wc.DownloadString(serviceUrl);
            Root myDeserializedClass = JsonConvert.DeserializeObject<Root>(myJsonResponse);
            List<Article> myArticles = myDeserializedClass.articles;
            int size = myArticles.Count;
            string[] searchUrls = new string[size];
            int i = 0;
            foreach (Article article in myArticles)
            {
                searchUrls[i] = article.url;
                i++;
            }
            return searchUrls;
            //return new string[] { myDeserializedClass.articles[0].url };
        }

        /// <summary>
        /// Finds recurrence count ie frequency of given word in the URL content
        /// </summary>
        /// <param name="url"></param>
        /// <param name="word"></param>
        /// <returns></returns>
        public int RecurrenceCount(string url, string word)
        {
            string content = WebDownload(url);
            //replacing all html tags with blank space
            content = Regex.Replace(content, "<[^>]+>", " ");
            string[] searchSpace = content.Split(new string[] { " " }, StringSplitOptions.RemoveEmptyEntries);
            int count = 0;
            foreach (string s in searchSpace)
            {
                if (s.Contains(word))
                    count++;
            }
            return count;
        }

        /// <summary>
        /// Downloads content on URL as a string
        /// </summary>
        /// <param name="url"></param>
        /// <returns></returns>
        public string WebDownload(string url)
        {
            WebClient client = new WebClient();
            return client.DownloadString(url);
        }

    }
}
