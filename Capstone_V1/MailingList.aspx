<%@ Page Language="C#" MasterPageFile="~/NotLogged.Master" AutoEventWireup="true" CodeBehind="MailingList.aspx.cs" Inherits="Capstone_V1.MailingList" enableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholder1" runat="server">
    <div class="container">

        <div class="row">      
     <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s"><span>Newsletter</span></h2>
         </div> 
        <div class="panel panel-default padding50 center-block mailing">
            <div class="panel-heading">
                <h3 class="panel-title">Newsletter</h3>
            </div>
            <div class="panel-body">
                <form class="navbar-form navbar-left">
                    <div class="form-group">
                        <input type="text" class="form-control" id="txtSubject" runat="server" placeholder="Newsletter subject..." /><br />
                        <asp:TextBox runat="server" textmode="MultiLine" id="txtEmailBody" name="txtEmailBody" class="form-control" rows="8" cols="50" placeholder="Newsletter body..."></asp:TextBox><br />
                        <input type="button" class="btn btn-default navbar-btn" id="Button1" runat="server" value="Send!" onserverclick="MassEmailButtonClick" />
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="panel panel-default center-block">
            <!-- Default panel contents -->
            <div class="panel-heading">Newsletter Mailing List</div>    
                <asp:GridView ID="GridView1" class="table" runat="server" AutoGenerateColumns="False" DataSourceID="dsMailingList" DataKeyNames="userID" AllowPaging="True" PageSize="8">
                    <Columns>
                        <asp:TemplateField HeaderText="">
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="userID" HeaderText="Customer ID" SortExpression="userID" />
                        <asp:BoundField DataField="Customer" HeaderText="Customer" SortExpression="Customer" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />          
                        <asp:BoundField DataField="Subscribed" HeaderText="Subscribed" SortExpression="Subscribed" />  
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="dsMailingList" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:sqlexpressConnectionString %>" 
                    SelectCommand="SELECT userID, firstName + ' ' + lastName AS Customer, email AS Email, onMailingList AS Subscribed FROM customer"
                    UpdateCommand="UPDATE customer SET onMailingList = @onMailingList WHERE userID = @userID">
                    <UpdateParameters>
                        <asp:Parameter Name="onMailingList" />
                        <asp:Parameter Name="userID" />
                    </UpdateParameters>
                </asp:SqlDataSource>  
                <asp:Button ID="btnSubscribe" class="btn btn-default navbar-btn" Visible="true" runat="server" Text="Subscribe" OnClick="Subscribe"/>
                <asp:Button ID="btnUnsubscribe" class="btn btn-default navbar-btn " Visible="true" runat="server" Text="Unsubscribe" OnClick="Unsubscribe"/>     
         
        </div>
    </div>
</asp:Content>
