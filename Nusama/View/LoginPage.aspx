<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Nusama.View.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Login Page"></asp:Label><br /><br />
            
            <asp:Label ID="nameLabel" runat="server" Text="Email : "></asp:Label>
            <asp:TextBox ID="emailBox" runat="server"></asp:TextBox><br /><br />

            <asp:Label ID="Label2" runat="server" Text="Password : "></asp:Label>
            <input id="passBox" type="password" runat="server"/><br /><br />

            <asp:Button ID="loginBtn" runat="server" Text="Login" OnClick="loginBtn_Click"/>
            <br />
            <asp:Button ID="guestBtn" runat="server" Text="Continue as Guest" OnClick="guestBtn_Click"/>
            <br />
            <asp:Label ID="statusLabel" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
