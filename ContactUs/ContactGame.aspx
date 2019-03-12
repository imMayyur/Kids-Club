<%@ Page Title="" Language="C#" MasterPageFile="~/ContactUs/MasterPageContactUs.master" AutoEventWireup="true" CodeFile="ContactGame.aspx.cs" Inherits="ContactUs_Default" %>

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
                    window.setTimeout(ScaleSlider, 1);
                }
            }

            var jssor_2_slider = new $JssorSlider$("jssor_2", jssor_1_options);

            /*responsive code begin*/
            /*remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider2() {
                var refSize = jssor_2_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1920);
                    jssor_2_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 1);
                }
            }

            var jssor_3_slider = new $JssorSlider$("jssor_3", jssor_1_options);

            /*responsive code begin*/
            /*remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider3() {
                var refSize = jssor_3_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1920);
                    jssor_3_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 1);
                }
            }
            var jssor_4_slider = new $JssorSlider$("jssor_4", jssor_1_options);

            /*responsive code begin*/
            /*remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider4() {
                var refSize = jssor_4_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1920);
                    jssor_4_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 1);
                }
            }
            var jssor_5_slider = new $JssorSlider$("jssor_5", jssor_1_options);

            /*responsive code begin*/
            /*remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider5() {
                var refSize = jssor_5_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1920);
                    jssor_5_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 1);
                }
            }
            var jssor_6_slider = new $JssorSlider$("jssor_6", jssor_1_options);

            /*responsive code begin*/
            /*remove responsive code if you don't want the slider scales while window resizing*/
            function ScaleSlider6() {
                var refSize = jssor_6_slider.$Elmt.parentNode.clientWidth;
                if (refSize) {
                    refSize = Math.min(refSize, 1920);
                    jssor_6_slider.$ScaleWidth(refSize);
                }
                else {
                    window.setTimeout(ScaleSlider, 1);
                }
            }
            ScaleSlider();
            ScaleSlider2();
            ScaleSlider3();
            ScaleSlider4();
            ScaleSlider5();
            ScaleSlider6();

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
    <div class="cmain">
        Our Games are...
    </div>
    <div class="gamediv">
        <div class="inside1">
            <div class="gameleft">
                <div class="gameimg">
                    <div class="containergame">
                        <div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:1300px;height:613px;overflow:hidden;visibility:hidden;">
                            <!-- Loading Screen -->
                            <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
                                <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
                            </div>
                            <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:1300px;height:613px;overflow:hidden;">
                                <a data-u="any" href="http://www.jssor.com" style="display:none">Full Width Slider</a>
                                <div>
                                    <img data-u="image" src="../Banners/Addition.png" />
                                </div>
                                <div>
                                    <img data-u="image" src="../Banners/number_Game.png" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="gamedisc">
                    <div style="position: relative;height: 140px; width: 525px">
                        <p style="color:rgba(0,0,0,.80);font-size: 20px; font-weight: bold; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Number Addition</p>
                        <p style="color:rgba(0,0,0,.80);margin-top: -15px;font-size: 18px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">One or more than one colorful and attrective object are display. Using this object children calculate the number of object add them and select apporopriate answer and just drag and drop it.</p>
                    </div>
                    <div style="position:absolute; left: 190px">
                        <a href="../Application/NumberAddition.aspx"><img src="../Images/ImgContactUs/playNow.png" height="60" width="150"/></a>
                    </div>
                </div>
            </div>
            <div class="gameright">
                <div class="gameimg">
                    <div class="containergame">
                        <div id="jssor_2" style="position:relative;margin:0 auto;top:0px;left:0px;width:1300px;height:613px;overflow:hidden;visibility:hidden;">
                            <!-- Loading Screen -->
                            <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
                                <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
                            </div>
                            <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:1300px;height:613px;overflow:hidden;">
                                <a data-u="any" href="http://www.jssor.com" style="display:none">Full Width Slider</a>
                                <div>
                                    <img data-u="image" src="../Banners/Puzzle.png" />
                                </div>
                                <div>
                                    <img data-u="image" src="../Banners/Puzzle_Game.png" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="gamedisc">
                    <div style="position: relative;height: 140px; width: 525px">
                        <p style="color:rgba(0,0,0,.80);font-size: 20px; font-weight: bold; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Jig Saw Puzzle</p>
                        <p style="color:rgba(0,0,0,.80);margin-top: -15px;font-size: 18px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Jigsaw puzzles for all-new word play fun! You'll need to draw upon your thinking capacity to complete each diagram successfully depends upon behind image.</p>
                    </div>
                    <div style="position:absolute; left: 190px">
                        <a href="../Application/Puzzle.aspx"><img src="../Images/ImgContactUs/playNow.png" height="60" width="150"/></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="inside1">
            <div class="gameleft">
               <div class="gameimg">
                    <div class="containergame">
                        <div id="jssor_3" style="position:relative;margin:0 auto;top:0px;left:0px;width:1300px;height:613px;overflow:hidden;visibility:hidden;">
                            <!-- Loading Screen -->
                            <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
                                <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
                            </div>
                            <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:1300px;height:613px;overflow:hidden;">
                                <a data-u="any" href="http://www.jssor.com" style="display:none">Full Width Slider</a>
                                <div>
                                    <img data-u="image" src="../Banners/color-fill.png" />
                                </div>
                                <div>
                                    <img data-u="image" src="../Banners/cocolor_fill_Game.png" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="gamedisc">
                    <div style="position: relative;height: 140px; width: 525px">
                        <p style="color:rgba(0,0,0,.80);font-size: 20px; font-weight: bold; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Color Filling</p>
                        <p style="color:rgba(0,0,0,.80);margin-top: -15px;font-size: 18px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Children can fill the color using diffent color boxes.Children has freedom to select the color and fill it into the object. Also print that page and save it on theit own machine.</p>
                    </div>
                    <div style="position:absolute; left: 190px">
                        <a href="../Application/ColorFilling.aspx"><img src="../Images/ImgContactUs/playNow.png" height="60" width="150"/></a>
                    </div>
                </div>
            </div>
            <div class="gameright">
               <div class="gameimg">
                    <div class="containergame">
                        <div id="jssor_4" style="position:relative;margin:0 auto;top:0px;left:0px;width:1300px;height:613px;overflow:hidden;visibility:hidden;">
                            <!-- Loading Screen -->
                            <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
                                <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
                            </div>
                            <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:1300px;height:613px;overflow:hidden;">
                                <a data-u="any" href="http://www.jssor.com" style="display:none">Full Width Slider</a>
                                <div>
                                    <img data-u="image" src="../Banners/Matching-Pair.png" />
                                </div>
                                <div>
                                    <img data-u="image" src="../Banners/Matching-pair_Game.png" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="gamedisc">
                     <div style="position: relative;height: 140px; width: 525px">
                        <p style="color:rgba(0,0,0,.80);font-size: 20px; font-weight: bold; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Matching Pairs</p>
                        <p style="color:rgba(0,0,0,.80);margin-top: -15px;font-size: 18px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">It is a Match Match Game. Using this game children can match the albhabets to increases the memory and also understanding the alphabets.</p>
                    </div>
                    <div style="position:absolute; left: 190px">
                        <a href="../Application/MatchingPairs.aspx"><img src="../Images/ImgContactUs/playNow.png" height="60" width="150"/></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="inside1">
            <div class="gameleft">
               <div class="gameimg">
                   <div class="containergame">
                       <div id="jssor_5" style="position:relative;margin:0 auto;top:0px;left:0px;width:1300px;height:613px;overflow:hidden;visibility:hidden;">
                            <!-- Loading Screen -->
                            <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
                                <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
                            </div>
                            <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:1300px;height:613px;overflow:hidden;">
                                <a data-u="any" href="http://www.jssor.com" style="display:none">Full Width Slider</a>
                                <div>
                                    <img data-u="image" src="../Banners/tic-tac-toe.png" />
                                </div>
                               <div>
                                    <img data-u="image" src="../Banners/tic-tac-toe_Game.png" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="gamedisc">
                     <div class="gamedisc">
                    <div style="position: relative;height: 140px; width: 525px">
                        <p style="color:rgba(0,0,0,.80);font-size: 20px; font-weight: bold; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Tic-Tac-Toe Game</p>
                        <p style="color:rgba(0,0,0,.80);margin-top: -15px;font-size: 18px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Tic-Tac_Toe is known as noughts and crosses or Xs and Os.It is a paper-and-pencil game for two players, X and O, who take turns marking the spaces in a 3×3 grid. </p>
                    </div>
                    <div style="position:absolute; left: 190px">
                        <a href="../Application/TicTacTeo.aspx"><img src="../Images/ImgContactUs/playNow.png" height="60" width="150"/></a>
                    </div>
                </div>
                </div>
            </div>
            <div class="gameright">
               <div class="gameimg">
                   <div class="containergame">
                       <div id="jssor_6" style="position:relative;margin:0 auto;top:0px;left:0px;width:1300px;height:613px;overflow:hidden;visibility:hidden;">
                            <!-- Loading Screen -->
                            <div data-u="loading" style="position:absolute;top:0px;left:0px;background-color:rgba(0,0,0,0.7);">
                                <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
                            </div>
                            <div data-u="slides" style="cursor:default;position:relative;top:0px;left:0px;width:1300px;height:613px;overflow:hidden;">
                                <a data-u="any" href="http://www.jssor.com" style="display:none">Full Width Slider</a>
                                <div>
                                    <img data-u="image" src="../Banners/Quiz.png" />
                                </div>
                                <div>
                                    <img data-u="image" src="../Banners/Quiz_Game.png" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="gamedisc">
                    <div class="gamedisc">
                    <div style="position: relative;height: 140px; width: 525px">
                        <p style="color:rgba(0,0,0,.80);font-size: 20px; font-weight: bold; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">Quiz</p>
                        <p style="color:rgba(0,0,0,.80);margin-top: -15px;font-size: 18px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif">This is a spelling quiz, like a fill in the blanks. Using this game parent know how her/his child in spelling. In this game childrean just drag the letter and drop it in correct place.</p>
                    </div>
                    <div style="position:absolute; left: 190px">
                        <a href="../Application/LetterFilling.aspx"><img src="../Images/ImgContactUs/playNow.png" height="60" width="150"/></a>
                    </div>
                </div>
                </div>
            </div>
    </div>
    </div>
</asp:Content>

