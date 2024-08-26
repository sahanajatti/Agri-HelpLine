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

public partial class CreateRelatedFertiliser : System.Web.UI.Page
{
    BalRelatedFertilsers InsertRelateFerti = new BalRelatedFertilsers();
    BalEvents_Files FillDrop = new BalEvents_Files();
    string _SqueryTopic, _SqueryFertiliser = string.Empty;
    string _topicheading = string.Empty;
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] != null)
        {
            if (!IsPostBack)
            {
                try
                {
                    if (Session["TopicHeading"] != null)
                    {
                        _topicheading = Session["TopicHeading"].ToString();
                    }

                    _SqueryTopic = "select Heading,Topic_Id from Topics where Heading='" + _topicheading + "'";
                    ds = FillDrop.FillDropdown(_SqueryTopic);
                    Ddltopic.DataSource = ds;
                    Ddltopic.DataTextField = "Heading";
                    Ddltopic.DataValueField = "Topic_Id";
                    Ddltopic.DataBind();
                    Ddltopic.Items.Insert(0, "Select Topic..");
                    _SqueryFertiliser = "select Fertilizer_Id,Fertilizer from Fertilizers";
                    ds = FillDrop.FillDropdown(_SqueryFertiliser);
                    DDlfertliserName.DataSource = ds;
                    DDlfertliserName.DataTextField = "Fertilizer";
                    DDlfertliserName.DataValueField = "Fertilizer_Id";
                    DDlfertliserName.DataBind();
                    DDlfertliserName.Items.Insert(0, "Select Fertlizer..");
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
            InsertRelateFerti.BtopicId = Convert.ToInt32(Ddltopic.SelectedItem.Value);
            InsertRelateFerti.BfertiliserId = Convert.ToInt32(DDlfertliserName.SelectedItem.Value);
            InsertRelateFerti.RelatedFertilser();
            Response.Redirect("professorshome.aspx", false);
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
    }
}
