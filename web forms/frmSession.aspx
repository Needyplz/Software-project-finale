<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmSession.aspx.cs" Inherits="Software_project.web_forms.frmSession" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="UsernameID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="UsernameID" HeaderText="UsernameID" ReadOnly="True" SortExpression="UsernameID" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" DeleteCommand="DELETE FROM [SessionTable] WHERE [UsernameID] = @UsernameID" InsertCommand="INSERT INTO [SessionTable] ([Password], [CustomerID]) VALUES (@Password, @CustomerID)" ProviderName="<%$ ConnectionStrings:Database1ConnectionString1.ProviderName %>" SelectCommand="SELECT [UsernameID], [Password], [CustomerID] FROM [SessionTable]" UpdateCommand="UPDATE [SessionTable] SET [Password] = @Password, [CustomerID] = @CustomerID WHERE [UsernameID] = @UsernameID">
            <DeleteParameters>
                <asp:Parameter Name="UsernameID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="CustomerID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="CustomerID" Type="Int32" />
                <asp:Parameter Name="UsernameID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
