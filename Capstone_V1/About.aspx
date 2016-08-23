<%@ Page Title="" Language="C#" MasterPageFile="~/NotLogged.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Content -->
    <div class="padding100" id="blog">
        <div class="container">
            <!-- Page Heading -->

            <div class="row">
                <div class="col-lg-12">
                    <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s">
                        <span>About Sheri</h2>                    
                </div>
            </div>
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-responsive animated wow fadeInLeft" data-wow-delay="0.2s" src="img/sheri_photo.jpg"
                            alt="">                       
                    </a>
                </div>
                <div class="col-md-5 animated wow fadeInRight" data-wow-delay="0.4s">
                    <h3><strong>Sheri Wright</strong></h3>
                    <h4></h4>
                      <p>Sheri has been licensed and practicing therapeutic massage for the past 20 years. Her career has included private practice, hospital-based massage, community education, as well as program director and curriculum development/instruction for the past 10 years at a private college.
                         <br />With a solid knowledge base and years of experience, you can expect high-quality care in a professional and quiet atmosphere.
                         <br />Sheri's expertise will help you determine the best course for receiving the most benefits from your session.
                         <br />Experience the difference... don't settle for average. Enhance your well-being through therapeutic massage.
                         <br />Call today to schedule your appointment!
                      </p>
                </div>
                <div class="col-md-5 animated wow fadeInRight" data-wow-delay="0.4s">
                    <h3><strong>Her Mission</strong></h3>
                      <p>To assist and educate clients toward their journey to better health and well-being through therapeutic massage, by providing expetional, goal-oriented, mindful, and personalized attention to each client.
                      <br />To ease pain and relieve stress through knowledgeable technique application and compassion in service, in a professional, relaxing environment. To continually educate ourselves, our clients, and our community about health and wellness.
                      <br />To provide specific, tailored massage sessions to meet the individual goals of each unique client, and to respect and honor confidentiality and client autonomy.
                      </p>
                </div>
            </div>
        </div>
                       

            <!-- /.row -->
            <!-- Pagination -->
            <!--<div class="row text-center">
            <div class="col-lg-12">
                <ul class="pagination">
                    <li><a href="#">&laquo;</a> </li>
                    <li class="active"><a href="#">1</a> </li>
                    <li><a href="#">2</a> </li>
                    <li><a href="#">3</a> </li>
                    <li><a href="#">4</a> </li>
                    <li><a href="#">5</a> </li>
                    <li><a href="#">&raquo;</a> </li>
                </ul>
            </div>
        </div>      -->
        </div>
    </div>
    <!-- /.container -->
</asp:Content>
