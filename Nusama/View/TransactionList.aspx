<%@ Page Title="" Language="C#" MasterPageFile="~/View/MasterPage-Customer.Master" AutoEventWireup="true" CodeBehind="TransactionList.aspx.cs" Inherits="Nusama.View.TransactionList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" Text="Transaction List"></asp:Label>
    <br /><br />

    <asp:Repeater ID="transactionRepeater" runat="server">
        <ItemTemplate>
            <div>
                <span>Transaction ID : <%# Eval("transactionId") %></span><br />
                <span>Time : <%# Eval("transactionDate") %></span><br />
                <span>Address : <%# Eval("address") %></span><br />
                <asp:Button Text="Detail" ID="tranDetailBtn" runat="server" OnClick="tranDetailBtn_Click" CommandArgument='<%# Eval("transactionId") %>'/>
            </div>
            <hr />
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
