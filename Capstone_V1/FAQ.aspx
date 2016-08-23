<%@ Page Title="" Language="C#" MasterPageFile="~/NotLogged.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="WebApplication1.FAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="padding50">
    <div class="container">
      <div class="alert alert-warning alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        This section contains frequently asked questions about massage therapy. If you cannot find an answer to your question, 
        make sure to <a href="contact.aspx">contact us</a> . 
    </div>
    <div class="panel-group" id="accordion">
        <div class="faqHeader">Frequently Asked Questions</div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">What should I expect during my first massage therapy visit? </a>
                </h4>
            </div>
            <div id="collapseOne" class="panel-collapse collapse in">
                <div class="panel-body">
                    Your massage therapist will require you to fill out a health history form. 
                    Afterwards, the therapist will begin by asking you general questions to establish what areas you would like worked on, 
                    if there are any conditions needing to be addressed and to determine if massage is appropriate for you. 
                    Your massage therapist may perform certain assessments and testing to evaluate your condition, and to see if you have any presenting complaints. 
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Where will my massage session take place? </a>
                </h4>
            </div>
            <div id="collapseTwo" class="panel-collapse collapse">
                <div class="panel-body">
                    Your massage or bodywork session will take place in a warm, comfortable, quiet room. Soft music may be played to help you relax.
                    You will lie on a table especially designed for your comfort.
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">What do I wear during the massage?</a>
                </h4>
            </div>
            <div id="collapseThree" class="panel-collapse collapse">
                <div class="panel-body">
                    Depending on the primary technique/modality your therapist uses, you may or may not need to undress. 
                    For a full body massage, most people undress completely. However, you may choose to wear underwear. 
                    Your massage therapist will give you privacy to undress, and you will be covered and professionally 
                    draped with a sheet and blanket at all times except the area being worked on.
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse4">What do I do during a massage therapy treatment? </a>
                </h4>
            </div>
            <div id="collapse4" class="panel-collapse collapse">
                <div class="panel-body">
                    Make yourself comfortable. If your therapist wants you to adjust your position, she or he will either move you or will ask you to move what is needed. Otherwise, change your position anytime to make yourself more comfortable. Many people close their eyes and relax completely during a session; others prefer to talk initially. It's up to you. It is your massage, and whatever feels natural to you is the best way to relax. Do not hesitate to ask questions at any time. 
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse5">How will a massage feel?</a>
                </h4>
            </div>
            <div id="collapse5" class="panel-collapse collapse">
                <div class="panel-body">
                    Massage techniques on healthy tissue usually feels very good. The normal response is to slow down, breathe deeply and relax. Working on an area of injury or chronic pain may at first cause some discomfort, which usually lessens in the first few minutes. Most therapists are trained with multiple techniques which will work to minimize discomfort and will work carefully with what feels right for you. Always let the therapist know if you feel any discomfort so they can adjust the technique and/or pressure. The saying 'No pain, no gain' is not true for bodywork! With your feedback during the session, the therapist will be working within a zone of 'therapeutic tenderness'--also described as a 'hurt so good', which is a level of tenderness that you can breath through comfortably, and that dissipates rather quickly, essentially easing the initial discomfort.  When people have been living in pain for any length of time, it can be difficult to differentiate these sensations. The therapist will encourage you to listen closely to your body and will meet you where you are in the process. The most effective and deepest massage works with the body's natural responses, not against them.
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse6">Are there different kinds of massage and bodywork?</a>
                </h4>
            </div>
            <div id="collapse6" class="panel-collapse collapse">
                <div class="panel-body">
                    There are numerous types of massage and bodywork; various techniques utilize different strokes/speed/depth of pressure. Your therapist will have been trained specifically in modalities that best suit your needs for the therapeutic sessions.
                    <br />
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapse7">Will the massage oils/lotions/creams used make me break-out?</a>
                </h4>
            </div>
            <div id="collapse7" class="panel-collapse collapse">
                <div class="panel-body">
                    Most massage therapists use professional-grade products that are hypoallergenic.  However, if you have a sensitivity to certain types, please bring it to the massage therapist's attention as most practitioners have an assortment of oils/lotions/creams on hand. 
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseEight">Is a massage always appropriate?</a>
                </h4>
            </div>
            <div id="collapseEight" class="panel-collapse collapse">
                <div class="panel-body">
                    No, there are several medical conditions that would make massage inappropriate. That's why it is necessary that you fill out the health history forms and before you begin your session. The massage therapist will ask general health questions to rule out if you have any contraindications to massage. It is very important that you inform the practitioner of any health problems or medications you are taking. If you are under a doctor's care, it might be advised that you receive a written recommendation for massage prior to any session. 
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseNine">How long will a massage treatment last? </a>
                </h4>
            </div>
            <div id="collapseNine" class="panel-collapse collapse">
                <div class="panel-body">
                    The average full-body massage treatment lasts approximately one hour. A half-hour appointment only allows time for a partial massage session, for example, such as back/neck/shoulders. Many people prefer a 60- to 90-minute session for optimal relaxation. Always allow relaxation time prior to and after the session. 
                </div>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">
                    <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTen">How will I feel after the massage therapy treatment?</a>
                </h4>
            </div>
            <div id="collapseTen" class="panel-collapse collapse">
                <div class="panel-body">
                    Most people feel very relaxed. Some experience freedom from long-term aches and pains developed from tension or repetitive activity. After an initial period of feeling slowed down, people often experience increased energy, heightened awareness, and greater productivity which can last for days. Since toxins are released from your soft tissues during a massage, it is recommended you drink plenty of water following your massage. You will likely feel subtle shifts occurring over the following days as well. Some examples are:
                    <ul>
                        <li>Pain relief---less intensity and frequency of the pain in various areas of your body</li>
                        <li>Easier mobility when walking and moving in your daily life</li>
                        <li>Deeper sleep patterns</li>
                        <li>Constipation or other digestive concerns may subside</li>
                        <li>Stress, irritability, and anxiety levels may lessen</li>
                        <li>Energy levels may feel increased</li>
                        <li>And more...!</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
        </div>
    <style>
        .faqHeader {
        font-size: 27px;
        margin: 20px;
    }
    </style>
</asp:Content>
