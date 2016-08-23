
<%@ Page Title="" Language="C#" MasterPageFile="~/NotLogged.Master" AutoEventWireup="true" CodeBehind="GiftCertsPaypal.aspx.cs" Inherits="Capstone_V1.GiftCerts" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
                <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s"><span> Gift Certificates</span></h2>
            </div>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
    <div>
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="img\massSwedish.jpg" alt="...">
                    <div class="caption">
                        <h3>Swedish Massage</h3>
                        <p id ="mod1Description">A theraputic massage that enhances relaxation, circulation, and 
                            the detoxification process in tense muscles.</p>
                        
                        <div>
                        
                        <asp:Button ID="btnShow" runat="server" Text="60 min - $40" CssClass="btn btn-default btn btn-success" value="Swedish Massage"/>
                            <!-- ModalPopupExtender -->
                                <cc1:ModalPopupExtender ID="mp1" runat="server" PopupControlID="Panel1" TargetControlID="btnShow"
                                    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
                                </cc1:ModalPopupExtender>
                                <asp:Panel ID="Panel1" runat="server" CssClass="modalPopup" align="center" style = "display:none">
                                     <h4>Order Form</h4>
                                   <div class="form-group">
                                     <label for="price">Price:</label>
                                       <asp:TextBox ID="price" runat="server" class="form-control" placeholder="Mandatory" Text="40" ReadOnly="true"></asp:TextBox>
                                 
                                </div>
                                   <div class="form-group">
                                     <label for="FName">Recipiant First Name:</label>
                                     <input type="text" class="form-control" id="fName" placeholder="Mandatory"/>
                                </div>
                                 <div class="form-group">
                                     <label for="LName">Recipiant Last Name:</label>
                                     <input type="text" class="form-control" id="lName" placeholder="Mandatory" />
                                </div>
                                <div class="form-group">
                                     <label for="email">Your Email:</label>
                                     <asp:TextBox ID="email" runat="server" class="form-control" placeholder="Mandatory"></asp:TextBox>
                                </div>
                                     <div class="form-group">
                                     <label for="remail">Recipiant Email:</label>
                                         <asp:TextBox ID="reemail" runat="server" class="form-control"></asp:TextBox>
                                    
                                </div>
                                     <asp:Button ID="btnClose" runat="server" Text="Cancel" />
                                     <asp:Button ID="buyOnline" runat="server" onclick="OnlinePayment" Text="Buy"/>
                                                           
                                </asp:Panel>
                                <!-- ModalPopupExtender -->

                        </div>
 
                    </div>
                </div>
            </div>
           
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="img\massCranial.jpg" alt="...">
                    <div class="caption">
                        <h3>Cranial Sacral Therapy</h3>
                        <p id="mod3Description">A gentle method using a lighter tough to release restrictions in the cranial-sacral system, and improve functioning of the central nervous system.</p>
                         <div>
                       
                        <asp:Button ID="Cranial" runat="server" Text="60 min - $70" CssClass="btn btn-default btn btn-success"/>
                            <!-- ModalPopupExtender -->
                                <cc1:ModalPopupExtender ID="ModalPopupExtender3" runat="server" PopupControlID="Panel3" TargetControlID="Cranial"
                                    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
                                </cc1:ModalPopupExtender>
                                <asp:Panel ID="Panel3" runat="server" CssClass="modalPopup" align="center" style = "display:none">
                                     <h4>Order Form</h4>
                                   <div class="form-group">
                                     <label for="price">Price:</label>
                                       <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Mandatory" Text="70" ReadOnly="true"></asp:TextBox>
                                 
                                </div>
                                   <div class="form-group">
                                     <label for="FName">Recipiant First Name:</label>
                                     <input type="text" class="form-control" id="fName1"  placeholder="Mandatory" />
                                </div>
                                 <div class="form-group">
                                     <label for="LName">Recipiant Last Name:</label>
                                     <input type="text" class="form-control" id="lName1"  placeholder="Mandatory" />
                                </div>
                                    <div class="form-group">
                                     <label for="email">Your Email:</label>
                                     <asp:TextBox ID="email1" runat="server" class="form-control" placeholder="Mandatory" ></asp:TextBox>
                                </div>
                                     <div class="form-group">
                                     <label for="remail">Recipiant Email:</label>
                                         <asp:TextBox ID="remail1" runat="server" class="form-control"></asp:TextBox>
                                    
                                </div>
                                
                                     
                                     <asp:Button ID="Button4" runat="server" Text="Cancel" />
                                     <asp:Button ID="Button5" runat="server" onclick="OnlinePayment2" Text="Buy"/>
                                                           
                                </asp:Panel>
                                <!-- ModalPopupExtender -->

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="img\massSwedish.jpg" alt="...">
                    <div class="caption">
                        <h3>Reflexology</h3>
                        <p>A zone therapy in which reflex points on the hands and feet correspond with an area of the body or certain organ. When stimulating these points, it can help restore and revitalize the whole body.</p>
                         <div>
                       
                        <asp:Button ID="Reflex" runat="server" Text="60 min - $75" CssClass="btn btn-default btn btn-success"/>
                            <!-- ModalPopupExtender -->
                                <cc1:ModalPopupExtender ID="ModalPopupExtender7" runat="server" PopupControlID="Panel7" TargetControlID="Reflex"
                                    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
                                </cc1:ModalPopupExtender>
                                <asp:Panel ID="Panel7" runat="server" CssClass="modalPopup" align="center" style = "display:none">
                                     <h4>Order Form</h4>
                                   <div class="form-group">
                                     <label for="price">Price:</label>
                                       <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Mandatory" Text="75" ReadOnly="true"></asp:TextBox>
                                 
                                </div>
                                   <div class="form-group">
                                     <label for="FName">Recipiant First Name:</label>
                                     <input type="text" class="form-control" id="fName1"  placeholder="Mandatory" />
                                </div>
                                 <div class="form-group">
                                     <label for="LName">Recipiant Last Name:</label>
                                     <input type="text" class="form-control" id="lName1"  placeholder="Mandatory" />
                                </div>
                                <div class="form-group">
                                     <label for="email">Your Email:</label>
                                     <input type="email" class="form-control" id="email1"  placeholder="Mandatory" />
                                </div>
                                     <div class="form-group">
                                     <label for="remail">Recipiant Email:</label>
                                     <input type="email" class="form-control" id="remail1" placeholder="Optional"/>
                                </div>
                                     <asp:Button ID="Button12" runat="server" Text="Cancel" />
                                     <asp:Button ID="Button13" runat="server" onclick="OnlinePayment6" Text="Buy"/>
                                                           
                                </asp:Panel>
                                <!-- ModalPopupExtender -->

                        </div>
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
                        <p>Manual Lymph Drainage is an advatnced form of massage that aims to stimulate the lymphatic system to 
                            remove congestion, toxins, and stagnation from the body, and to help it return to a healthy condition.</p>
                        <div>
                       
                        <asp:Button ID="MLD" runat="server" Text="60 min - $50" CssClass="btn btn-default btn btn-success"/>
                            <!-- ModalPopupExtender -->
                                <cc1:ModalPopupExtender ID="ModalPopupExtender4" runat="server" PopupControlID="Panel4" TargetControlID="MLD"
                                    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
                                </cc1:ModalPopupExtender>
                                <asp:Panel ID="Panel4" runat="server" CssClass="modalPopup" align="center" style = "display:none">
                                     <h4>Order Form</h4>
                                   <div class="form-group">
                                     <label for="price">Price:</label>
                                       <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Mandatory" Text="50" ReadOnly="true"></asp:TextBox>
                                 
                                </div>
                                   <div class="form-group">
                                     <label for="FName">Recipiant First Name:</label>
                                     <input type="text" class="form-control" id="fName1"  placeholder="Mandatory" />
                                </div>
                                 <div class="form-group">
                                     <label for="LName">Recipiant Last Name:</label>
                                     <input type="text" class="form-control" id="lName1"  placeholder="Mandatory" />
                                </div>
                                <div class="form-group">
                                     <label for="email">Your Email:</label>
                                     <input type="email" class="form-control" id="email1"  placeholder="Mandatory" />
                                </div>
                                     <div class="form-group">
                                     <label for="remail">Recipiant Email:</label>
                                     <input type="email" class="form-control" id="remail1" placeholder="Optional"/>
                                </div>
                                     <asp:Button ID="Button6" runat="server" Text="Cancel" />
                                     <asp:Button ID="Button7" runat="server" onclick="OnlinePayment3" Text="Buy"/>
                                                           
                                </asp:Panel>
                                <!-- ModalPopupExtender -->

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="img\massHotStone.jpg" alt="...">
                    <div class="caption">
                        <h3>Hot Stone Therapy</h3>
                        <p>A deeply relaxing session in which basalt stones are used to help remove stress, release tight muscles, and promote well-being.</p>
                        <div>
                       
                        <asp:Button ID="HST" runat="server" Text="60 min - $75" CssClass="btn btn-default btn btn-success"/>
                            <!-- ModalPopupExtender -->
                                <cc1:ModalPopupExtender ID="ModalPopupExtender5" runat="server" PopupControlID="Panel5" TargetControlID="HST"
                                    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
                                </cc1:ModalPopupExtender>
                                <asp:Panel ID="Panel5" runat="server" CssClass="modalPopup" align="center" style = "display:none">
                                     <h4>Order Form</h4>
                                   <div class="form-group">
                                     <label for="price">Price:</label>
                                       <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Mandatory" Text="75" ReadOnly="true"></asp:TextBox>
                                 
                                </div>
                                   <div class="form-group">
                                     <label for="FName">Recipiant First Name:</label>
                                     <input type="text" class="form-control" id="fName1"  placeholder="Mandatory" />
                                </div>
                                 <div class="form-group">
                                     <label for="LName">Recipiant Last Name:</label>
                                     <input type="text" class="form-control" id="lName1"  placeholder="Mandatory" />
                                </div>
                                <div class="form-group">
                                     <label for="email">Your Email:</label>
                                     <input type="email" class="form-control" id="email1"  placeholder="Mandatory" />
                                </div>
                                     <div class="form-group">
                                     <label for="remail">Recipiant Email:</label>
                                     <input type="email" class="form-control" id="remail1" placeholder="Optional"/>
                                </div>
                                     <asp:Button ID="Button8" runat="server" Text="Cancel" />
                                     <asp:Button ID="Button9" runat="server" onclick="OnlinePayment4" Text="Buy"/>
                                                           
                                </asp:Panel>
                                <!-- ModalPopupExtender -->

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="img\massCranial.jpg" alt="...">
                    <div class="caption">
                        <h3>Thai Massage</h3>
                        <p>Thai massage is both relaxing and energizing. It is an oil-free massage which is done on a padded mat on the floor. Described as yoga, without the work. Please bring or wear comfortable clothing.</p>
                          <div>
                       
                        <asp:Button ID="Thai" runat="server" Text="60 min - $70" CssClass="btn btn-default btn btn-success"/>
                            <!-- ModalPopupExtender -->
                                <cc1:ModalPopupExtender ID="ModalPopupExtender6" runat="server" PopupControlID="Panel6" TargetControlID="Thai"
                                    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
                                </cc1:ModalPopupExtender>
                                <asp:Panel ID="Panel6" runat="server" CssClass="modalPopup" align="center" style = "display:none">
                                     <h4>Order Form</h4>
                                   <div class="form-group">
                                     <label for="price">Price:</label>
                                       <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Mandatory" Text="70" ReadOnly="true"></asp:TextBox>
                                 
                                </div>
                                   <div class="form-group">
                                     <label for="FName">Recipiant First Name:</label>
                                     <input type="text" class="form-control" id="fName1"  placeholder="Mandatory" />
                                </div>
                                 <div class="form-group">
                                     <label for="LName">Recipiant Last Name:</label>
                                     <input type="text" class="form-control" id="lName1"  placeholder="Mandatory" />
                                </div>
                                <div class="form-group">
                                     <label for="email">Your Email:</label>
                                     <input type="email" class="form-control" id="email1"  placeholder="Mandatory" />
                                </div>
                                     <div class="form-group">
                                     <label for="remail">Recipiant Email:</label>
                                     <input type="email" class="form-control" id="remail1" placeholder="Optional"/>
                                </div>
                                     <asp:Button ID="Button10" runat="server" Text="Cancel" />
                                     <asp:Button ID="Button11" runat="server" onclick="OnlinePayment5" Text="Buy"/>
                                                           
                                </asp:Panel>
                                <!-- ModalPopupExtender -->

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            
             <div class="col-sm-6 col-md-4">
                <div class="thumbnail">
                    <img src="img\massDeepTissue.jpg" alt="...">
                    <div class="caption">
                        <h3>Deep Tissue/Myofascial/Trigger Point</h3>
                        <p id="mod2Description">Addresses specific structural issues and layers of tissue, and often the entire 
                            session is focused on one area. Chronic patterns of tension are released through slower and deeper techniques. 
                            Clients with specific areas of discomfort, and/or limited range of motion and muscle adhesions/trigger points 
                            that refer pain respond well to this type of therapy.</p>
                      
                           <div>
                       
                        <asp:Button ID="Deep" runat="server" Text="60 min - $80" CssClass="btn btn-default btn btn-success"/>
                            <!-- ModalPopupExtender -->
                                <cc1:ModalPopupExtender ID="ModalPopupExtender2" runat="server" PopupControlID="Panel2" TargetControlID="Deep"
                                    CancelControlID="btnClose" BackgroundCssClass="modalBackground">
                                </cc1:ModalPopupExtender>
                                <asp:Panel ID="Panel2" runat="server" CssClass="modalPopup" align="center" style = "display:none">
                                     <h4>Order Form</h4>
                                   <div class="form-group">
                                     <label for="price">Price:</label>
                                       <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Mandatory" Text="80" ReadOnly="true"></asp:TextBox>
                                 
                                </div>
                                   <div class="form-group">
                                     <label for="FName">Recipiant First Name:</label>
                                     <input type="text" class="form-control" id="fName1"  placeholder="Mandatory" />
                                </div>
                                 <div class="form-group">
                                     <label for="LName">Recipiant Last Name:</label>
                                     <input type="text" class="form-control" id="lName1"  placeholder="Mandatory" />
                                </div>
                                <div class="form-group">
                                     <label for="email">Your Email:</label>
                                     <input type="email" class="form-control" id="email1"  placeholder="Mandatory" />
                                </div>
                                     <div class="form-group">
                                     <label for="remail">Recipiant Email:</label>
                                     <input type="email" class="form-control" id="remail1" placeholder="Optional"/>
                                </div>
                                     <asp:Button ID="Button2" runat="server" Text="Cancel" />
                                     <asp:Button ID="Button3" runat="server" onclick="OnlinePayment1" Text="Buy"/>
                                                           
                                </asp:Panel>
                                <!-- ModalPopupExtender -->

                        </div>
                       
                    </div>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
