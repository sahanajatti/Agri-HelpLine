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
using System.IO;
using BalFarming;
using System.Data.SqlClient;

public partial class FIles : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("server=LAB05;database=DBBackupFarming;integrated security=true");

    BalFiles FileInserting = new BalFiles();
    DataSet Ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] != null)
        {
            //try
            //{//fill the drop down with users
            if (!IsPostBack)
            {
                Ds = FileInserting.FillUsers();
                DDlUserName.DataSource = Ds;
                DDlUserName.DataTextField = "User_Name";
                DDlUserName.DataValueField = "User_id";
                DDlUserName.DataBind();
                DDlUserName.Items.Insert(0, "Select User Name");


            }
            //}
            //catch (Exception ex)
            //{
            //    Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
            //}
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
            DirectoryInfo Dinfo = new DirectoryInfo(HttpContext.Current.Server.MapPath("~\\Files"));
            if (FUL.HasFile)
            {
                string FileName = System.IO.Path.GetFileName(FUL.FileName);
                //Response.Write("<script>alert('"+FileName+"')</script>");
                string filePath = Request.PhysicalApplicationPath + "Files\\" + System.IO.Path.GetFileName(FUL.FileName);
                FUL.SaveAs(filePath);
                FileInserting.BFilePath = FileName;
                FileInserting.BFileType = TextBox1.Text;
                FileInserting.BUserId = Convert.ToInt32(DDlUserName.SelectedItem.Value);
                FileInserting.BCreatedTime = DateTime.Now.ToString();
                SqlCommand cmd = new SqlCommand("insert into Files values(@ftype,@fpath,@uid,@ftime)", cn);
                cmd.Parameters.AddWithValue("@ftype", FileInserting.BFileType);
                cmd.Parameters.AddWithValue("@fpath", filePath);
                cmd.Parameters.AddWithValue("@uid", FileInserting.BUserId);
                cmd.Parameters.AddWithValue("@ftime", FileInserting.BCreatedTime);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                //    File.Copy(FUL.PostedFile.FileName, FileName, true);





                //FileInserting.InsertFiles();
                Response.Redirect("Default.aspx", false);
            }
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }

    }
}
