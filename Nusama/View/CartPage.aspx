<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage-Customer.Master" AutoEventWireup="true" CodeBehind="CartPage.aspx.cs" Inherits="Nusama.View.CartPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" Text="Cart"></asp:Label>
    <br /><br />
    <asp:Label runat="server" Text="Item List"></asp:Label>
    <br /><hr />
    <asp:Repeater ID="cartRepeater" runat="server">
        <ItemTemplate>
            <div>
                <span>Name : <%# Eval("productName") %></span><br />
                <asp:Image ID="productImage" runat="server" ImageUrl='<%# Eval("productImage") %>' Width="300px" Height="300px"/><br />
                <span>Price : <%# Eval("productPrice") %></span><br />
                <span>Quantity : <%# Eval("productQuantity") %></span><br />
                <span>Color : <%# Eval("productColor") %></span><br />
                <span>Size : <%# Eval("productSize") %></span><br />
                <asp:Button ID="removeBtn" runat="server" Text="Remove" OnClick="removeBtn_Click" CommandArgument='<%# Eval("cartId") %>'/>
            </div>
            <hr />
        </ItemTemplate>
    </asp:Repeater>
    <asp:Button ID="checkOut" runat="server" Text="CheckOut" OnClick="checkOut_Click" />
</asp:Content>
