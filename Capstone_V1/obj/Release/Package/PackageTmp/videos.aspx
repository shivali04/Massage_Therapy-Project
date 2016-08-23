<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/NotLogged.Master" CodeBehind="videos.aspx.cs" Inherits="Capstone_V1.videos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br/>
<div class="row">
    <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s"><span>Massage Videos Portfolio</span></h2>
    
 <div class="col-sm-6 col-md-4" style="padding-left:140px;">
      <a href = "#" >
        <iframe src="https://www.youtube.com/embed/kqBMbW6tHI4" frameborder="0" allowfullscreen="" style="height: 300px; width: 450px"></iframe>
          <b>     <asp:Label ID="Label2" runat="server" Text="Swedish Massage" ForeColor="#ff3399"></asp:Label> </b>   
            </a>
      
   </div>
   
   <div class = "col-sm-6 col-md-4" style="padding-left:240px;">
      <a href = "#" >
        <iframe src="https://www.youtube.com/embed/lmpUcyXdJQA" frameborder="0" allowfullscreen style="height: 300px; width: 450px"/></iframe>
             <b>     <asp:Label ID="Label1" runat="server" Text="Deep Tissue Massage" ForeColor="#ff3399"></asp:Label> </b>   
                </a>

      
  
</div>
   
   </div>
    
   
  </br>  <br/> <br/> <br/> <br>
  <div class = "row"> 
     <div class = "col-sm-6 col-md-4" style="padding-left:140px;">
      <a href = "#" >
     <iframe src="https://www.youtube.com/embed/nHLm9knl0vE" frameborder="0" allowfullscreen style="height: 300px; width: 450px"></iframe>
           <b>     <asp:Label ID="Label3" runat="server" Text="Cranio Sacrel Therapy" ForeColor="#ff3399"></asp:Label> </b>  
           </a>

    
   </div>
   
    <div class = "col-sm-6 col-md-4"  style="padding-left:240px;">
      <a href = "#" >
    <iframe width="450" height="300" src="https://www.youtube.com/embed/HqHpqE4bDx8" frameborder="0" allowfullscreen></iframe>
          <b> <asp:Label ID="Label4" runat="server" Text="Thai back Massage" ForeColor="#ff3399"></asp:Label> </b>
      </a>
 
         </div>

      </div>
<br/>
<div class = "row"> 
   <div class = "col-sm-6 col-md-4"  style="padding-left:140px;">
      <a href = "#" >
     <iframe width="450" height="300" src="https://www.youtube.com/embed/6fUKjLp9dXQ" frameborder="0" allowfullscreen></iframe> 
           <b>  <asp:Label ID="Label5" runat="server" Text="Hot Stone Massage" ForeColor="#ff3399"></asp:Label> </b>
      </a>
   
         </div>
     <div class = "col-sm-6 col-md-4"  style="padding-left:240px;">
      <a href = "#" >
     <iframe width="450" height="300" src="https://www.youtube.com/embed/XvGqGRecMt0" frameborder="0" allowfullscreen></iframe>
    <b><asp:Label ID="Label6" runat="server" Text="Lymphateic Drainage" ForeColor="#ff3399"></asp:Label></b>
            </a>
          
   </div>

</div>
    <br/>
    <div class = "row"> 
   <div class = "col-sm-6 col-md-4"  style="padding-left:140px;">

      <a href = "#" >


          <iframe width="450" height="300" src="https://www.youtube.com/embed/N8er9mnv0B8" frameborder="0" allowfullscreen></iframe>
 <b>  <asp:Label ID="Label7" runat="server" Text="Refloxology" ForeColor="#ff3399"></asp:Label> </b>
         
      </a>
           
 
   </div>
        </div>
    </asp:Content>