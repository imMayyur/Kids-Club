<%@ Page Title="" Language="C#" MasterPageFile="~/ContactUs/MasterPageContactUs.master" AutoEventWireup="true" CodeFile="ContactHome.aspx.cs" Inherits="ContactUs_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageBody" Runat="Server">
    <script src="../js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script src="../js/jssor.slider-22.2.16.mini.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {

            var jssor_1_SlideoTransitions = [
              [{b:5500,d:3000,o:-1,r:240,e:{r:2}}],
              [{b:-1,d:1,o:-1,c:{x:51.0,t:-51.0}},{b:0,d:1000,o:1,c:{x:-51.0,t:51.0},e:{o:7,c:{x:7,t:7}}}],
              [{b:-1,d:1,o:-1,sX:9,sY:9},{b:1000,d:1000,o:1,sX:-9,sY:-9,e:{sX:2,sY:2}}],
              [{b:-1,d:1,o:-1,r:-180,sX:9,sY:9},{b:2000,d:1000,o:1,r:180,sX:-9,sY:-9,e:{r:2,sX:2,sY:2}}],
              [{b:-1,d:1,o:-1},{b:3000,d:2000,y:180,o:1,e:{y:16}}],
              [{b:-1,d:1,o:-1,r:-150},{b:7500,d:1600,o:1,r:150,e:{r:3}}],
              [{b:10000,d:2000,x:-379,e:{x:7}}],
              [{b:10000,d:2000,x:-379,e:{x:7}}],
              [{b:-1,d:1,o:-1,r:288,sX:9,sY:9},{b:9100,d:900,x:-1400,y:-660,o:1,r:-288,sX:-9,sY:-9,e:{r:6}},{b:10000,d:1600,x:-200,o:-1,e:{x:16}}]
            ];

            var jssor_1_options = {
              $AutoPlay: true,
              $SlideDuration: 900,
              $SlideEasing: $Jease$.$OutQuint,
              $CaptionSliderOptions: {
                $Class: $JssorCaptionSlideo$,
                $Transitions: jssor_1_SlideoTransitions
              },
              $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
              },
              $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
              }
            };

            var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

            /*responsive code begin*/
            /*remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider() {
                var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1920);
                    jssor_1_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 30);
                }
            }
            ScaleSlider();
            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            /*responsive code end*/
        });
    </script>
    <style>
        /* jssor slider bullet navigator skin 05 css */
        /*
        .jssorb05 div           (normal)
        .jssorb05 div:hover     (normal mouseover)
        .jssorb05 .av           (active)
        .jssorb05 .av:hover     (active mouseover)
        .jssorb05 .dn           (mousedown)
        */
        .jssorb05 {
            position: absolute;
        }
        .jssorb05 div, .jssorb05 div:hover, .jssorb05 .av {
            position: absolute;
            /* size of bullet elment */
            width: 16px;
            height: 16px;
            background: url('../img/b05.png') no-repeat;
            overflow: hidden;
            cursor: pointer;
        }
        .jssorb05 div { background-position: -7px -7px; }
        .jssorb05 div:hover, .jssorb05 .av:hover { background-position: -37px -7px; }
        .jssorb05 .av { background-position: -67px -7px; }
        .jssorb05 .dn, .jssorb05 .dn:hover { background-position: -97px -7px; }

        /* jssor slider arrow navigator skin 22 css */
        /*
        .jssora22l                  (normal)
        .jssora22r                  (normal)
        .jssora22l:hover            (normal mouseover)
        .jssora22r:hover            (normal mouseover)
        .jssora22l.jssora22ldn      (mousedown)
        .jssora22r.jssora22rdn      (mousedown)
        */
        .jssora22l, .jssora22r {
            display: block;
            position: absolute;
            /* size of arrow element */
            width: 40px;
            height: 58px;
            cursor: pointer;
            background: url('../img/a22.png') center center no-repeat;
            overflow: hidden;
        }
        .jssora22l { background-position: -10px -31px; }
        .jssora22r { background-position: -70px -31px; }
        .jssora22l:hover { background-position: -130px -31px; }
        .jssora22r:hover { background-position: -190px -31px; }
        .jssora22l.jssora22ldn { background-position: -250px -31px; }
        /*.jssora22r.jssora22rdn { background-position: -310px -31px; }*/
    </style>
     <div id="container">
    <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:1300px;height:570px;overflow:hidden;visibility:hidden;">
        <!-- Loading Screen -->
        <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div>
        <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:1300px;height:570px;overflow:hidden;">
            <a data-u="any" href="http://www.jssor.com" style="display:none">Full Width Slider</a>
            <div>
                <img data-u="image" src="../Banners/MAIN.png" />
            </div>
            <div>
                <img data-u="image" src="../Banners/Alphabates.png" />
            </div>
            <div>
                <img data-u="image" src="../Banners/Puzzle.png" />
            </div>
            <div>
                <img data-u="image" src="../Banners/Numbers.png" />
            </div>
             <div>
                <img data-u="image" src="../Banners/Addition.png" />
            </div>
        </div>
        <!-- Bullet Navigator -->
        <div data-u="navigator" class="jssorb05" style="bottom:16px;right:16px;" data-autocenter="1">
            <!-- bullet navigator item prototype -->
            <div data-u="prototype" style="width:16px;height:16px;"></div>
        </div>
        <!-- Arrow Navigator -->
        <span data-u="arrowleft" class="jssora22l" style="top:0px;left:12px;width:40px;height:58px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora22r" style="top:0px;right:12px;width:40px;height:58px;" data-autocenter="2"></span>
    </div>
         </div>
     <div class="middleHome"> 
            Join our fan club! Receive special offers, discounted apps, and news about our games.
            <br />
            <div class="inner">
            <asp:TextBox ID="txtemail" runat="server" CssClass="txtemail" placeholder="Email Address"></asp:TextBox>
            <asp:Button ID="btnjoin" runat="server" Text="Join The Club" CssClass="btnjoin" OnClick="btnjoin_Click"/><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="not correct email-id" ControlToValidate="txtemail" Font-Bold="True" ForeColor="Red" SetFocusOnError="True" Font-Size="Small" BackColor="Yellow" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   
            </div>
        </div>
        
    <div class="middle2home">
        <div class="lefthome">
            <div class="midimg1">
                <img src="../Images/ImgContactUs/star.png" height="50" width="50" style="margin-left:40px;"/>
                <p class="phead">About Us</p>
            </div>
            <p class="pheadbody">
                    We build fun and educational games for children and adults. Creatingrich and engaging experiences while providing an opportunity to learn is what we strive for in all of our games.
                    <br /><br /><br />
                    School districts and parents across the country use our games to educate their children. From toddlers to young adults, our games provide an edge in the classroom.
                </p>
        </div>
        <div class="righthome">
            <div class="midimg2">
                <img src="../Images/ImgContactUs/msg.png" height="60" width="60" style="margin-left:40px;"/>
                <p class="phead2" >Contact Us</p>
                <p class="pheadbody2">
                    <asp:TextBox ID="txtname" runat="server" CssClass="txt" style="margin-bottom:1px" placeholder="Name"> </asp:TextBox>
                    <br />
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="not correct email-id" ControlToValidate="txtemailid" Font-Bold="True" ForeColor="Red" SetFocusOnError="True" Font-Size="Small" BackColor="Yellow" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtemailid" runat="server" CssClass="txt" placeholder="Email Address"  ></asp:TextBox>
                    <br />
                    <asp:TextBox ID="txtmsg" runat="server" CssClass="txtadd" TextMode="MultiLine" placeholder="We love to hear from our customer, please let us know any idea or issues you may have."></asp:TextBox>
                    <br />
                    <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="btn" OnClick="btnsubmit_Click"/>
                </p>
            </div>
        </div>
    </div>
</asp:Content>

