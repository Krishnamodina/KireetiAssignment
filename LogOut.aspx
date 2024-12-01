<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogOut.aspx.cs" Inherits="Myproject.LogOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 60px;
            left: 150px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 9px;
            left: 603px;
            z-index: 1;
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="lblLogout" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Size="Larger" ForeColor="Green" Text="&quot;You are Successfully Logout&quot;"></asp:Label>
        <asp:HyperLink ID="hlLogin" runat="server" CssClass="auto-style2" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
    </form>
</body>
</html>
