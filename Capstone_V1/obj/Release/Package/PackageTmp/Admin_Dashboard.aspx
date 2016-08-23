<%@ Page Language="C#" MasterPageFile="~/NotLogged.Master" AutoEventWireup="true" CodeBehind="Admin_Dashboard.aspx.cs" Inherits="Capstone_V1.Admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <br/>
        <section id="services" >

        <div class="container " >
            <div class="row center-block">
                <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s"><span>Admin DashBoard</span></h2>
            </div>
            <!-- ./ end row -->
                         <div class="center-block" style="padding-left:200px">
            <div class="row">
                <div class="col-md-4">
                    <i class="fa fa-sign-language animated wow fadeInDown"></i>
                    <div class="sc-inner">
                        <h4><a href="Update.aspx">Update Profile</a></h4>
                       <p>Make changes in your profile.</p>
                    </div>
                </div>

                 <!-- ./ end service box -->
                <div class="col-md-4" style="padding-left:140px">
                    <i class="fa fa-bullseye animated wow fadeInDown" data-wow-delay="0.2s"></i>
                    <div class="sc-inner">
                        <h4><a href="ScheduleApp.aspx">Manage Appointments</a></h4>
                        <p>
                            Manage your appointments</p>
                    </div>
                </div>
            </div>
            </div>
            <div class="center-block"  style="padding-left:200px">
                <div class="row ">
                 <!-- ./ end service box -->
                <div class="col-md-4">
                    <i class="fa fa-bullseye animated wow fadeInDown" data-wow-delay="0.2s"></i>
                    <div class="sc-inner">
                      
                          <h4><a href="CheckTestimonial.aspx">Update/View Testimonial</a></h4>
                        <p>
                            Check testimonial that you want to post.</p>
                    </div>
                </div>


                 <div class="col-md-4" style="padding-left:140px">
                    <i class="fa fa-bullseye animated wow fadeInDown" data-wow-delay="0.2s"></i>
                    <div class="sc-inner">
                        <h4><a href="MailingList.aspx">   Mails to Subscribers</a></h4>
                    
                        <p>
                            Send emails to subscribed customers</p>
                    </div>
                </div>


                </div>
            </div>
            </div>
            </section>

    </asp:Content>
