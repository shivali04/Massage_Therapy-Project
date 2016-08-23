<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/NotLogged.Master" CodeBehind="login.aspx.cs" Inherits="Capstone_V1.login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/>
    <br/>
     <div class="container">
         <div class="panel panel-default center-block">
             <div class="panel-body">
  <h2>Login </h2>
  <%--<form class="form-horizontal" role="form" runat="server"> --%>

      <div class="form-group" runat="server">
      
      <div class=" col-sm-7 input-group center-block">  
           <asp:TextBox ID="uname" runat="server" CssClass="form-control alert-warning " placeholder="Enter username"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="uname" runat="server" ErrorMessage="field is required" ForeColor="Red"></asp:RequiredFieldValidator>
           </div>
    </div>
    <div class="form-group" runat="server">
          
      
      <div class="input-group col-sm-7 center-block">  
           <asp:TextBox ID="textbox_pwd" runat="server" TextMode="Password" CssClass="form-control alert-warning " placeholder="Enter Password"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="textbox_pwd" runat="server" ErrorMessage="field is required" ForeColor="Red"></asp:RequiredFieldValidator>
           </div>
        
     </div>

    
    <div class="form-group">        
      <div class="col-sm-offset-6 col-sm-8">
       <div class="checkbox">
      <%--    <label><input type="checkbox"> Remember me</label>--%>
            
                <asp:CheckBox ID="CheckBox1"  runat="server"/>Remember me <br />
        </div>
      </div>
    </div>
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-8"><br />
          <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-default btn btn-success center-block" OnClick="Button1_Click" Width="250px"  />
      </div>
        
    </div><br />
                 <div class="form-group center-block">  
                     <div class="col-sm-offset-5 col-sm-8">
          <br /> <strong><asp:Label ID="Label1" ForeColor="Red" runat="server" Text=""></asp:Label><br /></strong> 
                     </div>  
                       </div>
             </div>
             </div>
         </div>
    <br>
    <br>
  </asp:Content>
