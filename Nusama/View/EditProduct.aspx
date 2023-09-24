<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage-Seller.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="Nusama.View.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" Text="Edit Product"></asp:Label>
    <br /><br />

    <asp:Label runat="server" Text="Name : "></asp:Label>
    <asp:TextBox ID="nameBox" runat="server"></asp:TextBox><br /><br />

    <asp:Label runat="server" Text="Price : "></asp:Label>
    <asp:TextBox ID="priceBox" runat="server" type="number"></asp:TextBox><br /><br />

    <asp:Label runat="server" Text="Desc :"></asp:Label>
    <asp:TextBox ID="descBox" runat="server"></asp:TextBox><br /><br />

    <asp:Label runat="server" Text="Image : "></asp:Label><br />
    <asp:Image ID="currentImage" runat="server" width="500px" Height="500px"/><br />
    <asp:FileUpload ID="imageUpload" runat="server"></asp:FileUpload><br /><br />

    <asp:Button ID="updateBtn" runat="server" Text="Add Product" OnClick="updateBtn_Click"/><br />
    <asp:Label ID="errorLabel" runat="server" Text=""></asp:Label><br />

    

</asp:Content>
