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


public partial class Events_Topics : System.Web.UI.Page
{
    BalEvents_Files FillDrop = new BalEvents_Files();
    BalEvent_Topics Insert_EventTopics = new BalEvent_Topics();
    DataSet ds;
    string _SqueryEvents = string.Empty;
    string _SqueryTopic = string.Empty;
    /// <summary>
    /// filling the Drop down
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        ///check the user details
        if (Session["uid"] != null)
        {
            try
            {
                if (!IsPostBack)
                {
                    //query to fill the dropdown value

                    _SqueryEvents = "select Event_Id,Event_Heading From Events";
                    ds = FillDrop.FillDropdown(_SqueryEvents);
                    DDlEvents.DataSource = ds;
                    DDlEvents.DataTextField = "Event_Heading";
                    DDlEvents.DataValueField = "Event_Id";
                    DDlEvents.DataBind();
                    DDlEvents.Items.Insert(0, "Select Events");

                    //query to fill the dropdown value
                    _SqueryTopic = "select Topic_Id,Heading From Topics";
                    ds = FillDrop.FillDropdown(_SqueryTopic);
                    DDlTopics.DataSource = ds;
                    DDlTopics.DataTextField = "Heading";
                    DDlTopics.DataValueField = "Topic_Id";
                    DDlTopics.DataBind();
                    DDlTopics.Items.Insert(0, "Select Topic");
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
            }
            finally
            {
                //ds.Clear();
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }


    }
    /// <summary>
    /// Inserting the Topics,Events in to db
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            ///assogn the values to properties
            Insert_EventTopics.BeventId = Convert.ToInt32(DDlEvents.SelectedItem.Value);
            Insert_EventTopics.BtopicId = Convert.ToInt32(DDlTopics.SelectedItem.Value);
            ///calling the balmethod insert eventtopic
            Insert_EventTopics.insert_EventTopic();
            Response.Redirect("CreateEvents_Files.aspx", false);
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
        finally
        {
            Insert_EventTopics = null;
        }
    }
    /// <summary>
    /// skip the present page
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Chkskip_CheckedChanged(object sender, EventArgs e)
    {
        Response.Redirect("CreateEvents_Files.aspx", false);
    }
    protected void DDlEvents_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
