<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ApplicationHome.aspx.cs" Inherits="Application_ApplicationHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet_Home.css" rel="stylesheet" type="text/css" />
    <title></title>
 </head>
    <body>
    <form id="form1" runat="server">
        <div id="main">
            <div id="header">
                <div class="hd1">
                    <%--//<asp:ImageButton ImageUrl="../Images/ImgApplication/Contact_New.png" height="60" width="230" />--%>
                    <asp:ImageButton ID="imgbtncntus" runat="server" ImageUrl="~/Images/ImgApplication/Contact_New.png" height="60" width="230" OnClick="imgbtncntus_Click"/>
                </div>
                <div class="hd2">
                    <img src="../Images/ImgApplication/logo.png" height="100" width="500" />
                </div>
                <div class="hd3">
                     <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="~/Images/ImgApplication/rating_new.png" height="60" width="230" OnClick="imgbtncntus_Click"/>
                </div>
            </div>
           
            <div id="middle">
                 <div id="mid">
                     <img src="../Images/ImgApplication/Basics_New.png" height="50" width="230" class="imgleft" />
                     <img src="../Images/ImgApplication/Language_New.png" height="10" width="230" class="imgcenter"/>
                     <img src="../Images/ImgApplication/Math_new.png" height="10" width="230" class="imgright"/>
                 </div>
                <div id="md1">
                    <div class="imgdiv">
                    <asp:ImageButton ID="tmgbtn1" runat="server" ImageUrl="~/Images/ImgApplication/alphabates.png" class="imghomeleft" OnClick="tmgbtn1_Click"/>
                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/ImgApplication/Shapes_NEW.png" class="imghomecenter" OnClick="ImageButton3_Click"/>
                            <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/Images/ImgApplication/Addition.png" class="imghomeright" OnClick="ImageButton6_Click"/>
                            
                    </div>
                </div>
                <div id="md2">
                    <div class="imgdiv">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/ImgApplication/Quiz-wood.png" class="imghomeleft" OnClick="ImageButton1_Click"/>
                        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Images/ImgApplication/TicTacToe.png" class="imghomecenter" OnClick="ImageButton4_Click"/>
                            <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/Images/ImgApplication/matchingpair.png" class="imghomeright" OnClick="ImageButton7_Click"/>
                    </div>
                </div><div id="md3">
                    <div class="imgdiv">
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/ImgApplication/Numbers_wood_New.png" class="imghomeleft" OnClick="ImageButton2_Click"/>
                        <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Images/ImgApplication/Puzzle_WOOD.png" class="imghomecenter" OnClick="ImageButton5_Click"/>
                            <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/Images/ImgApplication/color-fill.png" class="imghomeright" OnClick="ImageButton8_Click"/>
                    </div>
                </div>

                </div>
            </div>
        </div>
    </form>
</body>

</html>
