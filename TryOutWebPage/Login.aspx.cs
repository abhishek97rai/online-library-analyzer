using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Runtime.Remoting.Lifetime;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;
using EncryptionLibrary;

namespace TryOutWebPage
{
    public partial class Login : System.Web.UI.Page
    {
        static string inputLength = "";
        static string apiString = "";
        string fileName = System.AppDomain.CurrentDomain.BaseDirectory;

        Boolean isMember = false;
        Boolean isStaff = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Redirect("~/MemberLogin.aspx");
            string returnUrl = Request["ReturnUrl"];
            if (returnUrl.Contains("PrivateMembers"))
            {
                isMember = true;
                fileName = fileName + "/PrivateMembers/Member.xml";
            }
            else if (returnUrl.Contains("PrivateStaff"))
            {
                isStaff = true;
                fileName = fileName + "/PrivateStaff/Staff.xml";
            }
        }

        protected void loginButton_Click(object sender, EventArgs e)
        {
            string filter = "UserName='" + userNameTextBox.Text + "'";

            DataSet loginDS = new DataSet();
            bool CookieValue = true;
            FileStream loginFileStream = new FileStream(fileName, FileMode.Open, FileAccess.Read);
            StreamReader reader = new StreamReader(loginFileStream);
            loginDS.ReadXml(reader);
            loginFileStream.Close();
            DataTable usersDetails = loginDS.Tables[0];
            DataRow[] matchUsers = usersDetails.Select(filter);

            if (matchUsers != null && matchUsers.Length > 0)
            {
                DataRow userRow = matchUsers[0];
                Encrypt en = new Encrypt();
                string hashedPassword = en.EncryptString(passwordTextBox.Text);
                //string hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(passwordTextBox.Text, "sha1");
                string XMLpassword = userRow["UserPassword"].ToString();
                if (string.Compare(XMLpassword, hashedPassword, false) != 0)
                {
                    //If not equals, display error message
                    if (isMember)
                    {
                        Label3.Text = "Invalid Member Credentials! Please try again.";
                    }
                    else if (isStaff)
                    {
                        Label3.Text = "Invalid Staff Credentials! Please try again.";
                    }
                    else
                    {
                        Label3.Text = "Invalid Credentials! Shouldn't have reached this block.";
                    }
                }
                else
                {
                    FormsAuthentication.RedirectFromLoginPage(userNameTextBox.Text, CookieValue);
                }
            }
            else
            {
                if (isMember)
                {
                    Label3.Text = "You are not registered as a Member yet! Please register and try again.";
                }
                else if (isStaff)
                {
                    Label3.Text = "You are not registered as Staff yet! Please register first, then add your username to ~/PrivateStaff/Web.config, and try again.";
                }
                else
                {
                    Label3.Text = "You are not registered yet! Shouldn't have reached this block.";
                }
            }
        }

        protected void registerButton_Click(object sender, EventArgs e)
        {
            if (!apiString.Trim().Equals("") && apiString.Equals(TextBox2.Text))
            {
                Label4.Text = "Congrats, you entered the correct Captcha text!";
                try
                {
                    DataSet userDS = new DataSet();
                    FileStream userFileStream = new FileStream(fileName, FileMode.Open, FileAccess.Read);
                    StreamReader reader = new StreamReader(userFileStream);
                    userDS.ReadXml(reader);
                    userFileStream.Close();
                    Encrypt en = new Encrypt();
                    string hashedPassword = en.EncryptString(passwordTextBox.Text);
                    //string hashedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(passwordTextBox.Text, "sha1");
                    DataRow newUser = userDS.Tables[0].NewRow();
                    newUser["UserName"] = userNameTextBox.Text;
                    newUser["UserPassword"] = hashedPassword;
                    userDS.Tables[0].Rows.Add(newUser);
                    userDS.AcceptChanges();
                    FileStream addUserFileStream = new FileStream(fileName, FileMode.Create, FileAccess.Write | FileAccess.Read);
                    StreamWriter writer = new StreamWriter(addUserFileStream);
                    userDS.WriteXml(writer);
                    writer.Close();
                    addUserFileStream.Close();
                    if (isMember)
                    {
                        Label3.Text = "Member Registration successful! Please login.";
                    }
                    else if (isStaff)
                    {
                        Label3.Text = "Staff Registration successful! Please login. (Remember to add your username to ~/PrivateStaff/Web.config to allow the permission for this page!)";
                    }
                    else
                    {
                        Label3.Text = "Registration successful! But shouldn't have reached here.";
                    }
                }
                catch (Exception ex)
                {
                    Label3.Text = "Error: " + ex.Message.ToString();
                }
            }
            else
            {
                Label4.Text = "Sorry, your answer does not match the shown Captcha! Please try again.";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ImageService.ServiceClient imgService = new ImageService.ServiceClient();
            inputLength = TextBox1.Text;
            if (inputLength.Equals(""))
                inputLength = "3";
            apiString = imgService.GetVerifierString(inputLength);
            Button1.Text = "Show another Image";

            //Stream myStream = imgService.GetImage(apiString);
            Image1.ImageUrl="~/ImageHandler.ashx?id=" + apiString;
        }
    }
}