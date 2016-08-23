<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/NotLogged.Master" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Carousel -->
    <div id="carousel-example-generic" class="carousel slide carousel-fade" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target='#carousel-example-generic' data-slide-to='0' class='active'>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/img/caro1.jpg"
                    Width="100px" Height="50px" /></li>
            <li data-target='#carousel-example-generic' data-slide-to='1'>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/img/caro2.jpg" Width="100px" Height="50px" /></li>
           
            <li data-target='#carousel-example-generic' data-slide-to='2'>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/img/caro3.jpg" Width="100px" Height="50px" /></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">

            <div class="item active one">
                <!-- <img src="#" alt="" /> -->
                <div class="main-text hidden-xs">
                    <div class="col-md-12 text-center">
                        <h1>
                            Welcome to <b class="yellow">Integrative Massage Therapy</b>. <br />
                            <span class="span">Make us part of your wellness plan!</span></h1>
                       
                    </div>
                </div>
            </div>
            <div class="item two">
                <div class="main-text hidden-xs">
                    <div class="col-md-12 text-center">
                        <h1>
                            Aches? Pains? Stiffness? <b class="yellow">Stress?</b> <br />
                            <span class="span">Let us help!</span></h1>
                    </div>
                </div>
            </div>
            <div class="item three">
                <div class="main-text hidden-xs">
                    <div class="col-md-12 text-center">
                        <h1>
                            More than a <b class="yellow">luxury</b>! Massage therapy has <br />
                            <span class="span">many <b class="yellow">health benefits</b>.</span></h1>
                    </div>
                </div>
            </div>
        </div>
        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span></a><a class="right carousel-control"
                href="#carousel-example-generic" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right">
                </span></a>
    </div>
    <!-- Carousel -->
    <!-- Service Section -->
    <section id="services" class="padding50">
        <div class="container">
            <div class="row">
                <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s"><span>Services</span></h2>
            </div>
            <!-- ./ end row -->
            <div class="row">
                <div class="col-md-4">
                    <i class="fa fa-bell animated wow fadeInDown"></i>
                    <div class="sc-inner">
                        <h4>
                            Swedish Massage</h4>
                         <p>A theraputic massage that enhances relaxation, 
                             circulation, and the detoxification process in tense muscles.</p>
                        <p>
                    </div>
                </div>
                <!-- ./ end service box -->
                <div class="col-md-4">
                    <i class="fa fa-bullseye animated wow fadeInDown" data-wow-delay="0.2s"></i>
                    <div class="sc-inner">
                        <h4>
                            Deep Tissue Massage</h4>
                        <p>Addresses specific structural issues and layers of tissue, and 
                            often the entire session is focused on one area. Chronic patterns
                             of tension are released through slower and deeper techniques. Clients with specific areas of discomfort, and/or limited range of motion and muscle adhesions/trigger points that refer pain respond well to this type of therapy.</p>
                        <p>
                    </div>
                </div>
                <!-- ./ end service box -->
                <div class="col-md-4">
                    <i class="fa fa-user animated wow fadeInDown" data-wow-delay="0.4s"></i>
                    <div class="sc-inner">
                        <h4>
                            Cranial Sacral Therapy</h4>
                        <p>A gentle method using a lighter tough to release 
                            restrictions in the cranial-sacral system, and improve functioning of
                             the central nervous system.</p>
                        <p>
                    </div>
                </div>
                <!-- ./ end service box -->
            </div>
            <!-- ./ end row -->
            <div class="row">
                <div class="col-md-4">
                    <i class="fa fa-circle-o-notch animated wow fadeInDown" data-wow-delay="0.6s"></i>
                    <div class="sc-inner">
                        <h4>
                            Manual Lymphatic Drain</h4>
                        <p>Manual Lymph Drainage is an advatnced form of massage that aims to 
                            stimulate the lymphatic system to remove congestion, toxins, and 
                            stagnation from the body, and to help it return to a healthy condition.</p>
                        <p>
                    </div>
                </div>
                <!-- ./ end service box -->
                <div class="col-md-4">
                    <i class="fa fa-fire animated wow fadeInUp" data-wow-delay="0.8s"></i>
                    <div class="sc-inner">
                        <h4>
                            Hot Stone Therapy</h4>
                        <p>A deeply relaxing session in which basalt stones are used to help remove stress, release tight muscles, and promote well-being.</p>
                        <p>
                    </div>
                </div>
                <!-- ./ end service box -->
                <div class="col-md-4">
                    <i class="fa fa-leaf animated wow fadeInUp" data-wow-delay="0.10s"></i>
                    <div class="sc-inner">
                        <h4>
                            Thai Massage</h4>
                        <p>Thai massage is both relaxing and energizing. It is an oil-free massage which
                             is done on a padded mat on the floor. Described as yoga, without the work.
                             Please bring or wear comfortable clothing.</p>
                        <p>
                    </div>
                </div>
                <!-- ./ end service box -->
            </div>
            <!-- ./ end row -->
        </div>
        <div class="clearfix">
        </div>
    </section>
    <!-- ./ End Service Section -->


    
    </asp:Content>
