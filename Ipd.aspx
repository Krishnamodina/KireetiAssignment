<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ipd.aspx.cs" Inherits="Myproject.Ipd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            position: absolute;
            top: 108px;
            left: 266px;
            z-index: 1;
        }
        .auto-style3 {
            position: absolute;
            top: 172px;
            left: 270px;
            z-index: 1;
        }
        .auto-style4 {
            position: absolute;
            top: 225px;
            left: 270px;
            z-index: 1;
        }
        .auto-style5 {
            position: absolute;
            top: 289px;
            left: 261px;
            z-index: 1;
        }
        .auto-style6 {
            position: absolute;
            top: 344px;
            left: 262px;
            z-index: 1;
        }
        .auto-style7 {
            position: absolute;
            top: 93px;
            left: 718px;
            z-index: 1;
            width: 186px;
        }
        .auto-style9 {
            width: 211px;
            height: 33px;
            position: absolute;
            top: 224px;
            left: 409px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 339px;
            left: 404px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 383px;
            left: 436px;
            z-index: 1;
        }
        .auto-style12 {
            position: absolute;
            top: 283px;
            left: 409px;
            z-index: 1;
            width: 187px;
        }
        .auto-style13 {
            position: absolute;
            top: 340px;
            left: 589px;
            z-index: 1;
            height: 23px;
        }
        .auto-style14 {
            position: absolute;
            top: 102px;
            left: 409px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 89px;
            left: 911px;
            z-index: 1;
        }
        .auto-style16 {
            position: absolute;
            top: 339px;
            left: 765px;
            z-index: 1;
        }
        .auto-style17 {
            position: absolute;
            top: 162px;
            left: 408px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 47px;
            left: 344px;
            z-index: 1;
        }
        .auto-style19 {
            position: absolute;
            top: 37px;
            left: 687px;
            z-index: 1;
            width: 186px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="lblAge" runat="server" CssClass="auto-style3" Text="Age"></asp:Label>
        <asp:Label ID="lblHobbies" runat="server" CssClass="auto-style6" Text="Hobbies"></asp:Label>
        <asp:Label ID="lblcity" runat="server" CssClass="auto-style5" Text="City"></asp:Label>
        <asp:Label ID="lblSex" runat="server" CssClass="auto-style4" Text="Sex"></asp:Label>
        <asp:Label ID="lblPersonName" runat="server" CssClass="auto-style2" Text="Person Name"></asp:Label>
        <asp:Label ID="lblWelcome" runat="server" CssClass="auto-style7" Text="Hi"></asp:Label>
        <asp:Label ID="lblMsg" runat="server" CssClass="auto-style19" Visible="False"></asp:Label>
        <asp:TextBox ID="txtPName" runat="server" CssClass="auto-style14" Height="35px" ></asp:TextBox>
        <asp:Button ID="btnInsert" runat="server" CssClass="auto-style11" Text="Insert" OnClick="btnInsert_Click" />
        <asp:Button ID="btnLogout" runat="server" CssClass="auto-style15" Text="Logout" OnClick="btnLogout_Click" />
        <asp:RadioButtonList ID="rblSex" runat="server" CssClass="auto-style9" RepeatDirection="Horizontal">
            <asp:ListItem Text="Male" Value="1">Male</asp:ListItem>
            <asp:ListItem Text="Female" Value="0">Female </asp:ListItem>
        </asp:RadioButtonList>
        <asp:DropDownList ID="ddlCity" runat="server" CssClass="auto-style12" Height="35px">
            <asp:ListItem Selected="True">---Select City---</asp:ListItem>
            <asp:ListItem Value="1">Hyderabad</asp:ListItem>
            <asp:ListItem Value="2">Chennai</asp:ListItem>
            <asp:ListItem Value="3">Banglore</asp:ListItem>
        </asp:DropDownList>
        <asp:CheckBox ID="chkReadingBooks" runat="server" CssClass="auto-style13" Text="Reading Books" />
        <asp:CheckBox ID="chkCooking" runat="server" CssClass="auto-style16" Text="Cooking" />
        <asp:CheckBox ID="chkPlayingCricket" runat="server" CssClass="auto-style10" Text="PlayingCkricket" />
        <p>
            <asp:TextBox ID="txtAge" runat="server" CssClass="auto-style17" Height="35px" TextMode="Number"></asp:TextBox>
            <asp:HyperLink ID="hlMainMenu" runat="server" CssClass="auto-style18" NavigateUrl="~/TestMenu.aspx">MainMenu</asp:HyperLink>
        </p>
    </form>
</body>
</html>