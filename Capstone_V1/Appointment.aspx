<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/NotLogged.Master" CodeBehind="Appointment.aspx.cs" Inherits="Capstone_V1.Appointment" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    
     <asp:Label ID="welcome1" runat="server" Text="Label" Visible="false"></asp:Label>
        
      
        <!--Should be pre-populated-->
      <%-- <asp:Label ID="userID" runat="server"  Text="User ID"></asp:Label> --%>
        <asp:TextBox ID="userIDText" runat="server" Visible="false" ></asp:TextBox></br>
      <div class="row">
                <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s"><span>Schedule Appointment</span></h2>
            </div> 
     <div class="container">
         <div class="panel panel-default center-block">
             <div class="panel-body">
         <div class="form-horizontal form-inline form-group" >
            <asp:Label ID="firstname" runat="server" for="fname" Text="First Name: "></asp:Label> </b>
            <div class=" col-lg-7 input-group"> 
            <asp:TextBox ID="TextBox2" runat="server" class=" form-control"></asp:TextBox>
            <br /> 
             </div>
        </div>
         <br/>
         <div class="form-horizontal form-inline form-group" >
             <asp:Label ID="lastname" runat="server"  Text="Last Name: "></asp:Label> 
              <div class=" col-lg-7 input-group"> 
                 <asp:TextBox ID="TextBox3" runat="server"  class="form-control"></asp:TextBox>
              </div>
         </div>
        <br/>
          <div class="form-horizontal form-inline form-group" style="padding-left:30px" >
               <asp:Label ID="Email" runat="server" for="email" Text="Email:  "></asp:Label> </b>
                <div class=" col-lg-7 input-group" > 
                   <asp:TextBox ID="TextBox1" runat="server" class="form-control" ></asp:TextBox>
                </div>
          </div>
        <br/>
         <div class="form-horizontal form-inline form-group"  style="padding-left:30px" >
                <asp:Label ID="Phone" runat="server" for="phone" Text="Phone:  "></asp:Label> 
                <div class=" col-lg-7 input-group"> 
              <asp:TextBox ID="TextBox4" runat="server" class="form-control"></asp:TextBox>
                </div>
         </div>
        <br />
       </div>
  <hr>
            <div class="panel-body">

  <div> <h2>Dates & Times</h2>
             <div class="form-horizontal form-inline form-group" >
           <asp:Label ID="Time" runat="server"  Text="Time:"></asp:Label> 

          <div class="dropdown  col-lg-7 input-group">
          <asp:DropDownList ID="DropDownList1" runat="server"  class=" form-control btn btn-default dropdown-toggle" data-toggle="dropdown">
              
                  <asp:ListItem>Anytime</asp:ListItem>
                 <asp:ListItem>Morning</asp:ListItem>
                <asp:ListItem>Afternoon</asp:ListItem>
                <asp:ListItem>Evening</asp:ListItem>
           </asp:DropDownList>
     </div>
                 </div>
           <asp:ScriptManager ID="ScriptManager1" runat="server">
           </asp:ScriptManager>

           <br />

          <div class="form-horizontal form-inline form-group" >
               <asp:Label ID="PrefererredDate" runat="server"  Text="Preferred Date: "></asp:Label> 
                 
                <asp:TextBox ID="TextBox6" runat="server" class=" form-control "></asp:TextBox>
                  <ajaxToolkit:CalendarExtender ID="TextBox6_CalendarExtender" PopupButtonID="ImageButton1" runat="server" TargetControlID="TextBox6"/>
                  <asp:ImageButton ID="ImageButton1"  runat="server" Height="25px" ImageUrl="~/cal.jpg" Width="25px" />
           <br />
                    
             
             </div>
         <div class=" form-group form-inline" >
           <asp:Label ID="Label1" runat="server"  Text="Alternate Date: "></asp:Label> 
               
            <asp:TextBox ID="TextBox7" runat="server" class=" form-control " ></asp:TextBox>
           <ajaxToolkit:CalendarExtender ID="CalendarExtender1" PopupButtonID="ImageButton2" runat="server" TargetControlID="TextBox7" TodaysDateFormat="MM/DD/YY" />
           <asp:ImageButton ID="ImageButton2" runat="server" Height="25px" ImageUrl="~/cal.jpg" Width="25px" />
           <br />
           </div>
         <div class="form-inline form-group" >  
           <asp:Label ID="textArea" runat="server"  Text="Comments: "></asp:Label> <br/> 
              <div class=" col-lg-7 input-group"> 
                   <asp:TextBox ID="TextBox8" TextMode="multiline" class="form-control" Columns="50" Rows="5" runat="server"></asp:TextBox>
           <br/>
              </div>
           </div>
           <asp:Button ID="submit1" Text="Submit"  runat="server" OnClick="submit1_Click" CssClass="btn btn-success"></asp:Button>
           
       </div>

        
    


    </div>
   

            </div>
        
            </div>
         
       
    <asp:Literal ID="results" runat="server"></asp:Literal>
</asp:Content>