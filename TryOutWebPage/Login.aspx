<%@ Page Title="Login Page" ValidateRequest="false" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TryOutWebPage.Login" %>

<asp:Content ID="Content11" runat="server" contentplaceholderid="MainContent">
    <br />
    <h3>Login / Registration Page for Members and Staff</h3>
    <br />

<asp:Label ID="Label1" runat="server" Text="Username: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="userNameTextBox" runat="server" Height="19px" Width="174px"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="passwordTextBox" runat="server" Height="19px" Width="174px"></asp:TextBox>
<br />
<br />
<asp:Button ID="loginButton" runat="server" Height="32px" OnClick="loginButton_Click" Text="Login" Width="81px" />
<br />
<br />
If you want to Register as a new user, please enter a captcha length below, and then click on &quot;Show me the Image&quot; button. After that, type in the actual captcha and click on the &quot;Register&quot; button to register yourself.<br />
<br />
Enter Captcha length:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox1" runat="server" Width="132px"></asp:TextBox>
<br />
<br />
<asp:Button ID="Button1" runat="server" Height="33px" OnClick="Button1_Click" Text="Show me the Image" Width="147px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Image ID="Image1" runat="server" Height="51px" Width="219px" />
<br />
<br />
<br />
Enter the Captcha here:&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox2" runat="server" Width="131px"></asp:TextBox>
<br />
<br />
<asp:Label ID="Label4" runat="server"></asp:Label>
<br />
<br />
<asp:Button ID="registerButton" runat="server" Height="32px" OnClick="registerButton_Click" Text="Register" Width="103px" />
<br />
<br />
<asp:Label ID="Label3" runat="server"></asp:Label>
<br />

</asp:Content>
