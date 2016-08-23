<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/NotLogged.Master" CodeBehind="CheckTestimonial.aspx.cs" Inherits="Capstone_V1.CheckTestimonial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    
  
    <br>
        <div class="row">
                <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s"><span>Check Testimonial</span></h2>
            </div> 
    
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlexpressConnectionString %>" DeleteCommand="DELETE FROM [Testimony] WHERE [TestimonyID] = @TestimonyID" InsertCommand="INSERT INTO [Testimony] ([userID], [date], [testimony], [visible]) VALUES (@userID, @date, @testimony, @visible)" SelectCommand="SELECT * FROM [Testimony]" UpdateCommand="UPDATE [Testimony] SET [userID] = @userID, [date] = @date, [testimony] = @testimony, [visible] = @visible WHERE [TestimonyID] = @TestimonyID">
            <DeleteParameters>
                <asp:Parameter Name="TestimonyID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="userID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="date" />
                <asp:Parameter Name="testimony" Type="String" />
                <asp:Parameter Name="visible" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="userID" Type="Int32" />
                <asp:Parameter DbType="Date" Name="date" />
                <asp:Parameter Name="testimony" Type="String" />
                <asp:Parameter Name="visible" Type="String" />
                <asp:Parameter Name="TestimonyID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    <div class="container">
        <div class="panel panel-default center-block">
            <div class="panel-heading"> <h3 class="panel-title"> Post testimonial </h3>
                </div>

          <div class="panel-body">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="TestimonyID" DataSourceID="SqlDataSource1" Height="314px" Width="1106px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
            <Columns>
           <asp:BoundField DataField="TestimonyID"   HeaderText="TestimonyID" InsertVisible="False" ReadOnly="True" SortExpression="TestimonyID" /> 
                <asp:BoundField DataField="userID" HeaderText="userID" SortExpression="userID" />
                <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                <asp:BoundField DataField="testimony" HeaderText="Testimonial" SortExpression="testimony" />
                <asp:TemplateField HeaderText="visible" SortExpression="visible">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("visible") %>'></asp:TextBox>


                          <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="True" OnClientClick="return confirm('update?');" CommandName="Update" Text="Update"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
           
                    </EditItemTemplate>
                    <ItemTemplate>
                         <asp:Label ID="Label2" runat="server" Text='<%# Bind("visible") %>'></asp:Label>
                       &nbsp; &nbsp; &nbsp; &nbsp;
                     <asp:LinkButton ID="LinkButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
         
                     </ItemTemplate>
                </asp:TemplateField>

                     
                <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return confirm('Delete?');" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
              </div>
        </div>
        </div>
    </asp:Content>

