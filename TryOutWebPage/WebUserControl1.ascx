<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="TryOutWebPage.WebUserControl1" %>

<h4>--- This Intro part is being rendered from a User Control component (ascx file), since we need to use it in multiple places like the Public page and Members page ---</h4>
<br />
<p>
    This is a web application that consists of a service-oriented computing system that will revolve around the analysis of a free online digital library. Project Gutenberg provides a library of over 60,000 free eBooks, especially containing older works for which the copyright has expired.
</p>
<p>
    Our services would analyze the various webpage URLs from this website containing all sorts of books, and then we can use that analysis to further expand our usage of different services. It will start with taking the URL and getting the content from it. We can then use the stemming service to stem the words from this content, in order to get the most important keywords and the word count frequency from it.
</p>
<p>
    Apart from this, we also have a recurrence counting service, that gives us the frequency of any input word within a particular eBook. In this way, we have created a service that will help us get the Top 10 content words from these eBooks. We can then use those keywords to search for news related to them, by calling an external API to find related web pages using the top keywords. 
</p>
<p>
    We can also use these keywords and news articles, save them in a local text file, and then store that file on a server. This would be the overall functionality of our service-oriented application.
</p>
<p>
    For more details and exact service specifications, please go to 
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ServiceDirectory.aspx">Service Directory</asp:HyperLink>
    .
</p>
