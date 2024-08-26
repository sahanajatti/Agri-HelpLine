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
using System.Data.SqlClient;
using BalFarming;


public partial class CreateRelatedCrop : System.Web.UI.Page
{
    BalRelatedCrop InsertRelateCrop = new BalRelatedCrop();
    BalEvents_Files FillDrop = new BalEvents_Files();
    string _SqueryTopic, _SqueryCrop = string.Empty;
    DataSet ds;
    string _topicheading = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] != null)
        {
            try
            {
                if (!IsPostBack)
                {
                    //if (Session["TopicHeading"] != null)
                    //{
                    //    _topicheading = Session["TopicHeading"].ToString();
                    //}
                    _SqueryTopic = "select Heading,Topic_Id from Topics";
                    //where Heading='"+_topicheading+"'";
                    ds = FillDrop.FillDropdown(_SqueryTopic);
                    Ddltopic.DataSource = ds;
                    Ddltopic.DataTextField = "Heading";
                    Ddltopic.DataValueField = "Topic_Id";
                    Ddltopic.DataBind();
                    Ddltopic.Items.Insert(0, "Select Topic..");
                    _SqueryCrop = "select Crop_Name,Crop_Id from Crops";
                    ds = FillDrop.FillDropdown(_SqueryCrop);
                    Ddlcrop.DataSource = ds;
                    Ddlcrop.DataTextField = "Crop_Name";
                    Ddlcrop.DataValueField = "Crop_Id";
                    Ddlcrop.DataBind();
                    Ddlcrop.Items.Insert(0, "Select Crop..");
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
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
            InsertRelateCrop.BcropId = Convert.ToInt32(Ddlcrop.SelectedItem.Value);
            InsertRelateCrop.BtopicId = Convert.ToInt32(Ddltopic.SelectedItem.Value);
            InsertRelateCrop.RelatedCrop();
            //Response.Redirect("CreateRelatedFertiliser.aspx", false);
            Response.Redirect("professorshome.aspx", false);
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
    }
}
