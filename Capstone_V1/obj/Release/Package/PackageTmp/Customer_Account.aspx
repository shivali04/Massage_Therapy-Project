<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/NotLogged.Master" CodeBehind="Customer_Account.aspx.cs" Inherits="Capstone_V1.Customer_Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="services" class="padding50">
        <div class="container">
            <asp:Label ID="welcome1" runat="server" ForeColor="Green" style="font-size:200%" Text=""></asp:Label>
            <div class="row">
                <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s"><span>Pick an Option</span></h2>
            </div>
            <!-- ./ end row -->
            <div class="row">
                <div class="col-md-4">
                    <i class="fa fa-fire animated wow fadeInUp"></i>
                    <div class="sc-inner">
                        <h4><a href="Appointment.aspx">Schedule Appointment</a></h4>
                        <p> Book an appointment for Massages of your choice</p>
                    </div>
                </div>
                <!-- ./ end service box -->
                <div class="col-md-4">
                    <i class="fa fa-bullseye animated wow fadeInDown" data-wow-delay="0.2s"></i>
                    <div class="sc-inner">
                        <h4><a href="Update.aspx">Update Profile</a></h4>
                        <p>Make changes in your profile.</p>
                    </div>
                </div>
                <!-- ./ end service box -->
                <div class="col-md-4">
                    <i class="fa fa-user animated wow fadeInDown" data-wow-delay="0.4s"></i>
                    <div class="sc-inner">
                        <h4><a href="usertestimony.aspx">Submit Testimonial</a></h4>
                        <p>Submit your experience with us!</p>
                    </div>
                </div>
                <!-- ./ end service box -->
            </div>
            <!-- ./ end row -->
            <div class="row">
                <div class="col-md-4">
                    <i class="fa fa-fire animated wow fadeInUp" data-wow-delay="0.6s"></i>
                    <div class="sc-inner">
                        <h4><a href="GiftCertsPaypal.aspx">Gift Certificates</a></h4>
                        <p>Buy a Massage gift certificate!</p>
                    </div>
                </div>
                <!-- ./ end service box -->
                <div class="col-md-4">
                    <i class="fa fa-bullseye animated wow fadeInDown" data-wow-delay="0.8s"></i>
                    <div class="sc-inner">
                        <h4><a href="forms.aspx">Forms</a></h4>
                        <p>Download and fill customer forms!</p>
                    </div>
                </div>
                <!-- ./ end service box -->
                <div class="col-md-4">
                    <i class="fa fa-user animated wow fadeInDown" data-wow-delay="0.10s"></i>
                    <div class="sc-inner">
                        <h4><a href="Contact.aspx">Contact Us</a></h4>
                        <p>Want us to contact you?</p>
                    </div>
                </div>
                <!-- ./ end service box -->
            </div>
            <!-- ./ end row -->
        </div>
        <div class="clearfix">
        </div>
    </section>
 
        
</asp:Content>