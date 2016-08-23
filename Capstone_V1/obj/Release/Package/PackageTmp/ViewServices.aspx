<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewServices.aspx.cs" Inherits="Capstone_V1.ViewServices" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
   
   </div> <br>    
     <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   <asp:Label ID="Label1" runat="server" Text="Select Massage Type " Font-Bold="True" Font-Size="X-Large"></asp:Label> 
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </b>
        <asp:DropDownList ID="DropDownList1"  class="btn btn-primary dropdown-toggle caret" data-toggle="dropdown" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="modality" DataValueField="modality" Height="34px" Width="169px">
        </asp:DropDownList>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:sqlexpressConnectionString %>" SelectCommand="SELECT DISTINCT [modality] FROM [Service]"></asp:SqlDataSource>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" CellPadding="5" CssClass="nav-tabs-justified" DataSourceID="SqlDataSource2" Font-Bold="True" Font-Overline="False" Font-Size="Large" GridLines="None" Height="344px" Width="988px" CellSpacing="7" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" HorizontalAlign="Center" TabIndex="2" >
            <Columns>
                <asp:BoundField DataField="modality" HeaderText="Modality" SortExpression="modality" ItemStyle-Width="100" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" ItemStyle-Width="200" ItemStyle-Height="200"/>
                <asp:BoundField DataField="duration" HeaderText="Duration" SortExpression="duration(in min)" ItemStyle-Width="50" />
                <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price(in $)" ItemStyle-Width="50"/>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:sqlexpressConnectionString %>" SelectCommand="SELECT [modality], [Description], [duration], [price] FROM [Service] WHERE ([modality] = @modality)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="modality" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
