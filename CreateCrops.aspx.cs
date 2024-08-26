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

public partial class createCrops : System.Web.UI.Page
{
    BalCrop InsertCrop = new BalCrop();
    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
     //check the user id 
        if (Session["uid"] != null)
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
    /// inserting the crop details
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            ///assign the values to the properties
            InsertCrop.BcropName = DdlCropName.SelectedItem.Text;
            InsertCrop.BcropType = DDlCroptype.SelectedItem.Text;
            //calling the bal method to insert the cropdetails
            InsertCrop.insertCrop();
            Response.Redirect("Default.aspx");
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
