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
using System.IO;

public partial class ViewEventsSchedules : System.Web.UI.Page
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
        ds = new DataSet();

        if (Convert.ToBoolean(con.State))
        {
            con.Close();
        }

        cmd = new SqlCommand();
        cmd.CommandText = "Usp_Events_Details";
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Connection = con;
        da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GrdViewEventsSchedule.DataSource = ds;
        GrdViewEventsSchedule.DataBind();

    }


    protected void lnkBACK1_Click(object sender, EventArgs e)
    {
        if (Session["GUser"].ToString() == "student")
            Response.Redirect("~//studenthomepage.aspx");
        else if (Session["GUser"].ToString() == "Farmer")
            Response.Redirect("~/Farmerhome.aspx");
        else if (Session["GUser"].ToString() == "User")
            Response.Redirect("~//General User.aspx");
    }


    //protected void GrdViewEventsSchedule_RowCommand(object sender, GridViewCommandEventArgs e)
    //{
    //    Button b1 = (Button)GrdViewEventsSchedule.Rows[0].FindControl("btnDownload");
    //    string s = b1.CommandArgument.ToString();
    //    Response.Redirect(s);
    //}
    int index;
    protected void GrdViewEventsSchedule_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        string s = GrdViewEventsSchedule.Rows[e.NewSelectedIndex].Cells[6].Text;
        index = e.NewSelectedIndex;

    }

    //protected void GrdViewEventsSchedule_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    //{
    //    Button b1 = (Button)GrdViewEventsSchedule.Rows[e.NewSelectedIndex].FindControl("btnDownload");
    //   s = b1.CommandArgument;
    //    Response.Redirect(s);
    //}
    protected void GrdViewEventsSchedule_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //string s1 = GrdViewEventsSchedule.Rows [e

        //GridViewRow Rec = GrdViewEventsSchedule.Rows[index];
        //Button B1 = (Button)Rec.FindControl("btnSelect");
        //string s = B1.CommandArgument.ToString();
    }

    protected void GrdViewEventsSchedule_SelectedIndexChanging1(object sender, GridViewSelectEventArgs e)
    {
        GridViewRow Rec = GrdViewEventsSchedule.Rows[e.NewSelectedIndex];
        Button B1 = (Button)Rec.FindControl("btnSelect");
        string s1 = B1.CommandArgument.ToString();


        // Create New instance of FileInfo class to get the properties of the file being downloaded
        FileInfo myfile = new FileInfo(s1);

        // Checking if file exists
        if (myfile.Exists)
        {
            // Clear the content of the response
            Response.ClearContent();

            // Add the file name and attachment, which will force the open/cancel/save dialog box to show, to the header
            Response.AddHeader("Content-Disposition", "attachment; filename=" + myfile.Name);

            // Add the file size into the response header
            Response.AddHeader("Content-Length", myfile.Length.ToString());

            // Set the ContentType
            Response.ContentType = ReturnExtension(myfile.Extension.ToLower());

            // Write the file into the response (TransmitFile is for ASP.NET 2.0. In ASP.NET 1.1 you have to use WriteFile instead)
            Response.TransmitFile(myfile.FullName);

            // End the response
            Response.End();
        }

    }

    private string ReturnExtension(string fileExtension)
    {
        switch (fileExtension)
        {
            case ".htm":
            case ".html":
            case ".log":
                return "text/HTML";
            case ".txt":
                return "text/plain";
            case ".doc":
                return "application/ms-word";
            case ".tiff":
            case ".tif":
                return "image/tiff";
            case ".asf":
                return "video/x-ms-asf";
            case ".avi":
                return "video/avi";
            case ".zip":
                return "application/zip";
            case ".xls":
            case ".csv":
                return "application/vnd.ms-excel";
            case ".gif":
                return "image/gif";
            case ".jpg":
            case "jpeg":
                return "image/jpeg";
            case ".bmp":
                return "image/bmp";
            case ".wav":
                return "audio/wav";
            case ".mp3":
                return "audio/mpeg3";
            case ".mpg":
            case "mpeg":
                return "video/mpeg";
            case ".rtf":
                return "application/rtf";
            case ".asp":
                return "text/asp";
            case ".pdf":
                return "application/pdf";
            case ".fdf":
                return "application/vnd.fdf";
            case ".ppt":
                return "application/mspowerpoint";
            case ".dwg":
                return "image/vnd.dwg";
            case ".msg":
                return "application/msoutlook";
            case ".xml":
            case ".sdxl":
                return "application/xml";
            case ".xdp":
                return "application/vnd.adobe.xdp+xml";
            default:
                return "application/octet-stream";
        }
    }
}
