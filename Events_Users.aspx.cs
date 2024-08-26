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
using System.Text;
using System.Data.SqlClient;

public partial class Events_Users : System.Web.UI.Page
{
    DataSet ds;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlCommand cmd;
    SqlDataAdapter da;
    SqlDataReader dr;
    string heading = string.Empty;
    int EventId, UserId;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            string _SqueryEvents;
            _SqueryEvents = "select Event_Id,Event_Heading From Events";
            da = new SqlDataAdapter(_SqueryEvents ,con );
            DataSet ds1 = new DataSet();
            da.Fill(ds1);
           // da.Fill(ds, "Events");
            ddlEvents.DataSource = ds1.Tables[0];
            ddlEvents.DataTextField = "Event_Heading";
            ddlEvents.DataValueField = "Event_Id";
            ddlEvents.DataBind();
            Session["Event_Heading"] = ddlEvents.SelectedItem.ToString();
            //ds = FillDrop.FillDropdown(_SqueryEvents);
            //DDlEvents.DataSource = ds;
            //DDlEvents.DataTextField = "Event_Heading";
            //DDlEvents.DataValueField = "Event_Id";
            //DDlEvents.DataBind();
            //DDlEvents.Items.Insert(0, "Select Events");
            ds = new DataSet();
            if (Convert.ToBoolean(con.State))
            {
                con.Close();

            }
            con.Open();
            cmd = new SqlCommand();
            cmd.CommandText = "SELECT   User_Profiles.User_id,User_Profiles.User_Name, Users.User_Role FROM Users INNER JOIN User_Profiles ON Users.User_Id = User_Profiles.User_id WHERE User_role='Student'";
            cmd.Connection = con;
            da = new SqlDataAdapter(cmd);
            da.Fill(ds, "Lis");
            LiallUSers.DataSource = ds;
            LiallUSers.DataTextField = "User_Name";
            LiallUSers.DataValueField = "User_Name";
            LiallUSers.DataBind();
            LiallUSers.Items.Insert(0, "Available Users");
            Session["EventHeading"] = ddlEvents.SelectedItem.ToString();
        }
    }
    //protected void ddlEvents_SelectedIndexChanged(object sender, EventArgs e)
    //{
    //    try
    //    {
            //if (Session["EventHeading"] != null)
            //{
                //if (!IsPostBack)
                //{
                //    ds = new DataSet();
                //    if (Convert.ToBoolean(con.State))
                //    {
                //        con.Close();

                //    }
                //    con.Open();
                //    cmd = new SqlCommand();
                //    cmd.CommandText = "SELECT   User_Profiles.User_id,User_Profiles.User_Name, Users.User_Role FROM Users INNER JOIN User_Profiles ON Users.User_Id = User_Profiles.User_id WHERE User_role='Student'";
                //    cmd.Connection = con;
                //    da = new SqlDataAdapter(cmd);
                //    da.Fill(ds, "Lis");
                //    LiallUSers.DataSource = ds;
                //    LiallUSers.DataTextField = "User_Name";
                //    LiallUSers.DataValueField = "User_Name";
                //    LiallUSers.DataBind();
                //    LiallUSers.Items.Insert(0, "Available Users");
                //}

            //}
            //else
            //{
            //    Response.Redirect("~//CreateEvents.aspx");
        //    //}
        //}
    //    catch (Exception ex)
    //    {
    //        Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
    //    }
    //}
       




    protected void Btnadd_Click(object sender, EventArgs e)
    {
        try
        {
            if (LiallUSers.SelectedIndex > 0)

                LiEventUsers.Items.Add(LiallUSers.SelectedItem.Value);
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
    }


    protected void Btnremove_Click(object sender, EventArgs e)
    {
        try
        {
            LiEventUsers.Items.Remove(LiEventUsers.SelectedItem.Value);
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
    }


    protected void Btninsert_Click(object sender, EventArgs e)
    {
        try
        {
            if (Convert.ToBoolean(con.State))
            {
                con.Close();
            }
            con.Open();
            cmd = new SqlCommand();

            cmd.Connection = con;

            if (Session["EventHeading"] != null)
            {
                heading = ddlEvents.SelectedItem.ToString();
                //heading = Session["EventHeading"].ToString();
            }
            cmd.CommandText = "Select  Event_Id From Events where  Event_Heading='" + heading + "'";
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                EventId = Convert.ToInt32(dr["Event_Id"]);
            }
            cmd.Dispose();
            foreach (ListItem Li in LiEventUsers.Items)
            {
                String sb = null;
                sb = Li.Text.ToString();
                              
                if (Convert.ToBoolean(con.State))
                {
                    con.Close();
                }
                con.Open();
                cmd = new SqlCommand();

                cmd.Connection = con;
                cmd.CommandText = "Select  User_id From User_Profiles where  User_Name='" + sb + "'";
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    UserId = Convert.ToInt32(dr["User_id"]);
                }
                cmd.Dispose();
                if (Convert.ToBoolean(con.State))
                {
                    con.Close();
                }
                con.Open();
                cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into events_users(User_id,Event_id)values('" + UserId + "','" + EventId + "')";
                cmd.ExecuteNonQuery();
            }

            Response.Redirect("CreateEvents_Topics.aspx",false );
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
        }
    
}
