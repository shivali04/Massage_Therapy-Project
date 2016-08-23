<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/NotLogged.Master" CodeBehind="ScheduleApp.aspx.cs" Inherits="Capstone_V1.ScheduleApp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</br>
<div class="row">
     <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s"><span>Appointments</span></h2>
    </div>
<div class="container">
    <div class="panel panel-default center-block">
        <!-- Default panel contents -->
     <div class="panel-heading"> <h3 class="panel-title">Appointments Requested:</h3>
     </div>    
     <div class="panel-body">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="appointmentID" DataSourceID="SqlDataSource1" Width="1114px">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="appointmentID" HeaderText="Appointment ID" InsertVisible="False" ReadOnly="True" SortExpression="appointmentID" />
                <asp:BoundField DataField="userID" HeaderText="userID" SortExpression="userID" />
                 <asp:BoundField DataField="preferredTime" HeaderText="Preferred Time" SortExpression="preferredTime" />
              
                <asp:TemplateField HeaderText="Preferred Date" SortExpression="preferredDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("preferredDate") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("preferredDate", "{0:d}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="alternateDate" HeaderText="Alternate Date" SortExpression="alternateDate" DataFormatString="{0:MM-dd-yyyy}" />
                <asp:BoundField DataField="comment" HeaderText="Comment" SortExpression="comment" />
                <asp:TemplateField HeaderText="First Name" SortExpression="firstName">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("firstName") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("firstName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                <asp:TemplateField HeaderText="email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                
            </Columns>
        </asp:GridView>
     
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlexpressConnectionString %>"
          SelectCommand="SELECT AppointmentRequest.appointmentID, AppointmentRequest.userID, AppointmentRequest.preferredTime,
          AppointmentRequest.preferredDate, AppointmentRequest.alternateDate, AppointmentRequest.comment, customer.firstName,
          customer.lastName, customer.email, customer.Phone, customer.address FROM AppointmentRequest INNER JOIN customer
          ON AppointmentRequest.userID = customer.userID where AppointmentRequest.Done='False'" 
          UpdateCommand="UPDATE AppointmentRequest SET Done = @Done
          WHERE (appointmentID = @appointmentID)">   
     </asp:SqlDataSource>
        <asp:Label ID="gridresponse" runat="server" Text=""></asp:Label>
  
        <br />
        <br />
         <asp:Label ID="Label5" runat="server" Visible="true" Text="Time alloted:"></asp:Label>
    
        <asp:DropDownList ID="DropDownList1" Visible="true" runat="server">
            <asp:ListItem>10:00 AM</asp:ListItem>
            <asp:ListItem>12:00 PM</asp:ListItem>
            <asp:ListItem>02:00 PM</asp:ListItem>
            <asp:ListItem>04:00 PM</asp:ListItem>
            <asp:ListItem>06:00 PM</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" CssClass="btn btn-success" Visible="true" runat="server" Text="Send Confirmation Email" OnClick="Button1_Click" />
        <asp:Button ID="Button2"  CssClass="btn btn-success" Visible="true" runat="server" Text="Mark as done" OnClick="MarkAsRead" /></br> </br>
        <asp:Label ID="msg" runat="server" ForeColor="Green" Text=""></asp:Label>
        <br />
        <br />
        </div>
     </div>
 </div>
<hr>
<div class="container">
    <div class="panel panel-default center-block">
        <!-- Default panel contents -->
     <div
         class="panel-heading"><h3 class="panel-title">Past Appointments:</h3>
     </div>    
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="appointmentID" DataSourceID="SqlDataSource2" Width="1134px">
            <Columns>
                <asp:BoundField DataField="appointmentID" HeaderText="Appointment ID" InsertVisible="False" ReadOnly="True" SortExpression="appointmentID" />
                <asp:BoundField DataField="userID" HeaderText="User ID" SortExpression="userID" />
                <asp:BoundField DataField="preferredTime" HeaderText="Preferred Time" SortExpression="preferredTime" />
                <asp:BoundField DataField="preferredDate" HeaderText="Preferred Date" SortExpression="preferredDate" DataFormatString="{0:MM-dd-yyyy}" />
                <asp:BoundField DataField="alternateDate" HeaderText="Alternate Date" SortExpression="alternateDate" DataFormatString="{0:MM-dd-yyyy}" />
                <asp:BoundField DataField="comment" HeaderText="Comment" SortExpression="comment" />
                <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:sqlexpressConnectionString %>" 
            SelectCommand="SELECT AppointmentRequest.appointmentID, AppointmentRequest.userID,
             AppointmentRequest.preferredTime, AppointmentRequest.preferredDate, 
            AppointmentRequest.alternateDate, AppointmentRequest.comment, AppointmentRequest.Done, 
            customer.firstName, customer.lastName, customer.email, customer.Phone,
             customer.address FROM AppointmentRequest INNER JOIN customer 
            ON AppointmentRequest.userID = customer.userID where AppointmentRequest.Done='True'">
        </asp:SqlDataSource> 
    </div>
</div>
  </asp:Content>
