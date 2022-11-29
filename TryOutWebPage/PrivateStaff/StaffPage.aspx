<%@ Page Title="Staff Page" ValidateRequest="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StaffPage.aspx.cs" Inherits="TryOutWebPage.PrivateStaff.StaffPage" %>

<asp:Content ID="Content6" runat="server" contentplaceholderid="MainContent">
    <br />
    <h3>Welcome to the Staff page!</h3>
    <p>This should only be accessible to users "john", "wick", "TA", and any other users that the TA adds to the Staff.xml file (through Registration) and Web.config files!</p>
    <p>Once you have access to this page, you should also be able to navigate to the Member page without logging in again, since all users are allowed to navigate there.</p>
</asp:Content>
