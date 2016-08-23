<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/NotLogged.Master"  CodeBehind="Update.aspx.cs" Inherits="Capstone_V1.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<script type="text/javascript">
        function RefreshUpdatePanel() {
            __doPostBack('<%= txt_uname.ClientID %>', '');
        };
    </script>
    <br />
    
  <asp:Literal ID="results" runat="server"></asp:Literal>
    <div class="row">      
     <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s"><span>Update Profile</span></h2>
         </div> 
     <div class="container">
          
             <div id="signupbox" style="display: block; margin-top: 40px;" class="mainbox col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info">
                <div class="panel-heading">
                    
                    <div style="float: right; font-size: 85%; position: relative; top: -10px"></div>
                </div>
                </div>

          <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <fieldset>
                 <div class="form-group">
      <b>  <asp:Label ID="label_fname" runat="server" CssClass="control-label col-sm-2" Text="First Name" for="fname"></asp:Label> </b> 
      <div class=" col-sm-8 input-group "> 
           
           <asp:TextBox ID="textbox_fname" runat="server" CssClass=" form-control alert-warning" placeholder="Enter First Name"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="textbox_fname"  runat ="server" ErrorMessage="Field is required !" ForeColor="red"></asp:RequiredFieldValidator>
           </div>
    </div>

    <div class="form-group">
           <b>  <asp:Label ID="label_lname" runat="server" CssClass="control-label col-sm-2" Text="Last Name" for="lname"></asp:Label> </b>
       
      <div class="input-group col-sm-8">  
             
            <asp:TextBox ID="textbox_lname" runat="server" CssClass="form-control alert-warning .has-warning " placeholder="Enter Last Name"></asp:TextBox>  
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textbox_lname" ErrorMessage="Field is required !" ForeColor="red"></asp:RequiredFieldValidator>
           </div>
       </div>

         <div class="form-group">
            <b> <asp:Label ID="lbluname" CssClass="col-sm-2 control-label" runat="server" Text="User Name:"></asp:Label> </b>
            <div class=" col-sm-8 input-group">

                <asp:TextBox ID="txt_uname" CssClass="form-control margin-bottom alert-warning " runat="server" onkeyup="RefreshUpdatePanel();" OnTextChanged="textchanged"></asp:TextBox>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="True">
                    <ContentTemplate>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" Display="Dynamic" runat="server"
                            ControlToValidate="txt_uname" ErrorMessage="Field is required !"
                            ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="txt_uname" />
                    </Triggers>
                </asp:UpdatePanel>
            </div>
        </div>

         <div class="form-group">
      <b>  <asp:Label ID="label_id" runat="server" CssClass="control-label col-sm-2" Text="Email ID: " for="email"></asp:Label> </b> 
      <div class=" col-sm-8 input-group"> 
             
           <asp:TextBox ID="textbox_id" runat="server" CssClass="form-control alert-warning " placeholder="Enter Email ID"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="textbox_id" ErrorMessage="Field is required !" ForeColor="red"></asp:RequiredFieldValidator>
            </div>
    </div>

      <div class="form-group">
     <b>  <asp:Label ID="lblpass" CssClass="col-sm-2 control-label" runat="server" Text="Password:"></asp:Label> </b>
         <div class="col-sm-8 input-group">
         <asp:TextBox ID="txtpass"  CssClass="form-control margin-bottom alert-warning" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtpass" runat="server" Display="Dynamic" ForeColor="red" ErrorMessage="Field is required !"></asp:RequiredFieldValidator>
         </div>
       </div>
       <div class="form-group">
<b>    <asp:Label ID="lblrepass" CssClass="col-sm-2 control-label" runat="server" Text="Confirm Password:"></asp:Label> </b>
      <div class="col-sm-8 input-group">
          <asp:TextBox ID="txtrepass"   CssClass="form-control margin-bottom alert-warning" runat="server"></asp:TextBox>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtrepass" runat="server" Display="Dynamic" ForeColor="red" ErrorMessage="Field is required !"></asp:RequiredFieldValidator>
            <asp:CompareValidator runat="server" id="cmpPassword" controltovalidate="txtrepass" Display="Dynamic" controltocompare="txtpass" ForeColor="Red" errormessage="Password does not match"/><br />
    </div>
           </div>


        <div class="form-group">
<b> <asp:Label ID="label_phone" CssClass="col-sm-2 control-label" runat="server" Text="Phone No:"></asp:Label> </b>
        <div class="col-md-8 input-group">
            <asp:TextBox ID="textbox_number" CssClass="form-control alert-warning" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ForeColor="red" ControlToValidate="textbox_number" runat="server" ErrorMessage="Field is required !"></asp:RequiredFieldValidator>  
        </div>
      
      </div>
      
      
      <div class="form-group">
    <b>         <asp:Label ID="lbladd" CssClass="col-sm-2 control-label" runat="server" Text="Address:"></asp:Label> </b>
            <div class="col-md-8 input-group">
                <asp:TextBox ID="txtadd" CssClass="form-control alert-warning" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ForeColor="red" ControlToValidate="txtadd" runat="server" ErrorMessage="Field is required !">

                </asp:RequiredFieldValidator>  
            </div>
      
      </div>

         <div class="form-group">

           <b>  
             <asp:CheckBox ID="CheckBox1" runat="server" />
             <asp:Label ID="label2" runat="server" CssClass="control-label col-sm-2" Text="Subscribe to mailing list"></asp:Label> </b>
       
      <div class="input-group col-sm-8">  
             
              
       </div>
       </div>

      
     
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-8">
          <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn btn-default btn btn-success" OnClick="Button1_Click1" />
      </div>
    </div>

          </fieldset>
                </div>

        </div>
             

 </asp:Content>