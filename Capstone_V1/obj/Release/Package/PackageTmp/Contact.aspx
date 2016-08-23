<%@ Page Title="" Language="C#" MasterPageFile="~/NotLogged.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" enableEventValidation="false" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="padding100">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="well well-sm">
                        <form class="form-horizontal" method="post">
                            <fieldset>
                                <legend class="text-center header">Contact us</legend>
                                <div class="form-group">
                                    <div class="col-md-10 col-md-offset-1">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*"
                                             ControlToValidate="YourName" ValidationGroup="save" />
                                        <asp:TextBox ID="YourName" runat="server" placeholder="Name" class="form-control" />
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <div class="col-md-10 col-md-offset-1">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*"
                                            ControlToValidate="YourEmail" ValidationGroup="save" />
                                        <asp:TextBox ID="YourEmail" runat="server" placeholder="Email Address" class="form-control" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-10 col-md-offset-1">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*"
                                            ControlToValidate="YourPhone" ValidationGroup="save" />
                                        <asp:TextBox id="YourPhone" runat="server" placeholder="Phone" class="form-control" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-10 col-md-offset-1">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="YourMessage" ValidationGroup="save" />
                                        <asp:TextBox class="form-control" ID="YourMessage" runat="server" TextMode="MultiLine" Rows="7" placeholder="Enter your message for us here. We will get back to you within 2 business days."></asp:TextBox>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12 text-center">
                                        <br /><asp:Button ID="btnSubmit" runat="server" Text="Send!"  class="btn btn-primary btn-lg" onclick="Button1_Click" ValidationGroup="save" />
                                    </div>
                                </div>
                            </fieldset>
                            <p>
                                <asp:Label ID="DisplayMessage" runat="server" Visible="false" />
                            </p>  
                        </form>
                    </div>
                </div>
                <div class="col-md-6">
                    <div>
                        <div class="panel panel-default">
                            <div class="text-center header">Our Office</div>
                            <div class="panel-body text-center">
                                <h4>Address</h4>
                                <div>
                                211 Landmark Dr. Ste. D-1<br />
                                Normal, IL 61761<br />
                                #(309) 531-9612<br />
                                service@company.com<br />
                                </div>
                                <hr />
                                <div id="map1" class="map">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </div>


<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script src="js/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
    jQuery(function ($) {
        function init_map1() {
            var myLocation = new google.maps.LatLng(40.513024, -88.955392);
            var mapOptions = {
                center: myLocation,
                zoom: 16
            };
            var marker = new google.maps.Marker({
                position: myLocation,
                title: "Property Location"
            });
            var map = new google.maps.Map(document.getElementById("map1"),
                mapOptions);
            marker.setMap(map);
        }
        init_map1();
    });
</script>

<style>
    .map {
        min-width: 300px;
        min-height: 300px;
        width: 100%;
        height: 100%;
    }

    .header {
        background-color: #F5F5F5;
        color: #36A0FF;
        height: 70px;
        font-size: 27px;
        padding: 10px;
    }
</style>
</asp:Content>
