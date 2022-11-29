using System;
using SF.Snowball.Ext;
using Porter2Stemmer;
using System.Linq;

namespace WcfRestService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {

        /// <summary>
        /// Takes string input from a textbox and returns a string with each word in the given string replaced by its stem word
        /// Uses Shaman Stemming nuget package
        /// </summary>
        /// <param name="content"></param>
        /// <returns></returns>
        public string Stem(string content)
        {
            string result = "";
            string[] splitContent = content.Split(' ');

            //Porter2Stemmer
            /*var stemmer = new EnglishPorter2Stemmer();
            foreach (string word in splitContent)
            {
                StemmedWord stemmedString = stemmer.Stem(word);
                result += stemmedString.Value.ToString() + " ";
            }*/

            //ShamanStemming
            var stemmer = new EnglishStemmer();
            foreach (string word in splitContent)
            {
                stemmer.SetCurrent(word);
                stemmer.Stem();
                result += stemmer.GetCurrent() + " ";
            }

            return result;
        }
    }
}
