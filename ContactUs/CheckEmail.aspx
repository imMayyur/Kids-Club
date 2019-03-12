<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckEmail.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    .confirmbtn{
        font-family: 'Times New Roman', Times, serif;
        font-size: 18px;
        color: white;
        background-color: rgba(0,0,0,.60);
        border: none;
        border-radius: 3px;
        height: 20px;
        width: 160px;
        padding-top: 10px;
        padding-left:5px;
        padding-right: 5px;
        padding-bottom:10px;
        margin-top: 29px;
        margin-left: 15px;
}
    a{
        text-decoration: none;
    }
    a:hover{
        background-color: rgba(0,0,0,.75);
        text-decoration: none;
    }

    </style>
</head>
<body style="background-color: #f1f1f1">
    <form id="form1" runat="server">
    <div style=" height: 400px; width: 650px;  margin: auto; margin-top: 80px;">
        <div style=" height:  90px; width: 600px;">
            <img src="../Images/ImgContactUs/logo11.png" height="75" width="400" />
        </div>
        <div style="background-color: white; height: 250px; width: 610px; border-radius: 10px; padding-top: 1px;"> 
            <p style="color:rgba(0,0,0,.80);margin-left: 15px;font-size: 25px; font-weight: bold; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif">Almost finished...</p>
            <p style="color:rgba(0,0,0,.70) ;margin-left: 15px;letter-spacing:-1.2px;font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">We need to confirm your email address.</p>
            <p style="color:rgba(0,0,0,.70); margin-left: 15px;letter-spacing:-1.2px;font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">To complete the subscription process, please click the link in the email we just sent you.</p>
            <a href="ContactHome.aspx"><p class="confirmbtn">Return to our website</p></a>
        </div>
    
    </div>
    </form>
</body>
</html>
