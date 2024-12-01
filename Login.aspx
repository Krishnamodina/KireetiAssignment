<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Myproject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 224px;
            left: 343px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 169px;
            left: 342px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 106px;
            left: 221px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 180px;
            left: 194px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 235px;
            left: 195px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 305px;
            left: 404px;
            z-index: 1;
            width: 84px;
        }
        .auto-style7 {
            position: absolute;
            top: 99px;
            left: 611px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:TextBox ID="txtUserName" runat="server" CssClass="auto-style2" Height="40px"></asp:TextBox>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="auto-style1" Height="40px"></asp:TextBox>
        <asp:Label ID="lblPassword" runat="server" CssClass="auto-style5" Text="PASSWORD"></asp:Label>
        <asp:Label ID="lblUserName" runat="server" CssClass="auto-style4" Text="USERNAME"></asp:Label>
        <asp:Label ID="lblWelcome" runat="server" CssClass="auto-style3" Text="WELCOME TO LOGIN PAGE"></asp:Label>
        <asp:Button ID="btnSignin" runat="server" CssClass="auto-style6" Text="Signin" OnClick="btnSignin_Click" />
        <asp:Label ID="lblMsg" runat="server" CssClass="auto-style7" Visible="False"></asp:Label>
    </form>
</body>
</html>
