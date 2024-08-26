using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["uid"] == null)
                Response.Redirect("Login.aspx");
        }
        //if (Session["uid"] != null)
        //{ 

        //}
        //else
        //{
        //    Response.Redirect("Login.aspx");
        //}
    }
    /// <summary>
    /// Redirect the user Required page
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void LnkEvents_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreateEvents.aspx");
    }
    /// <summary>
    /// Redirect the user Required page
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void LnkFile_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreateFIles.aspx");
    }
    /// <summary>
    /// Redirect the user Required page
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void LnkProfe_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreateProfession.aspx");
    }
    /// <summary>
    /// Redirect the user Required page
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Lnktopics_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreateTopic.aspx");
    }
    /// <summary>
    /// Redirect the user Required page
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Lnkrole_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreateUserRole.aspx");
    }
    /// <summary>
    /// Redirect the user Required page
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Lnkeditevents_Click(object sender, EventArgs e)
    {

        Response.Redirect("EditEvents.aspx");
    }
    protected void LnkFer_Click(object sender, EventArgs e)
    {
        Response.Redirect("CreateFertilisers.aspx");
    }
    protected void LnkEditUsr_Click(object sender, EventArgs e)
    {
        string s= Session["name"].ToString();
        Session["Uname"] = s;
        Response.Redirect("UpdatePorfile.aspx");
    }
}
