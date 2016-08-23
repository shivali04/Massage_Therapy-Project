<%@ Page Title="" Language="C#" MasterPageFile="~/NotLogged.Master" AutoEventWireup="true" CodeBehind="Gift.aspx.cs" Inherits="Capstone_V1.Gift" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceholder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="img\massSwedish.jpg" alt="...">
                    <div class="caption">
                        <h3>Swedish Massage</h3>
                        <p id ="mod1Description">A theraputic massage that enhances relaxation, circulation, and the detoxification process in tense muscles.</p>
                        <p>
                            <a href="#" class="btn btn-primary" role="button" id="btnMod1Dur1">60 min - $70</a> 
                          
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="img\massDeepTissue.jpg" alt="...">
                    <div class="caption">
                        <h3>Deep Tissue/Myofascial/Trigger Point</h3>
                        <p id="mod2Description">Addresses specific structural issues and layers of tissue, and often the entire session is focused on one area. Chronic patterns of tension are released through slower and deeper techniques. Clients with specific areas of discomfort, and/or limited range of motion and muscle adhesions/trigger points that refer pain respond well to this type of therapy.</p>
                        <p>
                            <a href="#" class="btn btn-primary" role="button" id="btnMod2Dur1">30 min - $40</a>
                           
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="img\massCranial.jpg" alt="...">
                    <div class="caption">
                        <h3>Cranial Sacral Therapy</h3>
                        <p id="mod3Description">A gentle method using a lighter tough to release restrictions in the cranial-sacral system, and improve functioning of the central nervous system.</p>
                        <p>
                            <a href="#" class="btn btn-primary" role="button" id="btnMod3Dur1" >60 min - $70</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="img\massSwedish.jpg" alt="...">
                    <div class="caption">
                        <h3>Manual Lymphatic Drain (MLD)</h3>
                        <p>Manual Lymph Drainage is an advatnced form of massage that aims to stimulate the lymphatic system to remove congestion, toxins, and stagnation from the body, and to help it return to a healthy condition.</p>
                        <p>
                            <a href="#" class="btn btn-primary" role="button" id="btnMod4Dur1">60 min - $70</a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="img\massHotStone.jpg" alt="...">
                    <div class="caption">
                        <h3>Hot Stone Therapy</h3>
                        <p>A deeply relaxing session in which basalt stones are used to help remove stress, release tight muscles, and promote well-being.</p>
                        <p>
                            <a href="#" class="btn btn-primary" role="button">60 min - $75</a>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="img\massCranial.jpg" alt="...">
                    <div class="caption">
                        <h3>Thai Massage</h3>
                        <p>Thai massage is both relaxing and energizing. It is an oil-free massage which is done on a padded mat on the floor. Described as yoga, without the work. Please bring or wear comfortable clothing.</p>
                        <p>
                            <a href="#" class="btn btn-primary" role="button">60 min - $80</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="img\massSwedish.jpg" alt="...">
                    <div class="caption">
                        <h3>Reflexology</h3>
                        <p>A zone therapy in which reflex points on the hands and feet correspond with an area of the body or certain organ. When stimulating these points, it can help restore and revitalize the whole body.</p>
                        <p>
                            <a href="#" class="btn btn-primary" role="button">60 min - $75</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
