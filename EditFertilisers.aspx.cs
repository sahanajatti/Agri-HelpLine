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

public partial class EditFertilisers : System.Web.UI.Page
{
    DataSet ds;
    BalFertiliser Objpal = new BalFertiliser();
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
            ds = Objpal.FillGrid();
            GrdFertil.DataSource = ds;
            GrdFertil.DataBind();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
    }
    protected void GrdFertil_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GrdFertil.EditIndex = -1;
        FillGrid();

    }
    protected void GrdFertil_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int Fid = 0;
        Label lblid = (Label)GrdFertil.Rows[e.RowIndex].FindControl("lblFerID");
        Fid = Convert.ToInt32(lblid.Text);
        if (Convert.ToBoolean(con.State))
        {
            con.Close();
        }
        con.Open();
        cmd = new SqlCommand("delete From  Fertilizers where Fertilizer_Id='" + Fid + "'", con);
        cmd.ExecuteNonQuery();
        FillGrid();
    }
    protected void GrdFertil_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GrdFertil.EditIndex = e.NewEditIndex;
        FillGrid();
    }
    protected void GrdFertil_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int Fid = 0;
        string FerName = string.Empty;
        Label lblid = (Label)GrdFertil.Rows[e.RowIndex].FindControl("lblFerID");
        Fid = Convert.ToInt32(lblid.Text);
        TextBox Txt = (TextBox)GrdFertil.Rows[e.RowIndex].FindControl("TxtFername");
        FerName = Txt.Text;
        if (Convert.ToBoolean(con.State))
        {
            con.Close();
        }
        con.Open();
        cmd = new SqlCommand("Update Fertilizers Set Fertilizer='" + FerName + "'  where Fertilizer_Id='" + Fid + "'", con);
        cmd.ExecuteNonQuery();
        GrdFertil.EditIndex = -1;
        FillGrid();


    }


    protected void Btnhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx"); 
    }
}
