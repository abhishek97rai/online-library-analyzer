using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;

/*
 * Name: Abhishek Rai
 * ASU ID: 1225176537
 */
namespace WebDownloadingService
{
    /// <summary>
    /// Contains method implementations for the operations within the web service
    /// </summary>
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        /// <summary>
        /// Method implementation to download content of webpage as a string
        /// </summary>
        /// <param name="url">URL from which content needs to be downloaded as a string</param>
        /// <returns>Webpage content as a string</returns>
        public string WebDownload(string url)
        {
            WebClient client = new WebClient();
            return client.DownloadString(url);
        }

        /// <summary>
        /// Method implementation to return 10 most frequently occurring content keywords from given webpage
        /// </summary>
        /// <param name="url">URL from which top 10 content words need to be fetched</param>
        /// <returns>Array of 10 strings containing most frequently occurring words in the webpage content</returns>
        public string[] Top10ContentWords(string url)
        {
            string content = WebDownload(url);
            content = Regex.Replace(content, "<[^>]+>", " ");
            string[] topWords = new string[10];
            string[] searchSpace = content.Split(new string[] {" "}, StringSplitOptions.RemoveEmptyEntries);
            Dictionary<string, int> result = new Dictionary<string, int>();
            
            List<string> bannedWords = new List<string>();
            bannedWords.Add("this");
            bannedWords.Add("that");
            bannedWords.Add("they");
            bannedWords.Add("what");
            bannedWords.Add("with");
            bannedWords.Add("very");
            bannedWords.Add("about");
            bannedWords.Add("have");
            bannedWords.Add("which");
            bannedWords.Add("from");
            bannedWords.Add("upon");
            bannedWords.Add("been");
            bannedWords.Add("your");
            bannedWords.Add("were");
            bannedWords.Add("would");
            bannedWords.Add("there");
            bannedWords.Add("into");
            bannedWords.Add("when");
            bannedWords.Add("could");
            bannedWords.Add("will");
            bannedWords.Add("like");
            bannedWords.Add("should");
            bannedWords.Add("shall");
            bannedWords.Add("must");
            bannedWords.Add("over");
            bannedWords.Add("than");

            foreach (string word in searchSpace)
            {
                if (word.Length < 4 || bannedWords.Contains(word) || word.Contains("\n"))
                    continue;
                if (result.ContainsKey(word))
                    result[word]++;
                else
                    result[word] = 1;
            }
            Dictionary<string, int> top = result.OrderByDescending(pair => pair.Value).Take(10)
                .ToDictionary(pair => pair.Key, pair => pair.Value);
            
            int i = 0;
            foreach (KeyValuePair<string, int> entry in top)
            {
                topWords[i] = "Word: " + entry.Key + " ; Frequency: " + entry.Value;
                i++;
            }
            return topWords;
        }

    }
}
