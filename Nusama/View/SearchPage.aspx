<%@ Page Title="" enableEventValidation="false" Language="C#" MasterPageFile="~/View/MasterPage-Seller.Master" AutoEventWireup="true" CodeBehind="SearchPage.aspx.cs" Inherits="Nusama.View.SearchPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" Text="Search"></asp:Label>
    <br /><br />
    <asp:Label ID="keyBox" runat="server" Text=""></asp:Label>
    <br /><hr />
    <asp:Repeater ID="resultRepeater" runat="server">
        <ItemTemplate>
            <div>
                <asp:Image ImageUrl=' <%# Eval("productImage") %>' runat="server" width="100px" Height="100px"/><br />
                <span>Name : <%# Eval("productName") %></span><br />
                <span>Price : <%# Eval("productPrice") %></span><br />
                <span>Rating : <%# Eval("productRating") %></span><br />
                <asp:Button ID="moreDetailBtn" Text="More Detail" runat="server" OnClick="moreDetailBtn_Click" CommandArgument='<%# Eval("productId") %>'/>
            </div>
            <hr />
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
