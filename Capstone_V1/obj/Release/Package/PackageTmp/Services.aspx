<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="Capstone_V1.Services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2> Add New Service </h2>
     <div>
            <asp:Label ID="Label1" runat="server" Text="Service Name: "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
       </div>
        <div>
             <asp:Label ID="Label2" runat="server" Text="Description: "></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="71px" Width="200px"></asp:TextBox>
             <br />
             <br />
    </div>

        <div>
             <asp:Label ID="Label3" runat="server" Text="Duration(min): "></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
             <br />
             <br />
    </div>

        <div>
              <asp:Label ID="Label4" runat="server" Text="Price($): "></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
              <br />
    </div>

        <asp:Button ID="Button1" runat="server" Text="ADD service" OnClick="Button1_Click" />
        <asp:Literal ID="results" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
