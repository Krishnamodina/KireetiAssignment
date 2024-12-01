 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestMenu.aspx.cs" Inherits="Myproject.TestMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 279px;
            left: 106px;
            z-index: 1;
        }
        .auto-style2 {
            position: absolute;
            top: 196px;
            left: 104px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 239px;
            left: 104px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 121px;
            left: 388px;
            z-index: 1;
            width: 202px;
        }
        .auto-style5 {
            position: absolute;
            top: 116px;
            left: 616px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HyperLink ID="hlOwn" runat="server" CssClass="auto-style2" NavigateUrl="~/Own.aspx">Function Overloading and object Method calling own example</asp:HyperLink>
        <asp:HyperLink ID="hlPl" runat="server" CssClass="auto-style1" NavigateUrl="~/lpl.aspx">Person list</asp:HyperLink>
        <asp:HyperLink ID="hpIpd" runat="server" CssClass="auto-style3" NavigateUrl="~/Ipd.aspx">Insert person details</asp:HyperLink>
        <asp:Label ID="lblWelcome" runat="server" CssClass="auto-style4" Visible="False"></asp:Label>
        <p>
            <asp:Button ID="btnLogOut" runat="server" CssClass="auto-style5" Text="Logout" OnClick="btnLogOut_Click" />
        </p>
    </form>
</body>
</html>
