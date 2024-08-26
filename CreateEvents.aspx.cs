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
using BalFarming;

public partial class CreateEvents : System.Web.UI.Page
{
    BalEvents Eventsinsert = new BalEvents();
    string Urole = string.Empty;

    /// <summary>
    /// if user is not logged in redirecting to the login.aspx
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        ///cheks the user role here
        if (Session["Role"] != null)
        {
            Urole = Session["Role"].ToString();
        }
        if((Session["uid"] != null)&&(Urole=="Admin")) 
        {
            if (!IsPostBack)
            {

            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    /// <summary>
    /// Creating an event 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            //assiging values to the properties
            Eventsinsert.BStartdate = Txtstartdate.Text;
            Eventsinsert.BEnddate = TxtEnddate.Text;
            Eventsinsert.BPlace = TxtLocation.Text;
            Eventsinsert.BEventHeading = TxtHeading.Text;
            Eventsinsert.BEventDescription = Txtdesc.Text;
            //calling bal method for inserting values in an event
            Eventsinsert.InsertEvents();

            Session["EventHeading"] = TxtHeading.Text;

            Response.Redirect("Events_Users.aspx", false);
        }

        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }

        finally
        { 
        
        }

    }
}
