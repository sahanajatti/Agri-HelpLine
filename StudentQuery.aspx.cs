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

        if ((Session["uid"] != null) && ((UserRole=="Farmer")||(UserRole=="Student")))
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
        //try
        //{
            string clim="",crop="",topic="",fert="",descr="",ans="";
            if (UserRole == "Farmer")
            {
                if (Ddlclimate.SelectedIndex > 0)
                {
                    clim = Ddlclimate.SelectedItem.Text;
                }
                else
                {
                    clim = "";
                }
                if (Ddlcrops.SelectedIndex > 0)
                {
                    crop = Ddlcrops.SelectedItem.Text;
                }
                else
                {
                    crop = "";
                }

                if (DDlfertilizers.SelectedIndex > 0)
                {
                    fert = DDlfertilizers.SelectedItem.Text;
                }
                else
                {
                    fert = "";
                }

                descr = TxtEnter.Text;


                if (Ddltopics.SelectedIndex > 0)
                {
                    topic = Ddltopics.SelectedItem.Text;
                }
                else
                {
                    topic = "";
                }

                //CreateQuery.BUserId = Convert.ToInt32(Session["uid"]);

                //CreateQuery.CreateQuery();
                cmd = new SqlCommand("insert into Query values(@Uid,@crop,@fert,@topic,@climate,@desc,@ans)", con);
                cmd.Parameters.AddWithValue("@Uid", Session["uid"].ToString());
                cmd.Parameters.AddWithValue("@crop", crop);
                cmd.Parameters.AddWithValue("@fert", fert);
                cmd.Parameters.AddWithValue("@topic", topic);
                cmd.Parameters.AddWithValue("@climate", clim);
                cmd.Parameters.AddWithValue("@desc", descr);
                cmd.Parameters.AddWithValue("@ans", ans);
                con.Open();
                int res = cmd.ExecuteNonQuery();
                con.Close();
                if (res == 1)
                {
                    Response.Redirect("Farmerhome.aspx", false);
                }
            }
        //}
        //catch (Exception ex)
        //{
        //    Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        //}
        //finally
        //{ 
        
        //}
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
