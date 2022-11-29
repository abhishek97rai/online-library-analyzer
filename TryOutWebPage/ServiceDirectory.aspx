﻿<%@ Page Title="Service Directory" ValidateRequest="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ServiceDirectory.aspx.cs" Inherits="TryOutWebPage.ServiceDirectory" %>

<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="MainContent">
    <!DOCTYPE html>
    <style>
        table, th, td {
        border:1px solid black;
        }
    </style>
    <br />
    <h3>Welcome to the Service Directory for our online digital library analyzer system!</h3>
    <table style="width: 100%">
        <tr>
            Service Directory
        </tr>
        <br />
        <tr>
            This page is at:
                <a href="http://webstrar95.fulton.asu.edu/index.html">http://webstrar95.fulton.asu.edu/index.html
                </a>
        </tr>
        <br />
        <tr>
            This project is developed by: Abhishek Rai
        </tr>
        <br />
        <br />
        <tr>
            <th>Provider Name</th>
            <th>Type (Service / DLL / User Control)</th>
            <th>Service Name, with Input and Output types</th>
            <th>TryIt link</th>
            <th>Service description</th>
            <th>Actual resources used to implement the service</th>
        </tr>
        <tr>
            <td>Abhishek Rai</td>
            <td>ASPX page and Server Control</td>
            <td>PublicPage.aspx</td>
            <td>Tryit page:
                    <a href="http://webstrar95.fulton.asu.edu/page4/PublicPage.aspx">http://webstrar95.fulton.asu.edu/page4/PublicPage.aspx
                    </a>
            </td>
            <td>The default public page that calls and links all other pages in our application.</td>
            <td>GUI design and C# code for building the GUI.</td>
        </tr>

        <tr>
            <td>Abhishek Rai</td>
            <td>ASPX page</td>
            <td>MemberPage.aspx</td>
            <td>Tryit page:
                    <a href="http://webstrar95.fulton.asu.edu/page4/PrivateMembers/MemberPage.aspx">http://webstrar95.fulton.asu.edu/page4/PrivateMembers/MemberPage.aspx
                    </a>
            </td>
            <td>Member specific page for which any user can self-subscribe.</td>
            <td>C# code for its GUI. Subject to proper authentication and authorization via Login page.</td>
        </tr>

        <tr>
            <td>Abhishek Rai</td>
            <td>XML file</td>
            <td>Member.xml</td>
            <td>File location: \\webstrar.fulton.asu.edu\website95\page4\PrivateMembers\Member.xml
            </td>
            <td>XML file storing credentials of all existing members as well as newly registered members.</td>
            <td>XML file generation and updation.</td>
        </tr>

        <tr>
            <td>Dipak Chaudhary</td>
            <td>ASPX page</td>
            <td>StaffPage.aspx</td>
            <td>Tryit page:
                    <a href="http://webstrar95.fulton.asu.edu/page4/PrivateStaff/StaffPage.aspx">http://webstrar95.fulton.asu.edu/page4/PrivateStaff/StaffPage.aspx
                    </a>
            </td>
            <td>Restricted page to which only specific staff users have access.</td>
            <td>C# code for its GUI. Subject to proper authentication and authorization via Login page.</td>
        </tr>

        <tr>
            <td>Dipak Chaudhary</td>
            <td>XML file</td>
            <td>Staff.xml</td>
            <td>File location: \\webstrar.fulton.asu.edu\website95\page4\PrivateStaff\Staff.xml
            </td>
            <td>XML file storing credentials of all existing staff as well as newly registered staff.</td>
            <td>XML file generation and updation.</td>
        </tr>

        <tr>
            <td>Abhishek Rai</td>
            <td>ASPX page and User Control</td>
            <td>Login.aspx</td>
            <td>Tryit page:
                    <a href="http://webstrar95.fulton.asu.edu/page4/Login.aspx">http://webstrar95.fulton.asu.edu/page4/Login.aspx
                    </a>
            </td>
            <td>Login/Registration page for authentication and authorization purposes.</td>
            <td>C# code for its GUI. Linked to the default public page, as the precursor page to Member and Staff pages.</td>
        </tr>

        <tr>
            <td>Dipak Chaudhary</td>
            <td>ASPX page</td>
            <td>ServiceDirectory.aspx</td>
            <td>Tryit page:
                    <a href="http://webstrar95.fulton.asu.edu/page4/ServiceDirectory.aspx">http://webstrar95.fulton.asu.edu/page4/ServiceDirectory.aspx
                    </a>
            </td>
            <td>Service directory containing details of all services and components within our application.</td>
            <td>GUI design and C# code for building the GUI.</td>
        </tr>

        <tr>
            <td>Dipak Chaudhary</td>
            <td>ASAX file</td>
            <td>Global.asax</td>
            <td>File location: \\webstrar.fulton.asu.edu\website95\page4\Global.asax
            </td>
            <td>Script containing optional event handling methods such as Application_Start and Application_Error</td>
            <td>C# code for defining the event methods.</td>
        </tr>

        <tr>
            <td>Abhishek Rai</td>
            <td>DLL</td>
            <td>EncryptionLibrary</td>
            <td>DLL project included in the solution uploaded as zip on Canvas
            </td>
            <td>Used for encrypting user passwords.</td>
            <td>C# code for defining the encyption method.</td>
        </tr>

        <tr>
            <td>Dipak Chaudhary</td>
            <td>Cookies</td>
            <td>CookieValue property within Login page</td>
            <td>Passed to the FormsAuthentication.RedirectFromLoginPage method
            </td>
            <td>Used for storing username and password on the client side.</td>
            <td>C# code using HTTP cookies library, linked to the Login page.</td>
        </tr>

        <tr>
            <td>Abhishek Rai</td>
            <td>User Control (ASCX file)</td>
            <td>Repetitive Intro Section User Control (WebUserControl1.ascx)
            </td>
            <td>File location: \\webstrar.fulton.asu.edu\website95\page4\WebUserControl1.ascx
                <br />
                Tryit page:
                    <a href="http://webstrar95.fulton.asu.edu/page4/PublicPage.aspx">http://webstrar95.fulton.asu.edu/page4/PublicPage.aspx
                    </a>
                <br />
            </td>
            <td>User Control component, to describe the Introduction part, since it has been used in multiple pages like Public page and Members page
            </td>
            <td>Web User Control component in ASP.NET (ascx file)
            </td>
        </tr>

        <tr>
            <td>Abhishek Rai</td>
            <td>Web Handler (ASHX file)</td>
            <td>Captcha Image Fetching Web Handler (ImageHandler.ashx)</td>
            <td>File location: \\webstrar.fulton.asu.edu\website95\page4\WebUserControl1.ascx
                <br />
                Tryit page:
                    <a href="http://webstrar95.fulton.asu.edu/page4/Login.aspx">http://webstrar95.fulton.asu.edu/page4/Login.aspx
                    </a>
                <br />
            </td>
            <td>Web Handler to save image fetched as Stream bytes from ASU repository remote service.</td>
            <td>C# code for saving the image within the web handler.</td>
        </tr>

        <tr>
            <td>Abhishek Rai</td>
            <td>Service</td>
            <td>Web Downloading Service<br />
                Input: A webpage URL in a string<br />
                Output: Content at the given URL as a string
            </td>
            <td>Tryit page:
                    <a href="http://webstrar95.fulton.asu.edu/page4/Default.aspx">http://webstrar95.fulton.asu.edu/page4/Default.aspx
                    </a>
                <br />
                Service Page:
                    <a href="http://webstrar95.fulton.asu.edu/page0/Service1.svc">http://webstrar95.fulton.asu.edu/page0/Service1.svc
                    </a>
            </td>
            <td>It takes in the URL string as input and returns the content at the given URL in a textbox</td>
            <td>Write my own code by using WebClient in C# to download the URL content string.
            </td>
        </tr>

        <tr>
            <td>Abhishek Rai</td>
            <td>Service</td>
            <td>Stemming Service<br />
                Input: String of words<br />
                Output: String containing the stem words that replaced the original string words
            </td>
            <td>Tryit page:
                    <a href="http://webstrar95.fulton.asu.edu/page4/Default.aspx">http://webstrar95.fulton.asu.edu/page4/Default.aspx
                    </a>
                <br />
                Service Page:
                    <a href="http://webstrar95.fulton.asu.edu/page2/Service1.svc">http://webstrar95.fulton.asu.edu/page2/Service1.svc
                    </a>
            </td>
            <td>Analyze a string containing words and replace each of the derived words with their stem/root word
            </td>
            <td>Stemming libraries (such as Porter), or a self-implemented stemming logic.<br />
                https://en.wikipedia.org/wiki/Word_stem
            </td>
        </tr>

        <tr>
            <td>Abhishek Rai</td>
            <td>Service</td>
            <td>Top10 Content Words Service<br />
                Input: A webpage URL in a string<br />
                Output: Array of strings that contain the 10 most frequently occurring relevant words in the URL
                    content
            </td>
            <td>Tryit page:
                    <a href="http://webstrar95.fulton.asu.edu/page4/Default.aspx">http://webstrar95.fulton.asu.edu/page4/Default.aspx
                    </a>
                <br />
                Service Page:
                    <a href="http://webstrar95.fulton.asu.edu/page0/Service1.svc">http://webstrar95.fulton.asu.edu/page0/Service1.svc
                    </a>
            </td>
            <td>Analyze a webpage at the given URL and return the ten most frequently occurring relevant "content"
                    words on the webpage in descending order
            </td>
            <td>Write my own code by filtering HTML/XML tags and then using stemming service to process only relevant content keywords.<br />
                Any libraries that can help in identifying articles/pronouns/stop words/words that do not form the content of the webpage.
            </td>
        </tr>

        <tr>
            <td>Abhishek Rai</td>
            <td>Service</td>
            <td>API Wrapper Service<br />
                Input: A webpage URL in a string<br />
                Output: Array of strings that contain URLs of related webpages using the top keywords
            </td>
            <td>Tryit page:
                    <a href="http://webstrar95.fulton.asu.edu/page4/Default.aspx">http://webstrar95.fulton.asu.edu/page4/Default.aspx
                    </a>
                <br />
                Service Page:
                    <a href="http://webstrar95.fulton.asu.edu/page1/Service1.svc">http://webstrar95.fulton.asu.edu/page1/Service1.svc
                    </a>
            </td>
            <td>Use external APIs that will be called in our services - by passing the top keywords - to find related webpages
            </td>
            <td>Google's APIs<br />
                Remote methods APIs from http://www.programmableweb.com,<br />
                http://www.programmableweb.com/search/top%20mashups
            </td>
        </tr>

        <tr>
            <td>Abhishek Rai</td>
            <td>Service</td>
            <td>Recurrence Count Service<br />
                Input: A webpage URL in a string, along with a word for which the recurrence count is to be calculated<br />
                Output: Recurrence count for the word in the URL content
            </td>
            <td>Tryit page:
                    <a href="http://webstrar95.fulton.asu.edu/page4/Default.aspx">http://webstrar95.fulton.asu.edu/page4/Default.aspx
                    </a>
                <br />
                Service Page:
                    <a href="http://webstrar95.fulton.asu.edu/page1/Service1.svc">http://webstrar95.fulton.asu.edu/page1/Service1.svc
                    </a>
            </td>
            <td>Finds the recurrence count, i.e. frequency of the specified input word within the content of the URL specified as the other input
            </td>
            <td>Write my own code by using string manipulation algorithms to split and count the words for the given sets of inputs.
            </td>
        </tr>

        <tr>
            <td>Abhishek Rai</td>
            <td>Remote Service</td>
            <td>Remote ASU Random String Generator Service<br />
                Input: Length (as a string) of the random string to be generated<br />
                Output: Random word generated as per the above length
            </td>
            <td>Tryit page:
                    <a href="http://webstrar95.fulton.asu.edu/page4/Default.aspx">http://webstrar95.fulton.asu.edu/page4/Default.aspx
                    </a>
                <br />
                Service Page:
                    <a href="https://venus.sod.asu.edu/WSRepository/Services/RandomStringsvc/Service.svc">https://venus.sod.asu.edu/WSRepository/Services/RandomStringsvc/Service.svc
                    </a>
            </td>
            <td>Generates a random string of the given length by calling a remote web service hosted on ASU servers
            </td>
            <td>Just use the remote service URL by calling it within the ASP.NET web application that you are developing
            </td>
        </tr>

        <tr>
            <td>Dipak Chaudhary</td>
            <td>Service</td>
            <td>Word Filter<br />
                Input: A string<br />
                Output: A string with stop words removed
            </td>
            <td>Tryit page:
                    <a href="http://webstrar95.fulton.asu.edu/page9/Default.aspx">http://webstrar95.fulton.asu.edu/page9/Default.aspx
                    </a>
                <br />
                Service Page:
                    <a href="http://webstrar95.fulton.asu.edu/page10/Service1.svc">http://webstrar95.fulton.asu.edu/page10/Service1.svc
                    </a>
            </td>
            <td>Analyze the string and remove unnecessary words for keywords search.
            </td>
            <td>Write my own code to remove self defined stop words from the input.
            </td>
        </tr>

        <tr>
            <td>Dipak Chaudhary</td>
            <td>Service</td>
            <td>Word Count<br />
                Input: A large string containing string of words<br />
                Output: A JSON string data containing name count pairs
            </td>
            <td>Tryit page:
                    <a href="http://webstrar95.fulton.asu.edu/page9/Default.aspx">http://webstrar95.fulton.asu.edu/page9/Default.aspx
                    </a>
                <br />
                Service Page:
                    <a href="http://webstrar95.fulton.asu.edu/page10/Service1.svc">http://webstrar95.fulton.asu.edu/page10/Service1.svc
                    </a>
            </td>
            <td>Count the total occurrences of each word from the given string and return JSON formatted string.
            </td>
            <td>Self written code to count each word and update the output based on required format.
            </td>
        </tr>

        <tr>
            <td>Dipak Chaudhary</td>
            <td>Service</td>
            <td>Storage Service<br />
                Input: Data to be stored in the file<br />
                Output: URL of the file in the server
            </td>
            <td>Tryit page:
                    <a href="http://webstrar95.fulton.asu.edu/page7/Default.aspx">http://webstrar95.fulton.asu.edu/page7/Default.aspx
                    </a>
                <br />
                Service Page:
                    <a href="http://webstrar95.fulton.asu.edu/page8/Service1.svc">http://webstrar95.fulton.asu.edu/page8/Service1.svc
                    </a>
            </td>
            <td>Get a string and store it into the server. Give an access URL as output.
            </td>
            <td>HTTP Path functions and streamwriter to write in the file and generate URL.
            </td>
        </tr>

        <tr>
            <td>Dipak Chaudhary</td>
            <td>Service</td>
            <td>Get Book Recomendation<br />
                Input: A string with genre name<br />
                Output: Top 5 books with name, author name and url to the file
            </td>
            <td>Tryit page:
                    <a href="http://webstrar95.fulton.asu.edu/page7/Default.aspx">http://webstrar95.fulton.asu.edu/page7/Default.aspx
                    </a>
                <br />
                Service Page:
                    <a href="http://webstrar95.fulton.asu.edu/page8/Service1.svc">http://webstrar95.fulton.asu.edu/page8/Service1.svc
                    </a>
            </td>
            <td>Get a specific genre from the user and than return top5 most popular books in that genre for the output.
            </td>
            <td>Self-written code with manually entered database of the genres.
            </td>
        </tr>
    </table>
</asp:Content>
