<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="Software_project.UserLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .form-container {
            width: 500px;
            height: 300px;
            margin: 0 auto;
            border: 2px solid black;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-container">
            <h1>Sign Up Form</h1>
            <br />
            <asp:Label ID="FirstNameLabel" runat="server" Text="First Name:" />
            <asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="LastNameLabel" runat="server" Text="Last Name:" />
            <asp:TextBox ID="LastNameTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="PasswordLabel" runat="server" Text="Password:" />
            <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
            <asp:Button ID="btnCreateAccount" runat="server" OnClick="btnCreateAccount_Click" Text="Create an Account!" />
        </div>
    </form>
</body>
</html>
