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


public partial class VillagersQuery : System.Web.UI.Page
{
    BalEvents_Files FillDrop = new BalEvents_Files();
    string _Squery = string.Empty;
    DataSet ds;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlCommand cmd;
    SqlDataAdapter da;
    BalCreateQuery CreateQuery = new BalCreateQuery();
    string UserRole;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Role"] != null)
        {
            UserRole = Session["Role"].ToString();
        }

        if ((Session["uid"] != null) && (UserRole == "Farmer"))
        {

            if (!IsPostBack)
            {
                FillGrid();
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }

    }

    protected void Chkcrops_CheckedChanged(object sender, EventArgs e)
    {
        if (Chkcrops.Checked == true)
        {
            RfCrops.Visible = true;
            Ddlcrops.Visible = true;
            _Squery = " select Crop_name,Crop_Id from crops";
            ds = FillDrop.FillDropdown(_Squery);
            Ddlcrops.DataSource = ds;
            Ddlcrops.DataTextField = "Crop_name";
            Ddlcrops.DataValueField = "Crop_Id";
            Ddlcrops.DataBind();
            Ddlcrops.Items.Insert(0, "Select Crops..");
        }
        else
        {
            RfCrops.Visible = false;
            Ddlcrops.Visible = false;
        }
    }
    protected void Chkferti_CheckedChanged(object sender, EventArgs e)
    {
        if (Chkferti.Checked == true)
        {
            RfFert.Visible = true;
            DDlfertilizers.Visible = true;
            _Squery = " select Fertilizer,Fertilizer_Id from Fertilizers";
            ds = FillDrop.FillDropdown(_Squery);
            DDlfertilizers.DataSource = ds;
            DDlfertilizers.DataTextField = "Fertilizer";
            DDlfertilizers.DataValueField = "Fertilizer_Id";
            DDlfertilizers.DataBind();
            DDlfertilizers.Items.Insert(0, "Select Fertilizers..");
        }
        else
        {
            DDlfertilizers.Visible = false;
            RfFert.Visible = false;
        }

    }
    protected void Chktopics_CheckedChanged(object sender, EventArgs e)
    {
        if (Chktopics.Checked == true)
        {
            Rftopics.Visible = true;
            Ddltopics.Visible = true;
            _Squery = " select heading,Topic_Id from Topics";
            ds = FillDrop.FillDropdown(_Squery);
            Ddltopics.DataSource = ds;
            Ddltopics.DataTextField = "heading";
            Ddltopics.DataValueField = "Topic_Id";
            Ddltopics.DataBind();
            Ddltopics.Items.Insert(0, "Select Topics..");
        }
        else
        {
            Rftopics.Visible = false;
            Ddltopics.Visible = false;
        }
    }
    protected void Chkclimate_CheckedChanged(object sender, EventArgs e)
    {
        if (Chkclimate.Checked == true)
        {
            Rfclimate.Visible = true;
            Ddlclimate.Visible = true;
            _Squery = " select Climate from Related_Climate";
            ds = FillDrop.FillDropdown(_Squery);
            Ddlclimate.DataSource = ds;
            Ddlclimate.DataTextField = "Climate";
            Ddlclimate.DataValueField = "Climate";
            Ddlclimate.DataBind();
            Ddlclimate.Items.Insert(0, "Select Climate..");
        }
        else
        {
            Ddlclimate.Visible = false;
            Rfclimate.Visible = false;
        }

    }
    protected void Btnsubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (UserRole == "Farmer")
            {
                if (Ddlclimate.SelectedIndex > 0)
                {
                    CreateQuery.BClimate = Ddlclimate.SelectedItem.Text;
                }
                else
                {
                    CreateQuery.BClimate = "";
                }
                if (Ddlcrops.SelectedIndex > 0)
                {
                    CreateQuery.BCropdesc = Convert.ToInt32(Ddlcrops.SelectedItem.Value);
                }

                if (DDlfertilizers.SelectedIndex > 0)
                {
                    CreateQuery.BFretiliserdesc = Convert.ToInt32(DDlfertilizers.SelectedItem.Value);
                }


                CreateQuery.BMic = TxtEnter.Text;


                if (Ddltopics.SelectedIndex > 0)
                {
                    CreateQuery.BTopicsdesc = Convert.ToInt32(Ddltopics.SelectedItem.Value);
                }


                CreateQuery.BUserId = Convert.ToInt32(Session["uid"]);

                CreateQuery.CreateQuery();
                Response.Redirect("Farmerhome.aspx", false);
            }
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
        finally
        { 
        
        }
    }
    public void FillGrid()
    {
        if (Convert.ToBoolean(con.State))
        {
            con.Close();
        }
        con.Open();
        cmd = new SqlCommand();
        cmd.CommandText = "SELECT Query.Query_Answer, Query.Query_Desc, User_Profiles.User_Name FROM  Query INNER JOIN      User_Profiles ON Query.User_Id = User_Profiles.User_id";
        cmd.Connection = con;
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds, "query");
        GrdAnswer.DataSource = ds;
        GrdAnswer.DataBind();

    }
}
