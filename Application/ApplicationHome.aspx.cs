using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Application_ApplicationHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void imgbtncntus_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("../ContactUs/ContactHome.aspx");
    }

    protected void tmgbtn1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("../Application/A-Z.aspx");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("../Application/LetterFilling.aspx");
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("../Application/TicTacTeo.aspx");
    }

    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("../Application/NumberAddition.aspx");
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("../Application/Shape.aspx");
    }

    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("../Application/MatchingPairs.aspx");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("../Application/1-10.aspx");
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("../Application/Puzzle.aspx");
    }

    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("../Application/ColorFilling.aspx");
    }
}