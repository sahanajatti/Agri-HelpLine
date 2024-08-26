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

public partial class Fertilisers : System.Web.UI.Page
{
    BalFertiliser Objpal = new BalFertiliser();
       protected void Page_Load(object sender, EventArgs e)
       {
           if (Session["uid"] != null)
           {
               if (!IsPostBack)
               {
                   try
                   {




                   }
                   catch (Exception ex)
                   {
                       Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
                   }
               }
           }
           else
           {
               Response.Redirect("Login.aspx");
           }
    }


    protected void Btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            Objpal.BFertiliserId = Convert.ToInt32(TxtFid.Text);
            Objpal.BFerTiliserName = TxtFname.Text;
            Objpal.InsertFertiliser();
            
            Response.Redirect("EditFertilisers.aspx",false ); 
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
    }

}

