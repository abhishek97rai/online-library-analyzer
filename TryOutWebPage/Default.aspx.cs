using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.Serialization;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TryOutWebPage
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BookAnalyzerService.Service1Client bookAnalyzerService = new BookAnalyzerService.Service1Client();
            string result = bookAnalyzerService.WebDownload(TextBox1.Text);
            TextBox2.Text = result;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            BookAnalyzerService.Service1Client bookAnalyzerService = new BookAnalyzerService.Service1Client();
            string[] results = bookAnalyzerService.Top10ContentWords(TextBox1.Text);
            TextBox3.Text = "";
            foreach (string word in results)
            {
                TextBox3.Text += word + "\n";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string stemmedContent = StemContent(TextBox4.Text);
            TextBox5.Text = stemmedContent;
            /*Uri baseUri = new Uri("http://localhost:55104/Service1.svc");
            UriTemplate myTemplate = new UriTemplate("AbsValue/{Value}");
            Uri completeUri = myTemplate.BindByPosition(baseUri, TextBox4.Text);*/
        }

        private string StemContent(string text)
        {
            WebClient wc = new WebClient();
            //string serviceUrl = string.Format("http://localhost:55104/Service1.svc/AbsValue?x={0}", text);
            string serviceUrl = string.Format("http://localhost:55104/Service1.svc/Stem?x={0}", text);
            byte[] data = wc.DownloadData(serviceUrl);
            Stream stream = new MemoryStream(data);
            DataContractSerializer obj = new DataContractSerializer(typeof(string));
            return obj.ReadObject(stream).ToString();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string keywords = TextBox6.Text;
            ElectiveSoapServices.Service1Client electiveServices = new ElectiveSoapServices.Service1Client();
            string[] searches = electiveServices.GetTopSearchUrlsFromKeywords(keywords);
            TextBox7.Text = "";
            foreach (string search in searches)
            {
                TextBox7.Text += search + "\n";
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            ElectiveSoapServices.Service1Client electiveServices = new ElectiveSoapServices.Service1Client();
            string url = TextBox1.Text;
            string word = TextBox8.Text;
            int count = electiveServices.RecurrenceCount(url, word);
            TextBox9.Text = "Count of word \"" + word + "\" in the URL content is :: " + count;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            RandomStringService.ServiceClient randomStringService = new RandomStringService.ServiceClient();
            string length = TextBox10.Text;
            string randomWord = randomStringService.GetRandomString(length);
            Label2.Text = randomWord;
        }
    }
}