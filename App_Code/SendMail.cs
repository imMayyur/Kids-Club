using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;
using Microsoft.CSharp;

public class SendMail
{
    public SendMail()
    {

    }
    public void SendMailBody(string ReceiverEmail, string ReceiverName, string Subject, string body, string SenderID, string SenderPassword)
    {
        string returnstring = " ";
        try
        {
            MailMessage email = new MailMessage();

            email.From = new MailAddress(SenderID, "MargiMayur");
            email.To.Add(new MailAddress(ReceiverEmail, ReceiverName));

            email.Subject = Subject;
            email.Body = body;
            email.SubjectEncoding = System.Text.Encoding.UTF8;
            email.BodyEncoding = System.Text.Encoding.UTF8;
            email.IsBodyHtml = true;
            email.Priority = MailPriority.High;

            SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.EnableSsl = true;
            NetworkCredential onetwork = new NetworkCredential(SenderID, SenderPassword);
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = onetwork;
            smtp.Send(email);
        }
        catch (Exception ex)
        {
            returnstring = "Error : " + ex.ToString();
        }
    }

    //protected void btn_submit_msg_Click(object sender, EventArgs e)
    //{
    //    SendMail mail = new SendMail();
    //    mail.SendEmail("oberoihotel01@gmail.com", "Oberoi Hotel", "Send Message / Feedback", " Email : " + txtemail.Text.Trim() + ".<br /><br />" + "Name : " + txtnm.Text.Trim() + ".<br /><br />" + "Message : " + txtmsg.Text.Trim(), "oberoihotel01@gmail.com", "oberoi@123");
    //    Response.Write("<script language='javascript'> alert('...SUCCESSFULLY SEND YOUR MESSAGE...') </script>");
    //}
}