<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="Nusama.View.RegisterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Register Page"></asp:Label><br /><br />
            
            <asp:Label ID="nameLabel" runat="server" Text="Name : "></asp:Label>
            <asp:TextBox ID="nameBox" runat="server"></asp:TextBox><br /><br />

            <asp:Label ID="Label4" runat="server" Text="Email : "></asp:Label>
            <asp:TextBox ID="emailBox" runat="server"></asp:TextBox><br /><br />

            <asp:Label ID="Label2" runat="server" Text="Password : "></asp:Label>
            <input id="passBox" type="password" runat="server"/><br /><br />

            <asp:Label ID="Label3" runat="server" Text="Confirm Password : "></asp:Label>
            <input id="cPassBox" type="password" runat="server"/><br /><br />

            <asp:Label ID="Label5" runat="server" Text="Address : "></asp:Label>
            <asp:TextBox ID="addressBox" runat="server"></asp:TextBox><br /><br />

            <asp:Button ID="registerBtn" runat="server" Text="Button" OnClick="registerBtn_Click"/>

        </div>
    </form>
</body>
</html>
