<%@ Page Title="" enableEventValidation="false" Language="C#" MasterPageFile="~/View/MasterPage-Seller.Master" AutoEventWireup="true" CodeBehind="AddSizeColor.aspx.cs" Inherits="Nusama.View.AddSizeColor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" Text="Add Color and Size Option"></asp:Label><br />
    <asp:Label runat="server" ID="productIdLabel" Text="Product ID"></asp:Label><br />
    
    <br /><hr />
    
    <asp:Label runat="server" Text="Add Color :"></asp:Label><br />
    <asp:TextBox ID="colorBox" runat="server"></asp:TextBox>
    <asp:Button ID="addColorBtn" runat="server" Text="Add" OnClick="addColorBtn_Click"/>
    <asp:Label runat="server" ID="colorStatus" Text=""></asp:Label><br />

    <br /><hr />

    <asp:Label runat="server" Text="Add Size :"></asp:Label><br />
    <asp:TextBox ID="sizeBox" runat="server"></asp:TextBox>
    <asp:Button ID="addSizeBtn" runat="server" Text="Add" OnClick="addSizeBtn_Click"/>
    <asp:Label runat="server" ID="sizeStatus" Text=""></asp:Label><br />
    <asp:Label runat="server" ID="statusLabel" Text=""></asp:Label><br />
    <br /><hr />

    <asp:Label runat="server" Text="Delete Color"></asp:Label><br />
    <asp:Repeater ID="ColorRepeater" runat="server">
        <ItemTemplate>
            <div>
                <span><%# Eval("colorName") %></span>
                <asp:Button Text="Delete" runat="server" ID="deleteColorBtn" OnClick="deleteColorBtn_Click" CommandArgument='<%# Eval("colorName") %>' />
                <br />
            </div>
        </ItemTemplate>
    </asp:Repeater>

    <br /><hr />

    <asp:Label runat="server" Text="Delete Size"></asp:Label><br />
    <asp:Repeater ID="SizeRepeater" runat="server">
        <ItemTemplate>
            <div>
                <span> <%# Eval("productSize") %></span>
                <asp:Button Text="Delete" runat="server" ID="deleteSizeBtn" OnClick="deleteSizeBtn_Click" CommandArgument='<%# Eval("productSize") %>' />
                <br />
            </div>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
