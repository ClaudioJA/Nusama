<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage-Customer.Master" AutoEventWireup="true" CodeBehind="CheckoutPage.aspx.cs" Inherits="Nusama.View.CheckoutPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" Text="CheckOut"></asp:Label>
    <br /><br />
    <asp:Label ID="Label1" runat="server" Text="Address :"></asp:Label><br />
    <asp:TextBox ID="addressBox" runat="server"></asp:TextBox>
    <br /><br />
    <asp:Repeater ID="cartRepeater" runat="server">
        <ItemTemplate>
            <div>
                <span>Name : <%# Eval("productName") %></span><br />
                <asp:Image ID="productImage" runat="server" ImageUrl='<%# Eval("productImage") %>' Width="300px" Height="300px"/><br />
                <span>Price : <%# Eval("productPrice") %></span><br />
                <span>Quantity : <%# Eval("productQuantity") %></span><br />
                <span>Color : <%# Eval("productColor") %></span><br />
                <span>Size : <%# Eval("productSize") %></span><br />
            </div>
            <hr />
        </ItemTemplate>
    </asp:Repeater>

    <asp:Label runat="server" Text="Payment Detail"></asp:Label><br />
    <asp:Label runat="server" Text="Subtotal Product : "></asp:Label>
    <asp:Label ID="subtotalLabel" runat="server" Text=""></asp:Label><br />
    <asp:Label runat="server" Text="Shipping Fee : 30000"></asp:Label><br />
    <asp:Label runat="server" Text="Service Fee : 5000"></asp:Label><br />
    <asp:Label runat="server" Text="Total Payment : "></asp:Label>
    <asp:Label ID="totalLabel" runat="server" Text=""></asp:Label><br />

    <asp:RadioButtonList ID="PaymentMethod" runat="server">
        <asp:ListItem Text="OVO" Value="OVO" />
        <asp:ListItem Text="Dana" Value="Dana" />
        <asp:ListItem Text="PayPal" Value="PayPal" />
        <asp:ListItem Text="AmazonPay" Value="AmazonPay" />
        <asp:ListItem Text="BCA" Value="BCA" />
    </asp:RadioButtonList>

    <br /><br />

    <asp:Button ID="confirmBtn" runat="server" Text="Confirm" OnClick="confirmBtn_Click" />

</asp:Content>
