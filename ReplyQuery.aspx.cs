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


public partial class ViewQuery : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    DataSet ds;
    SqlDataAdapter da;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {

            FillGrid();
        }
    }
    /// <summary>
    /// fillng the gridview with Querydetails
    /// 
    /// </summary>
    public void FillGrid()
    {
        try
        {
            if (Convert.ToBoolean(con.State))
            {
                con.Close();
            }
            con.Open();
            cmd = new SqlCommand();
            cmd.CommandText = "SELECT Query.Query_id,Query.User_Id, User_Profiles.User_Name,Query.Crop,Query.Fert,Query.topic,Query.climate,Query.Query_Desc,Query.Query_Answer FROM Query INNER JOIN User_Profiles ON Query.User_Id = User_Profiles.User_id ";
            cmd.Connection = con;
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds, "query");
            GrdQuerys.DataSource = ds;
            GrdQuerys.DataBind();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
        finally
        {
            cmd.Dispose();
        }

    }
    protected void GrdQuerys_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GrdQuerys.EditIndex = e.NewEditIndex;
        FillGrid();
    }
    /// <summary>
    /// Updating the query with answer
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void GrdQuerys_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            int QueryId = 0;
            string QueryAnswer = string.Empty;
            TextBox t;
            QueryId = Convert.ToInt32(GrdQuerys.DataKeys[e.RowIndex].Value);
            t = (TextBox)GrdQuerys.Rows[e.RowIndex].FindControl("txtreply");
            QueryAnswer = t.Text;
            if (Convert.ToBoolean(con.State))
            {
                con.Close();
            }
            con.Open();
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "update Query set Query_Answer='" + QueryAnswer + "'where Query_id='" + QueryId + "'";
            cmd.ExecuteNonQuery();
            GrdQuerys.EditIndex = -1;
            FillGrid();

        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
        finally
        {
            //cmd.Dispose();
            //con.Dispose(); 
        }

    }
    /// <summary>
    /// cancelling the gridview clik
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void GrdQuerys_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GrdQuerys.EditIndex = -1;
        FillGrid();
    }
    /// <summary>
    /// Redirect the User to home page
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Btnhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}
