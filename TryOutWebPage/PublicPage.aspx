<%@ Page Title="Public Home Page" ValidateRequest="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PublicPage.aspx.cs" Inherits="TryOutWebPage.PublicPage" %>
<%@ Register Src="~/WebUserControl1.ascx" TagPrefix="uc" TagName="Intro"%>

<asp:Content ID="Content2" runat="server" contentplaceholderid="MainContent">
    <br />
    <h3>Welcome to the online digital library analyzer system!</h3>
    <br />
    <uc:Intro ID="introControl" runat="server" />
    <br />
    <h4>How End Users can Sign Up for our Services</h4>
    <p>
        Click on this
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/PrivateMembers/MemberPage.aspx">Member page link</asp:HyperLink>
        , and you&#39;ll be redirected to our Registration (Login) page. Enter your details, and submit to self-subscribe to our services.
    </p>
    <br />
    <h4>How Users can Test our Application</h4>
    <p>
        You can access the TryIt links using the
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/ServiceDirectory.aspx">Service Directory link</asp:HyperLink>
        &nbsp;below. Apart from this, you can also access the
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/PrivateMembers/MemberPage.aspx">Member page</asp:HyperLink>
&nbsp;by logging in using your credentials.</p>
<p>
        <asp:Button ID="Button1" runat="server" Height="31px" OnClick="Button1_Click" Text="Member Page" Width="129px" />
</p>
<p>
        Once you register / self-subscribe for our services, you can check the ~/PrivateMembers/Member.xml, where you would see your username and encrypted hashed password added to the XML file.</p>
<p>
        To test the other authentication/authorization feature, go to
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/PrivateStaff/StaffPage.aspx">Staff page</asp:HyperLink>
        , and try entering credentials to see if you have access to these pages or not.</p>
<p>
        <asp:Button ID="Button2" runat="server" Height="31px" OnClick="Button2_Click" Text="Staff Page" Width="129px" />
</p>
<p>
        NOTE: Only users &quot;john&quot; and &quot;wick&quot; have access to the Staff page. Password for the same is &quot;hello1&quot;.&nbsp;Apart from this, the user &quot;TA&quot; has also been granted access to this page, with the password being &quot;Cse44598!&quot;. 
        This can be verified through the Web.config file defined for the Staff page, along with the ~/PrivateStaff/Staff.xml file, where these credentials are stored. You can register new staff and add that staff separately to ~/PrivateStaff/Web.config and check if the newly configured staff user can access the page or not.</p>
    <br />
    <h4>Required Test Cases / Inputs for our Services</h4>
    <p>
        Once you are on the TryIt page, all you need is a valid URL that you want to analyze! Then you can keep playing around with all the services by following the instructions there.
    </p>
    <br />
    <h4>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ServiceDirectory.aspx">Service Directory</asp:HyperLink>
    </h4>
</asp:Content>
