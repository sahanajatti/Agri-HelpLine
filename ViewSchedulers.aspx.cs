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

public partial class ViewSchedulers : System.Web.UI.Page
{
    DataSet ds;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlCommand cmd;
    SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillGrid();
        }

    }
    public void FillGrid()
    {
        try
        {
            ds = new DataSet();

            if (Convert.ToBoolean(con.State))
            {
                con.Close();
            }

            cmd = new SqlCommand();
            cmd.CommandText = "select * from Events";
            cmd.Connection = con;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            DataColumn col = new DataColumn();
            col.DataType = System.Type.GetType("System.Int32");
            col.ColumnName = "SerialNo";
            ds.Tables[0].Columns.Add(col);
            int rowcount = ds.Tables[0].Rows.Count - 1;
            for (int i = 0; i <= rowcount; i++)
            {
                DataRow row = ds.Tables[0].Rows[i];
                row["SerialNo"] = i + 1;

            }



            GrdViewEvents.DataSource = ds;
            GrdViewEvents.DataBind();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
        finally
        {
            ds.Clear();
            cmd.Dispose();
        }
    }

    protected void GrdViewEvents_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "ViewEvents")
        {


        }



    }
    protected void lnkback_Click(object sender, EventArgs e)
    {
        if (Session["GUser"].ToString ()== "student")        
           Response.Redirect("~//studenthomepage.aspx");
        else if (Session["GUser"].ToString () == "Farmer")          
             Response.Redirect("~/Farmerhome.aspx");
        else if(Session["GUser"].ToString () == "User")         
        Response.Redirect("~//General User.aspx");
    }
}

