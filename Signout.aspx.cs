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

public partial class Signout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["uid"] != null)
            {
                LinkButton lblsign = (LinkButton)Master.FindControl("Signout");
                lblsign.Visible = false;  
            }
           
            
            Response.Redirect("Login.aspx"); 
        }
        
    }
}
