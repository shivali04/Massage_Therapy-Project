<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/NotLogged.Master" CodeBehind="success.aspx.cs" Inherits="paypalTest.success" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
    <br /><center><h4>Thank you. Your order has been processed!</h4></center>
    <br /><br /><br />
   <center> <h4><a href="Customer_Account.aspx">Go back to Home Page!</a></h4></center>
    <br /><br /><br /><br /><br /><br />
</asp:Content>