<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Software_project._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>NESCOT food collection&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Pizza</asp:LinkButton>
&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server">Drinks</asp:LinkButton>
&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton3" runat="server">Other meals</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton4" runat="server">Support</asp:LinkButton>
            </h3>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/nescot-9.jpg" />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
