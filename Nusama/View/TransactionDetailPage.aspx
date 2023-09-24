<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage-Customer.Master" AutoEventWireup="true" CodeBehind="TransactionDetailPage.aspx.cs" Inherits="Nusama.View.TransactionDetailPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" Text="Transaction Detail"></asp:Label>
    <br /><br />
    <asp:Label runat="server" Text="Transaction ID :"></asp:Label>
    <asp:Label ID="tranIdLabel" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label runat="server" Text="Time :"></asp:Label>
    <asp:Label ID="dateLabel" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label runat="server" Text="Address :"></asp:Label>
    <asp:Label ID="addressLabel" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label runat="server" Text="Payment :"></asp:Label>
    <asp:Label ID="paymentLabel" runat="server" Text=""></asp:Label>
    <br /><hr />
    <asp:Repeater ID="tranRepeater" runat="server">
        <ItemTemplate>
            <div>
                <asp:Image ID="productImage" runat="server" ImageUrl='<%# Eval("image") %>' Width="300px" Height="300px"/><br />
                <span>Name : <%# Eval("productName") %></span><br />
                <span>Price : <%# Eval("price") %></span><br />
                <span>Quantity : <%# Eval("quantity") %></span><br />
            </div>
            <hr />
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
