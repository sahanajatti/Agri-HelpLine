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
using BalFarming;
using System.Data.SqlClient;
public partial class CreateTopic : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("server=LAB05;database=DBBackupFarming;integrated security=true");
    BalEvents_Files FillDrop = new BalEvents_Files();
    DataSet ds;
    BalTopic CreatingTopic = new BalTopic();
    string _SqueryUsers,_Urole = string.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {  
        
        if (Session["Role"] != null)
            {
                _Urole = Session["Role"].ToString();
            }

        if( (Session["uid"] != null)&&(_Urole=="Professor"))
        {
            try
            {

                if (!IsPostBack)
                {

                    _SqueryUsers = "select u.User_Name,u.User_Id from User_Profiles u inner join Users i on u.User_Id=i.User_Id where User_role='" + _Urole + "'";
                    ds = FillDrop.FillDropdown(_SqueryUsers);
                    Ddlusers.DataSource = ds;
                    Ddlusers.DataTextField = "User_Name";
                    Ddlusers.DataValueField = "User_Id";
                    Ddlusers.DataBind();
                    Ddlusers.Items.Insert(0, "Select UserName");
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
    else
    {
        Session.Abandon();
        Response.Redirect("Login.aspx");
    }

    }


    protected void Btnsubmit_Click(object sender, EventArgs e)
    {
        //try
        //{
            Session["TopicHeading"] = TxtHeading.Text;
            CreatingTopic.BcreateDate = TxtDate.Text;
            CreatingTopic.Bdescription = TxtDesc.Text;
            CreatingTopic.Bheading = TxtHeading.Text;
            CreatingTopic.BtopicType = Ddltype.SelectedItem.Text.ToString();
            CreatingTopic.BuserId = Convert.ToInt32(Ddlusers.SelectedItem.Value);
            //CreatingTopic.createTopic();
            ////Response.Redirect("CreateRealateClimate.aspx", false);
            SqlCommand cmd = new SqlCommand("insert into Topics values('" + TxtHeading.Text + "','" + Ddltype.SelectedItem.ToString() + "','" + TxtDesc.Text + "','" + TxtDate.Text + "'," + CreatingTopic.BuserId + ")", cn);
            cn.Open();
            int res = cmd.ExecuteNonQuery();
            cn.Close();
            if (res == 1)
            {
                Response.Redirect("professorshome.aspx", false);
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
}
