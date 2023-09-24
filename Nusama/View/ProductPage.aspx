<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage-Seller.Master" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="Nusama.View.ProductPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" Text="Product List"></asp:Label>
    <asp:Label ID="errorLabel" runat="server" Text=""></asp:Label>
    <asp:Label ID="errorLabel1" runat="server" Text=""></asp:Label>
    <br /><hr />
    <asp:Repeater ID="productRepeater" runat="server" OnItemDataBound="parentRepeater_ItemDataBound">
        <ItemTemplate>
            <div>
                <span>Name : <%# Eval("productName") %></span><br />
                <asp:Image ID="productImage" runat="server" ImageUrl='<%# Eval("productImage") %>' Width="300px" Height="300px"/><br />
                <span>Price : <%# Eval("productPrice") %></span><br />
                <span>Rating : <%# Eval("productRating") %></span><br /><br />
                <asp:Label runat="server" Text="Color :"></asp:Label><br />
                <asp:Repeater ID="ColorRepeater" runat="server">
                    <ItemTemplate>
                        <div>
                            <span> <%# Container.DataItem %></span><br />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <br />
                <asp:Label runat="server" Text="Size :"></asp:Label><br />
                <asp:Repeater ID="SizeRepeater" runat="server">
                    <ItemTemplate>
                        <div>
                            <span> <%# Container.DataItem %></span><br />
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <asp:Button ID="addColorSize" runat="server" Text="Add Color or Size" OnClick="addColorSize_Click" CommandArgument='<%# Eval("productId") %>'/>
                <asp:Button ID="editBtn" runat="server" Text="Edit" OnClick="editBtn_Click" CommandArgument='<%# Eval("productId") %>'/>
                <asp:Button ID="removeBtn" runat="server" Text="Remove" OnClick="removeBtn_Click" CommandArgument='<%# Eval("productId") %>'/>
            </div>
            <hr />
        </ItemTemplate>
    </asp:Repeater>
    
</asp:Content>
