<%@ Page Title="" Language="C#" MasterPageFile="~/ContactUs/MasterPageContactUs.master" AutoEventWireup="true" CodeFile="ContactContact.aspx.cs" Inherits="ContactUs_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageBody" Runat="Server">
    <div class="cmain">
        
        We love hearing from our customers, please don't hesitate to email us
    </div>
    <div class="cmidmain">
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

        <div class="cmid2">
            <img src="../Images/ImgContactUs/facebook.png" height="60" width="60" style="margin-left:40px;position:relative;left:120px"/>
                <p class="classf" >Facebook</p>
                    <div class="likebox-frame">					
						<iframe src="http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2FMargiMayur&amp;width=344&amp;height=395&amp;show_faces=false&amp;colorscheme=light&amp;stream=true&amp;border_color&amp;header=false&amp;appId=494027947291700" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:344px; height:395px;" allowTransparency="true"></iframe>
					</div>
        </div>
        
        </div>
    <div class="cmidmain2">
            <div class="middleHome"> 
            Join our fan club! Receive special offers, discounted apps, and news about our games.
            <br />
            <div class="inner">
            <asp:TextBox ID="txtemail" runat="server" CssClass="txtemail" placeholder="Email Address"></asp:TextBox>
            <asp:Button ID="btnjoin" runat="server" Text="Join The Club" CssClass="btnjoin" OnClick="btnjoin_Click"/><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="not correct email-id" ControlToValidate="txtemail" Font-Bold="True" ForeColor="Red" SetFocusOnError="True" Font-Size="Small" BackColor="Yellow" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                   </div>
        </div>
    </div>
    <div class="cque">
        <img src="../Images/ImgContactUs/question.png"  height="50" width="50" style="position:relative; left:590px"/>
        <p class="phead2" style="position:relative; left:503px; margin-top:-5px; width:300px;">Frequent Questions</p>
        <p class="que">
            I'm worried about my children using apps, do you collect any information or sell it to anyone?
        </p>
       <%-- <p class="ans">
            The privacy of you and your children is our top priority. We guarantee that none of our children's apps will collect personal information. This is why we remove as many permissions as possible before we publish our applications. Many app developers leave in obtrusive permissions such as internet communication, phone state, and even location gathering. We go out of our way to remove these unneeded permissions.
            <br /><br />
In addition, we guarantee that none of our children's applications will ever include advertisements. Ads targeted towards children may be collecting personal information or habits, and we don't want to have any part of that.
            <br />
Feel free to review our <a href="ContactPrivacyPolicy.aspx" style="text-decoration:none; color:red; background-color:blueviolet;">Privacy Policy</a>or contact us using the form above or at</p> <p style="color:red; display:inline" class="ans">support@margimayur.org</p><p class="ans">.</p>
       --%>
        <p class="ans">
            The privacy of you and your children is our top priority. We guarantee that none of our children's apps will collect personal information. This is why we remove as many permissions as possible before we publish our applications. Many app developers leave in obtrusive permissions such as internet communication, phone state, and even location gathering. We go out of our way to remove these unneeded permissions.
            <br /><br />
            In addition, we guarantee that none of our children's applications will ever include advertisements. Ads targeted towards children may be collecting personal information or habits, and we don't want to have any part of that.
            <br />
            Feel free to review our     &nbsp;&nbsp;&nbsp;<a href="ContactPrivacyPolicy.aspx" style="text-decoration:none; color:red; display:inline">Privacy Policy</a>or contact us using the form above or at
        </p>
        <p class="que">The sound stopped working on my iPhone/iPad! What can I do?</p>
        <p class="ans">We're sorry to hear you're having trouble! The first thing is to make sure the mute switch isn't on and your volume is turned up. If you're not sure where the mute switch is, </p><p style="color:red; display:inline" class="ans">this link should help</p><p class="ans">.</p>
        <br /><br />
        <p class="ans">If your device isn't muted and your volume is up, then</p><p style="color:red; display:inline" class="ans"> please watch this video</p><p class="ans"> as it has helped dozens of people fix the most common sound issues.</p>
        <br /><br />
        <p class="ans">And of course if you're still having issues please contact us above and we'll fix it right away.</p>
        </div>
        <div>
            <img src="../Images/ImgContactUs/bottonlogo.png" height="250" width="140" style="left:530px; position:relative" />
        </div>
</asp:Content>

