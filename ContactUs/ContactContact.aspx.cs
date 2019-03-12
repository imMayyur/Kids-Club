using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ContactUs_Default : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    string gender;
    string emailbody;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if(txtname.Text != "" && txtemailid.Text != "" && txtmsg.Text != "")
        {
            con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
            cmd = new SqlCommand("INSERT INTO Feedback(name, email, feedback) VALUES('" + txtname.Text + "','" + txtemailid.Text + "', '" + txtmsg.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Yor Message Successfully Send.');</script>");
            con.Close();
            txtmsg.Text = "";
            txtname.Text = "";
            txtemailid.Text = "";
        }
        else
        {
            if (txtemailid.Text == "")
            {
                Response.Write("<script>alert('Please, Enter The EmailID');</script>");
            }
            else if (txtmsg.Text == "")
            {
                Response.Write("<script>alert('Please, Enter The Message');</script>");
            }
        }
        
    }
    protected void btnjoin_Click(object sender, EventArgs e)
    {
        if (txtemail.Text != "")
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Insert into member(email_id,status) values('" + txtemail.Text + "', 'Unactive')", con);
            SqlCommand cmdselect = new SqlCommand("select email_id from member where email_id = '" + txtemail.Text + "'", con);
            con.Open();
            SqlDataReader reader = cmdselect.ExecuteReader();

            if (reader.HasRows)
            {
                Response.Redirect("MailExits.aspx");
            }
            else
            {
                reader.Close();
                reader.Dispose();
                cmd.ExecuteNonQuery();
                con.Close();

                emailbody = @"<!DOCTYPE html>
                                <html>
                                <head>
                                    <meta content=""text/html charset = utf - 8"" http-equiv=""Content-Type"">
                                        </ head >
                                        <body style = ""background-color:#f1f1f1;height:400px"">
                                        <img src = ""http://i.imgur.com/HGltSIa.png"" height = ""75"" width = ""333"" style=""margin-top:50px;margin-bottom:20px;margin-left:137px""/>
                                        <center>     
                                        <table style=""background-color:white;border-bottom-left-radius:10px;border-bottom-right-radius:10px;border-top-left-radius:10px;border-top-right-radius:10px"">
                                                       <tr style = ""background-color: white; height: 60px; width: 50px"">
                                                            <td style = ""padding-top: 1px;color:rgba(0,0,0,.80);margin-left: 15px;font-size: 25px; font-weight: bold; font-family:'Trebuchet MS','Lucida Sans Unicode','Lucida Grande','Lucida Sans',Arial, sans-serif"">
                                                                 Please Confirm Membership
                                            </td>
                                        </tr>
                                        <tr style = ""background-color: white; height: 70px; width: 50px;"">
                                             <td>
                                                  <a href=""http://localhost:64154/ContactUs/ConfirmMail.aspx"" target=""_blank"" style=""font-family:'Times New Roman',Times,serif;font-size:18px;color:white;text-decoration:none;background-color:rgba(0,0,0,.60);border:none;border-radius:3px;height:40px;width:250px;padding-top:10px;padding-left:5px;padding-right: 5px;padding-bottom:10px;margin-top:2px;margin-left:15px;"">Yes, subscribe me to this list</a>
                                             </td>
                                        </tr>
                                        <tr style=""background-color: white;height:40px;width:40px;"">
                                                 <td style= ""color:rgba(0,0,0,.70);font-size:15.15px;margin-left:15px;font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;margin-top:30px"" >
                                                     If you received this email by mistake, simply delete it.
                                                 </td>
                                        </tr>
                                        <tr style =""background-color:white;height:30px;width:50px;"">
                                                 <td style= ""color:rgba(0,0,0,.70);font-size:15.15px;margin-left:15px;font-family:'Lucida Sans','Lucida Sans Regular','Lucida Grande','Lucida Sans Unicode',Geneva,Verdana,sans-serif"">
                                                     You won't be subscribed if you don't click the confirmation link above.
                                                </td>
                                        </tr>
                                    </table>
                                </center>
                                </body>
                                </html>
                                ";
                SendMail mail = new SendMail();

                mail.SendMailBody(txtemail.Text, txtemail.Text, "MargiMayur KidsClub", emailbody.ToString(), "margimayurkidsclub@gmail.com", "margimayur0880");

                Response.Redirect("CheckEmail.aspx");
            }
            con.Close();
        }
        else
        {
            if (txtemail.Text == "")
            {
                Response.Write("<script>alert('Please, Enter The EmailID');</script>");
            }
        }
    }
}