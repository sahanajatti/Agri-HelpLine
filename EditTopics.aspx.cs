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

public partial class EditTopics : System.Web.UI.Page
{
    DataSet ds;
    BalTopic Objpal = new BalTopic();
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] != null)
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
    public void FillGrid()
    {
        try
        {
            ds = Objpal.FillGridview();
            grdTopics.DataSource = ds;

            grdTopics.DataBind();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
    }
    protected void grdTopics_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            try
            {
                DataSet dsdrop;

                Label lbl = new Label();
                DropDownList DrdEdit = new DropDownList();

                DrdEdit = (DropDownList)e.Row.FindControl("DdlUserName");


                dsdrop = Objpal.FillGridview();
                if (DrdEdit != null)
                {

                    DrdEdit.DataSource = dsdrop;
                    DrdEdit.DataTextField = "User_Name";
                    DrdEdit.DataValueField = "User_Id";
                    DrdEdit.DataBind();
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

    }
    protected void grdTopics_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdTopics.EditIndex = e.NewEditIndex;
        FillGrid();
    }
    protected void grdTopics_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string heading, topicType, Description, Time, userName = string.Empty; int topicId, Userid = 0;
        DropDownList d;


        Label lbid = (Label)grdTopics.Rows[e.RowIndex].FindControl("LbltopicId");
        topicId = Convert.ToInt32(lbid.Text);
        TextBox t = (TextBox)grdTopics.Rows[e.RowIndex].FindControl("TxtHeading");
        heading = t.Text;
        d = (DropDownList)grdTopics.Rows[e.RowIndex].FindControl("DdlTopicType");
        topicType = d.SelectedItem.Value.ToString();
        t = (TextBox)grdTopics.Rows[e.RowIndex].FindControl("Txtdesc");
        Description = t.Text;
        t = (TextBox)grdTopics.Rows[e.RowIndex].FindControl("Txttimestamp");
        Time = t.Text;

        d = (DropDownList)grdTopics.Rows[e.RowIndex].FindControl("DdlUserName");
        Userid = Convert.ToInt32(d.SelectedItem.Value);
        if (Convert.ToBoolean(con.State))
        {
            con.Close();
        }
        con.Open();
        cmd = new SqlCommand("Update Topics Set Heading='" + heading + "',Topic_Type='" + topicType + "',Descrption='" + Description + "',Time_Stamp='" + Time + "',User_Id='" + Userid + "' where Topic_Id='" + topicId + "'", con);
        cmd.ExecuteNonQuery();
        grdTopics.EditIndex = -1;
        FillGrid();
    }
    protected void grdTopics_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdTopics.EditIndex = -1;
        FillGrid();
    }
    protected void grdTopics_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int topicId, Userid = 0;
        Label lbid = (Label)grdTopics.Rows[e.RowIndex].FindControl("LbltopicId");
        topicId = Convert.ToInt32(lbid.Text);
        if (Convert.ToBoolean(con.State))
        {
            con.Close();
        }
        con.Open();
        cmd = new SqlCommand("Delete from Topics where Topic_Id='" + topicId + "'", con);
        cmd.ExecuteNonQuery();
        grdTopics.EditIndex = -1;
        FillGrid();
    }
}
