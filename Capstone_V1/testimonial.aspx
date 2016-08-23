<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/NotLogged.Master" CodeBehind="testimonial.aspx.cs" Inherits="WebApplication4.testimonial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <br/>
     <br/>
     <br/>
    <div class="row">
                <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s"><span> Testimonials</span></h2>
            </div> 
           <div class="container">
         <div class="panel panel-default center-block">
             <div class="panel-body">
   <div style="width:75%" id="testi" class="center-block">
        
       <br />
        <asp:Repeater ID="Repeater1" runat="server"  DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
 
        <ItemTemplate>
           
    <blockquote >
 
         
<%#Eval("testimony")%> 
         

        </blockquote></p>
<div class="arrow-down"></div>
<p class="testimonial-author"><%#Eval("username")%> </p>
        </ItemTemplate>
 

        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlexpressConnectionString %>" SelectCommand="SELECT c.username, t.testimony FROM customer c JOIN Testimony t ON c.userID=t.userID WHERE t.visible='ok';"></asp:SqlDataSource>
 
    </div>
                 </div>
             </div>
               </div>
</asp:Content>

<%--    </form>
</body>
</html>--%>
