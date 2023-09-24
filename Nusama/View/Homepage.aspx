<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage-Customer.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Nusama.View.Homepage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="StyleSheets" runat="server">
    <link href="../CSS/Navigation.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/Main.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     
    
    <%int customerRole = pullCustomerRole(); %>

    <asp:Label ID="Label2" runat="server" Text="Today's Offer"></asp:Label><br />
    <div class="product__wrapper">
        <%foreach(var x in db.Products) {%>
            <div class="product">
                <a class="product__link" href="<%= ResolveUrl("~/View/ProductDetail.aspx?productId=") + HttpUtility.UrlEncode(x.productId.ToString()) %>">
                <img class="product__img" src='<%= x.productImage%>' alt="Album Image" width="100" height="100"/>
                <p class="" ><%= x.productName %></p>
                <p class="" > Rp. <%= x.productPrice %></p>
                <p class="" ><%= x.productRating %></p>
                </a><br />
            </div>
        <% }%>
    </div>
</asp:Content>
