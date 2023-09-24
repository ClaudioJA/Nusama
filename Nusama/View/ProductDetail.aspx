<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage-Seller.Master" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="Nusama.View.ProductDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%int customerRole = pullCustomerRole(); %>
    <asp:Image ID="productImage" runat="server" width="500px" height="500px"></asp:Image><br />
    <asp:Label ID="nameLabel" runat="server" Text="Label"></asp:Label><br />
    <asp:Label ID="ratingLabel" runat="server" Text="Label"></asp:Label><br /><br />

    <%if (customerRole == 1){ %>
    <asp:Label ID="Label1" runat="server" Text="Color :"></asp:Label>
    <asp:RadioButtonList ID="ColorChoice" runat="server"></asp:RadioButtonList>
    <br /><br />

    <asp:Label ID="Label2" runat="server" Text="Size :"></asp:Label>
    <asp:RadioButtonList ID="SizeChoice" runat="server"></asp:RadioButtonList>
    <br /><br />

    <asp:Label ID="Label4" runat="server" Text="Quantity : "></asp:Label>
    <asp:TextBox ID="qtyBox" runat="server" type="number"></asp:TextBox>
    <br /><br />
    <%} %>

    <%if (customerRole == 1){ %>
    <asp:Button ID="addToCartBtn" runat="server" Text="Add to Cart" OnClick="addToCartBtn_Click"/>
    <br /><br />
    <%} %>
    
    <asp:Label ID="Label3" runat="server" Text="Comment :"></asp:Label><br />
    <hr />
    <asp:Repeater ID="commentsRepeater" runat="server">
        <ItemTemplate>
            <div>
                <span>Author : <%# Eval("customerName") %></span><br />
                <span>Title : <%# Eval("commentTitle") %></span><br />
                <span>Content : <%# Eval("commentContent") %></span><br />
                <span>Rating : <%# Eval("commentRating") %></span>
            </div>
            <hr />
        </ItemTemplate>
    </asp:Repeater>

    <%if (customerRole == 1){ %>
    <asp:Label ID="Label5" runat="server" Text="Your Comment : "></asp:Label><br 
    <asp:Label ID="Label6" runat="server" Text="Title : "></asp:Label>
    <asp:TextBox ID="titleBox" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label7" runat="server" Text="Comment : "></asp:Label><br />
    <asp:TextBox ID="commentBox" runat="server"></asp:TextBox><br />
    <asp:Label ID="Label8" runat="server" Text="Rating [1 - 5] : "></asp:Label>
    <asp:TextBox ID="ratingBox" runat="server" type="number"></asp:TextBox><br />
    <asp:Button ID="addCommentBtn" runat="server" Text="Add Comment" OnClick="addCommentBtn_Click"/>
    <%} %>

</asp:Content>
