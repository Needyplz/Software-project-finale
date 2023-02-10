<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAlogin.aspx.cs" Inherits="Software_project.CreateAlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
        <div>
            <h1>Create a Login</h1>
        </div>
        <p>
            &nbsp;</p>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="Label3" runat="server" Text="First Name:"></asp:Label>
            <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="SecondName:"></asp:Label>
            <asp:TextBox ID="SecondName" runat="server"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="New Password:"></asp:Label>
            <asp:TextBox ID="NewPassword" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Re-enter Password:"></asp:Label>
            <asp:TextBox ID="Renter" runat="server"></asp:TextBox>
        </p>
        <div>
            <asp:Button ID="Creating" runat="server" OnClick="Creating_Click" style="margin-bottom: 2px" Text="Create Password" />
        </div>
    </form>
</body>
</html>
