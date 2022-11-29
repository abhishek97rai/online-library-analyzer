<%@ Page Title="Home Page" ValidateRequest="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TryOutWebPage._Default" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="MainContent">
    <p>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" validateRequest="false" Width="884px">https://www.gutenberg.org/cache/epub/11/pg11-images.html</asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        REQUIRED SERVICE ::
        SOAP Service :: Service 1 (Load Content): Takes the URL string as input from above and returns the content at the given URL in the below textbox</p>
    <p>
        Method (Operation) Name: WebDownload(string url)</p>
    <p>
        Input/Parameter Type List: string url</p>
    <p>
        Return Type: string</p>
    <p>
        &nbsp;</p>
    <p>
        SERVICE URL (For both required services): <a href="http://webstrar95.fulton.asu.edu/page0/Service1.svc">http://webstrar95.fulton.asu.edu/page0/Service1.svc</a></p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" Height="31px" OnClick="Button1_Click" Text="LOAD CONTENT" Width="135px" />
    </p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server" requestHeight="586px" TextMode="MultiLine" Width="884px" Height="500px"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
<p>
        REQUIRED SERVICE ::
        SOAP Service :: Service 5 (Analyze Content): Analyzes URL from the input textbox and returns the ten most frequently occurring relevant “content” words on the webpage in descending order</p>
<p>
        &nbsp;</p>
<p>
        Method (Operation) Name: Top10ContentWords(string url)</p>
<p>
        Input/Parameter Type List: string url</p>
<p>
        Return Type: string[]</p>
<p>
        &nbsp;</p>
<p>
        <asp:Button ID="Button2" runat="server" Height="31px" OnClick="Button2_Click" Text="ANALYZE CONTENT" Width="156px" />
    </p>
<p>
        <asp:TextBox ID="TextBox3" runat="server" Height="323px" TextMode="MultiLine" Width="480px"></asp:TextBox>
</p>
<p>
        &nbsp;</p>
<p>
        ELECTIVE SERVICE ::
        SOAP Service :: Recurrence Count Service: Analyzes URL from the input URL textbox and returns the recurrence count (frequency) of the word taken from other input box in the content on the URL webpage</p>
<p>
        Method (Operation) Name: RecurrenceCount(string url, string word)</p>
<p>
        Input/Parameter Type List: string url, string word</p>
<p>
        Return Type: int</p>
<p>
        <asp:TextBox ID="TextBox8" runat="server">Alice</asp:TextBox>
</p>
<p>
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="CALCULATE RECURRENCE" Width="208px" />
</p>
<p>
        <asp:TextBox ID="TextBox9" runat="server" Width="474px"></asp:TextBox>
</p>
<p>
        &nbsp;</p>
<p>
        ELECTIVE SERVICE ::
        REST Service :: Service 3 (Stemming Service): Takes string input from a textbox and returns a string with each word in the given string replaced by its stem word</p>
<p>
        Note that Stemming will not always cut down a word to a grammatically correct word, it only brings a word to a root form that will help in better searching for further usage</p>
<p>
        For eg.: troubling is cut down to troubl, so that we can use this root form to search for all possible word forms like trouble, troubled, troubling, etc.</p>
<p>
        &nbsp;</p>
<p>
        Method (Operation) Name: Stem(string content)</p>
<p>
        Input/Parameter Type List: string content</p>
<p>
        Return Type: string</p>
<p>
        <asp:TextBox ID="TextBox4" runat="server" Height="191px" TextMode="MultiLine" Width="357px">dogs programming cakes programs troubling phones indices programmed matrices  &lt;Can try deleting this and enter your own text to test&gt;</asp:TextBox>
</p>
<p>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="STEM" Width="87px" />
</p>
    <p>
        (NOTE: This might not work on Webstrar. Its some issue with REST service execution on Webstrar that has been discussed with the TA previously. It works perfectly fine locally.)</p>
<p>
        <asp:TextBox ID="TextBox5" runat="server" Height="212px" TextMode="MultiLine" Width="354px"></asp:TextBox>
</p>
<p>
        &nbsp;</p>
<p>
        ELECTIVE SERVICE ::
        SOAP Service :: Service 22 (API Wrapper Service): Takes keywords as a string input from a textbox and returns the top relevant searches for those keywords on the internet using an external API</p>
<p>
        Method (Operation) Name: GetTopSearchUrlsFromKeywords(string keywords)</p>
<p>
        Input/Parameter Type List: string keywords</p>
<p>
        Return Type: string[]</p>
<p>
        <asp:TextBox ID="TextBox6" runat="server" Height="196px" TextMode="MultiLine" Width="356px">Diwali India</asp:TextBox>
</p>
<p>
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="SEARCH" Width="101px" />
</p>
<p>
        <asp:TextBox ID="TextBox7" runat="server" Height="420px" TextMode="MultiLine" Width="878px"></asp:TextBox>
</p>
<p>
        &nbsp;</p>
<p>
        REMOTE SERVICE :: From ASU Repository</p>
<p>
        Method (Operation) Name: <span class="style1">GetRandomString(string length)</span></p>
<p>
        Input/Parameter Type List: string length</p>
<p>
        Return Type: string</p>
    <p>
        Remote Service URL: <a href="https://venus.sod.asu.edu/WSRepository/Services/RandomStringsvc/Service.svc">https://venus.sod.asu.edu/WSRepository/Services/RandomStringsvc/Service.svc</a> </p>
<p>
        &nbsp;</p>
<p>
        <asp:Label ID="Label1" runat="server" Text="Enter length of random string to be generated: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
</p>
<p>
        <asp:Button ID="Button6" runat="server" Height="26px" OnClick="Button6_Click" Text="Generate" Width="111px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
<p>
        <asp:Label ID="Label2" runat="server"></asp:Label>
</p>
<p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

