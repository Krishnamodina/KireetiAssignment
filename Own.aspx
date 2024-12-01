<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Own.aspx.cs" Inherits="Myproject.Own" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            position: absolute;
            top: 397px;
            left: 411px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 176px;
            left: 412px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 110px;
            left: 411px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 322px;
            left: 410px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 248px;
            left: 411px;
            z-index: 1;
        }
        .auto-style8 {
            position: absolute;
            top: 480px;
            left: 232px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 477px;
            left: 442px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 114px;
            left: 211px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 46px;
            left: 820px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 186px;
            left: 208px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 259px;
            left: 207px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 332px;
            left: 203px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 403px;
            left: 201px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 49px;
            left: 383px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 51px;
            left: 571px;
            z-index: 1;
            width: 234px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="lblNumber1" runat="server" CssClass="auto-style10" Text="Number1"></asp:Label>
        <asp:Label ID="lblSumofN1plusN2" runat="server" CssClass="auto-style14" Text="Sum of N1+N2"></asp:Label>
        <asp:Label ID="lblNumber3" runat="server" CssClass="auto-style13" Text="Number3"></asp:Label>
        <asp:Label ID="lblNumber2" runat="server" CssClass="auto-style12" Text="Number2"></asp:Label>
         <asp:Label ID="lblSumofN1plusN2plusN3" runat="server" CssClass="auto-style15" Text="Sum of N1+N2+N3"></asp:Label>
        <asp:Button ID="btnSumofN1plusN2plusN3" runat="server" CssClass="auto-style9" Text="Add N1+N2+N3" OnClick="btnSumofN1plusN2plusN3_Click" />
        <asp:Button ID="btnSumofN1plusN2" runat="server" CssClass="auto-style8" Text="Add N1+N2" OnClick="btnSumofN1plusN2_Click" />
        <asp:Button ID="btnLogOut" runat="server" CssClass="auto-style11" Text="LogOut" OnClick="btnLogOut_Click" />
        <asp:Label ID="lblWelcome" runat="server" CssClass="auto-style17" Visible="False"></asp:Label>
        <asp:TextBox ID="txtSumofN1plusN2plusN3" runat="server" CssClass="auto-style3" Height="35px" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="txtNumber1" runat="server" CssClass="auto-style5" Height="35px"></asp:TextBox>
        <asp:TextBox ID="txtNumber2" runat="server" CssClass="auto-style4" Height="35px"></asp:TextBox>
        <asp:TextBox ID="txtSumofN1plusN2" runat="server" CssClass="auto-style6" Height="35px" ReadOnly="True"></asp:TextBox>
        <asp:TextBox ID="txtNumber3" runat="server" CssClass="auto-style7" Height="35px"></asp:TextBox>
        <asp:HyperLink ID="hlMainMenu" runat="server" CssClass="auto-style16" Font-Bold="True" NavigateUrl="~/TestMenu.aspx">Main Menu</asp:HyperLink>
    </form>
</body>
</html>
