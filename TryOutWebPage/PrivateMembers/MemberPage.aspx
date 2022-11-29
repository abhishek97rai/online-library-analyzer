<%@ Page Title="Member Page" ValidateRequest="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MemberPage.aspx.cs" Inherits="TryOutWebPage.MemberPage" %>
<%@ Register Src="~/WebUserControl1.ascx" TagPrefix="uc" TagName="Intro"%>

<asp:Content ID="Content3" runat="server" contentplaceholderid="MainContent">
    <br />
    <h3>Welcome to the Members page!</h3>
    <br />
    <uc:Intro ID="introControl" runat="server" />
    <br />
    <h4>As a member, you have access to all our premium content, including our current set of services, and any other upcoming projects.</h4>
    <p>Note that access to this page does not give you access to the Staff page! Both the pages have separate authorization management.</p>
    <p>Enjoy navigating!</p>
    <h3>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/ServiceDirectory.aspx">Service Directory</asp:HyperLink>
    </h3>
    <br />
</asp:Content>
