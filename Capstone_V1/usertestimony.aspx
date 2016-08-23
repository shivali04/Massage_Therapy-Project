<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/NotLogged.Master" CodeBehind="usertestimony.aspx.cs" Inherits="Capstone_V1.usertestimony" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
   <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s"><span>My Testimony</span></h2>
   
  <div class="col-md-5"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
    <div >
          <asp:Label ID="welcome1" runat="server" Text="Label" Visible="false"></asp:Label>
        
       <!-- <asp:Label ID="Label1" runat="server" Text="UserID:"></asp:Label>-->
        <asp:TextBox ID="Userid" runat="server" Visible="false"></asp:TextBox>

       <asp:ScriptManager ID="ScriptManager1" runat="server">
           </asp:ScriptManager>
           <br />
            <asp:TextBox ID="TextBox6" runat="server" CssClass="disable_past_dates" placeholder="Enter Date"></asp:TextBox>
           <ajaxToolkit:CalendarExtender ID="TextBox6_CalendarExtender" PopupButtonID="ImageButton1" runat="server" TargetControlID="TextBox6" />
           <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" ImageUrl="~/cal.jpg" Width="25px" />
           <br /><br />
    
    </div></div>
               
                <div class="form-group" style="padding-left:85px">
                <asp:TextBox ID="testi" runat="server" CssClass="form-control" placeholder="Write your Testimony" TextMode="MultiLine" Height="220px" Width="1006px"></asp:TextBox>
            </div>
                </div>
    <center> <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Submit" OnClick="Button1_Click1" /></center>
    </div>
      <center>  <asp:Literal ID="results" runat="server"></asp:Literal></center>
   </asp:Content>

