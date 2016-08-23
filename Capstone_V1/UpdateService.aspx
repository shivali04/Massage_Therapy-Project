<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateService.aspx.cs" Inherits="Capstone_V1.UpdateService" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:sqlexpressConnectionString %>" DeleteCommand="DELETE FROM [Service] WHERE [serviceID] = @original_serviceID AND (([modality] = @original_modality) OR ([modality] IS NULL AND @original_modality IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([duration] = @original_duration) OR ([duration] IS NULL AND @original_duration IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL))" InsertCommand="INSERT INTO [Service] ([modality], [Description], [duration], [price]) VALUES (@modality, @Description, @duration, @price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Service]" UpdateCommand="UPDATE [Service] SET [modality] = @modality, [Description] = @Description, [duration] = @duration, [price] = @price WHERE [serviceID] = @original_serviceID AND (([modality] = @original_modality) OR ([modality] IS NULL AND @original_modality IS NULL)) AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND (([duration] = @original_duration) OR ([duration] IS NULL AND @original_duration IS NULL)) AND (([price] = @original_price) OR ([price] IS NULL AND @original_price IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_serviceID" Type="Int32" />
                <asp:Parameter Name="original_modality" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_duration" Type="Int32" />
                <asp:Parameter Name="original_price" Type="Double" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="modality" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="duration" Type="Int32" />
                <asp:Parameter Name="price" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="modality" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="duration" Type="Int32" />
                <asp:Parameter Name="price" Type="Double" />
                <asp:Parameter Name="original_serviceID" Type="Int32" />
                <asp:Parameter Name="original_modality" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_duration" Type="Int32" />
                <asp:Parameter Name="original_price" Type="Double" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="serviceID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="276px" Width="895px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="serviceID" HeaderText="serviceID" InsertVisible="False" ReadOnly="True" SortExpression="serviceID" />
                <asp:BoundField DataField="modality" HeaderText="modality" SortExpression="modality" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="duration" HeaderText="duration" SortExpression="duration" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </form>
</body>
</html>
