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

public partial class CreateRealateClimate : System.Web.UI.Page
{
    BalRelateClimate InsertRelated = new BalRelateClimate();
    BalEvents_Files FillDrop = new BalEvents_Files();
    string _Squery = string.Empty;
    DataSet ds;
    string _topicheading = string.Empty;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] != null)
        {
            if (!IsPostBack)
            {
                if (Session["TopicHeading"] != null)
                {
                    _topicheading = Session["TopicHeading"].ToString();
                }

                _Squery = "select Heading,Topic_Id from Topics where Heading='"+_topicheading+"'";
                ds = FillDrop.FillDropdown(_Squery);
                Ddltopics.DataSource = ds;
                Ddltopics.DataTextField = "Heading";
                Ddltopics.DataValueField = "Topic_Id";
                Ddltopics.DataBind();
                Ddltopics.Items.Insert(0, "Select Topic..");
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
            InsertRelated.BtopicId = Convert.ToInt32(Ddltopics.SelectedItem.Value);
            InsertRelated.Bclimate = Ddlclimate.SelectedItem.Text;
            InsertRelated.relatClimate();
            //Response.Redirect("CreateRelatedCrop.aspx", false);
            Response.Redirect("professorshome.aspx", false);

        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
    }
}
