<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lpl.aspx.cs" Inherits="Myproject.lpd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 60px;
            left: 321px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 50px;
            left: 567px;
            z-index: 1;
            width: 152px;
        }
        .auto-style3 {
            width: 579px;
            height: 180px;
            position: absolute;
            top: 125px;
            left: 134px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 42px;
            left: 738px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:HyperLink ID="hlMainMenu" runat="server" CssClass="auto-style1" NavigateUrl="~/TestMenu.aspx">MainMenu</asp:HyperLink>
        <asp:Label ID="lblWelcom" runat="server" CssClass="auto-style2" Text="hi"></asp:Label>
        <asp:Button ID="btnLogout" runat="server" CssClass="auto-style4" Text="Logout" OnClick="btnLogout_Click" />
        <asp:GridView ID="personsGridview" runat="server" CellPadding="4" CssClass="auto-style3" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" OnRowCommand="personsGridview_RowCommand">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Age" HeaderText="Age" />
                <asp:BoundField DataField="Sex" HeaderText="Sex" />
                <asp:BoundField DataField="Hobbies1" HeaderText="Hobby1" />
                <asp:BoundField DataField="Hobbies2" HeaderText="Hobby2" />
                <asp:BoundField DataField="Hobbies3" HeaderText="Hobby3" />
                <asp:BoundField DataField="PersonName" HeaderText="Person Name" />
<asp:TemplateField ShowHeader="False"><ItemTemplate>
                        <asp:Button ID="btnEdit" runat="server"  CommandName="cmdedit" Text="Edit" CommandArgument='<%# Eval("Id") %>' CausesValidation="false" />
                    
</ItemTemplate>
</asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </form>
</body>
</html>
