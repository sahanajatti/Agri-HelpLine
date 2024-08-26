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


public partial class _Default : System.Web.UI.Page
{

    BalFarming.BalInserting ObjPl = new BalFarming.BalInserting();
    DataSet ds;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlCommand cmd;
    BalEvents_Files FillDrop = new BalEvents_Files();
    string _SqueryUsers = string.Empty;

    /// <summary>
    /// check the user credentials and fill the dropw down with user name
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["uid"] != null)
        {
            if (!IsPostBack)
            {
                try
                {

                    _SqueryUsers = "select User_Name,User_id from User_Profiles";
                    ds = FillDrop.FillDropdown(_SqueryUsers);
                    DdlUserName.DataSource = ds;
                    DdlUserName.DataTextField = "User_Name";
                    DdlUserName.DataValueField = "User_id";
                    DdlUserName.DataBind();
                    DdlUserName.Items.Insert(0, "Select User..");
                    FillGrid();
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
    /// <summary>
    /// Here We are Sending the UserName,Role 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            ObjPl.BUserName = Convert.ToInt32(DdlUserName.SelectedItem.Value);
            ObjPl.BUserRole = DdlRoles.SelectedItem.Text;
            ObjPl.BAction = HidAction.Value.ToString();
            ObjPl.InsertUser();
            FillGrid();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
    }

    public void FillGrid()
    {
        try
        {
            ds = ObjPl.Fillgrid();
            GrdUser.DataSource = ds;
            GrdUser.DataBind();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
    }

    /// <summary>
    /// deleting the User
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void GrdUser_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            Label l = (Label)GrdUser.Rows[e.RowIndex].FindControl("LblUid");
            if (Convert.ToBoolean(con.State))
            {
                con.Close();
            }
            con.Open();
            cmd = new SqlCommand("Delete from Users where User_Id='" + Convert.ToInt32(l.Text) + "'", con);
            cmd.ExecuteNonQuery();
            FillGrid();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }

    }
   
    protected void GrdUser_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {
            GrdUser.EditIndex = e.NewEditIndex;
            FillGrid();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
    }
    protected void GrdUser_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            string srole = string.Empty; int i = 0; DropDownList d; Label L;
            L = (Label)GrdUser.Rows[e.RowIndex].FindControl("LblUid");
            i = Convert.ToInt32(L.Text);
            d = (DropDownList)GrdUser.Rows[e.RowIndex].FindControl("DdlRoles1");
            srole = d.SelectedItem.Text;
            if (Convert.ToBoolean(con.State))
            {
                con.Close();
            }
            con.Open();
            cmd = new SqlCommand("Update Users Set  User_Role='" + srole + "'  where User_Id='" + i + "'", con);
            cmd.ExecuteNonQuery();
            GrdUser.EditIndex = -1;
            FillGrid();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
    }
    protected void GrdUser_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        try
        {
            GrdUser.EditIndex = -1;
            FillGrid();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
    }

    protected void GrdUser_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            try
            {
                DataSet dsdrop;
                DropDownList DrdUsers = new DropDownList();
                DrdUsers = (DropDownList)e.Row.FindControl("ddlEditUser");
                dsdrop = ObjPl.Fillgrid();
                if (DrdUsers != null)
                {
                    DrdUsers.DataSource = dsdrop;
                    DrdUsers.DataTextField = "User_Name";
                    DrdUsers.DataValueField = "User_Id";
                    DrdUsers.DataBind();
                    DrdUsers.Items.Insert(0, "Select");
                }

            }
            catch (Exception ex)
            {
                Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
            }
        }

    }
    /// <summary>
    /// redirecting the user to Home page
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Btnhome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}
