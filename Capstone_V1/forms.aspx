<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/NotLogged.Master" CodeBehind="forms.aspx.cs" Inherits="Capstone_V1.forms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><br />
    <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s"><span> Client Form</span></h2>
    <section id="services" class="padding50">
        <div class="container">
            
            <!-- ./ end row -->
            <div class="row">
                <div class="col-md-6">
                    <i class="fa fa-fire animated wow fadeInUp"></i>
                    <div class="sc-inner">
                        <h4><a href="docs/Client_Intake.pdf">Personal Information Form</a></h4>
                        <p> Download Personal Information Form</p>
                    </div>
                </div>
                <!-- ./ end service box -->
                <!-- ./ end service box -->
                <div class="col-md-6">
                    <i class="fa fa-user animated wow fadeInDown" data-wow-delay="0.4s"></i>
                    <div class="sc-inner">
                        <h4><a href="docs/Policies_Procedures.pdf">Personal Policies Form</a></h4>
                        <p> Personal Policies Form</p>
                    </div>
                </div>
                 <!-- ./ end service box -->
            </div>
         </div>

        <script type="text/javascript">
$(function() {
blinkeffect('#txtblnk');
})
function blinkeffect(selector) {
$(selector).fadeOut('slow', function() {
$(this).fadeIn('slow', function() {
blinkeffect(this);
});
});
}
</script>

        <div class="row">
            <center>  <div id="txtblnk"> <p><strong><font color="red"><h4>**Please bring the filled forms during your visit!**</h4></font></strong></p> </div>
           </center> </div>
            
        <div class="clearfix">
        </div>
    </section>
</asp:Content>