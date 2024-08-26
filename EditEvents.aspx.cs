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
public partial class EditEvents : System.Web.UI.Page
{
    BalEvents FillGridview = new BalEvents();
    DataSet ds;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] != null)
        {
            if (!IsPostBack)
            {
                Fillgrid();
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }

    }
    private void Fillgrid()
    {
        ds = FillGridview.FillGrid();
        GrdEvents.DataSource = ds;
        GrdEvents.DataBind();
    }

    protected void GrdEvents_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GrdEvents.EditIndex = -1;
        Fillgrid();
    }
    protected void GrdEvents_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Eventid = 0;
        Label lbid = (Label)GrdEvents.Rows[e.RowIndex].FindControl("LblEveId");
        Eventid = Convert.ToInt32(lbid.Text);
        if (Convert.ToBoolean(con.State))
        {
            con.Close();
        }
        con.Open();
        cmd = new SqlCommand("delete From  Events where Event_Id='" + Eventid + "'", con);
        cmd.ExecuteNonQuery();
        Fillgrid();
    }
    protected void GrdEvents_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string Sdate, Edate, Place, Heading, Desc = string.Empty; int Id = 0;
        GridViewRow gr = GrdEvents.Rows[e.RowIndex];
        Label lbid = (Label)gr.FindControl("LblEveId");
        Id = Convert.ToInt32(lbid.Text);
        TextBox t = (TextBox)GrdEvents.Rows[e.RowIndex].FindControl("Txtsdate");
        Sdate = t.Text;
        t = (TextBox)GrdEvents.Rows[e.RowIndex].FindControl("TxtEnddate");
        Edate = t.Text;
        t = (TextBox)GrdEvents.Rows[e.RowIndex].FindControl("TxtPlace");
        Place = t.Text;
        t = (TextBox)GrdEvents.Rows[e.RowIndex].FindControl("TxtHeading");
        Heading = t.Text;
        t = (TextBox)GrdEvents.Rows[e.RowIndex].FindControl("TxtDesc");
        Desc = t.Text;
        if (Convert.ToBoolean(con.State))
        {
            con.Close();
        }
        con.Open();
        cmd = new SqlCommand("Update Events Set Start_Date='" + Sdate + "',End_Date='" + Edate + "',Place='" + Place + "',Event_Heading='" + Heading + "',Event_Description='" + Desc + "' where Event_Id='" + Id + "'", con);
        cmd.ExecuteNonQuery();
        GrdEvents.EditIndex = -1;
        Fillgrid();

    }
    protected void GrdEvents_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GrdEvents.EditIndex = e.NewEditIndex;
        Fillgrid();
    }
    protected void GrdEvents_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            DataRowView drv = (DataRowView)e.Row.DataItem;

            DateTime d = new DateTime();
            d = Convert.ToDateTime(drv[1]);

            Label lbl = new Label();
            lbl = (Label)e.Row.FindControl("lblStartdate");
            if (lbl != null)
            {
                lbl.Text = d.Month.ToString() + "/" + d.Day.ToString() + "/" + d.Year.ToString();

                d = Convert.ToDateTime(drv[2]);

            }
            else
            {
                TextBox t = new TextBox();
                t = (TextBox)e.Row.FindControl("Txtsdate");
                t.Text = d.Month.ToString() + "/" + d.Day.ToString() + "/" + d.Year.ToString();
            }
            lbl = (Label)e.Row.FindControl("lblEnddate");
            if (lbl != null)
            {
                lbl.Text = d.Month.ToString() + "/" + d.Day.ToString() + "/" + d.Year.ToString();

                d = Convert.ToDateTime(drv[2]);

            }
            else
            {
                TextBox t = new TextBox();
                t = (TextBox)e.Row.FindControl("TxtEnddate");
                t.Text = d.Month.ToString() + "/" + d.Day.ToString() + "/" + d.Year.ToString();
            }

        }


    }
    protected void Btnhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}
