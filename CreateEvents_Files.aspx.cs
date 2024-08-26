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

public partial class Events_Files : System.Web.UI.Page
{
    /// <summary>
    /// creating the databse objects
    /// </summary>
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlCommand cmd;

    SqlDataReader dr;
    BalEvents_Files EventsFiles = new BalEvents_Files();
    DataSet ds1,ds2,ds3;
    String _Squery1 = string.Empty;
    String _Squery2 = string.Empty;
    String _Squery3 = string.Empty;
    string heading = string.Empty;
    int EventId, UserId = 0;

    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        //cheks the user details
        if (Session["uid"] != null)
        {
            if (!IsPostBack)
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
                    /// quers to retrive the event details,filetype,event related user details
                   // _Squery1 = "Select  Event_Id,Event_Heading From Events where  Event_Heading='" + heading + "'";
                    _Squery2 = "Select File_Type,File_Id from Files";
                    
                        string _SqueryEvents;
                     _SqueryEvents = "select Event_Id,Event_Heading From Events";
                     SqlDataAdapter da = new SqlDataAdapter(_SqueryEvents, con);
                    ds1 = new DataSet();
                        da.Fill(ds1);
                      
                    DdlEvents .DataSource =ds1.Tables [0];
                    DdlEvents .DataTextField ="Event_Heading";
                    DdlEvents .DataValueField = "Event_Id";
                    DdlEvents.DataBind ();
                    Session ["Event_Heading"]=DdlEvents .SelectedItem.ToString ();                                           
                    DdlEvents.Items.Insert(0, "Select");
                    da = new SqlDataAdapter("select File_Type,File_Id from Files",con );
                    ds2 = new DataSet();
                    da.Fill(ds2, "Files");
                    DdlFileType.DataSource = ds2;
                    DdlFileType.DataTextField = "File_Type";
                    DdlFileType.DataValueField = "File_Id";
                    DdlFileType.DataBind();
                    DdlFileType.Items.Insert(0, "Select");
                   // _Squery3 = "select distinct * From Events Inner join Events_Users On Events.Event_Id=Events_Users.Event_Id inner join User_Profiles on Events_Users.User_id=User_Profiles.User_id Where Event_Heading='" + heading + "'";
                     ds3 = new DataSet();
                     heading = DdlEvents.SelectedItem.ToString();
                    da = new SqlDataAdapter("select distinct * From Events Inner join Events_Users On Events.Event_Id=Events_Users.Event_Id inner join User_Profiles on Events_Users.User_id=User_Profiles.User_id Where Event_Heading='" + heading + "'",con);
                   // ds = EventsFiles.FillDropdown(_Squery3);
                    da.Fill(ds3,"users");
                    DdlUserName.DataSource = ds3;
                    DdlUserName.DataTextField = "User_Name";
                    DdlUserName.DataValueField = "User_Id";
                    DdlUserName.DataBind();
                    DdlUserName.Items.Insert(0, "Select");
                }
           
                catch (Exception ex)
                {
                    Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
                }
                finally
                {
                    ds1.Clear();
                    ds2.Clear();
                    ds3.Clear();
                }


            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }

    }
    /// <summary>
    /// insert the eventsrelated files
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            ///assign the values to properties
            EventsFiles.BEventId = Convert.ToInt32(DdlEvents.SelectedItem.Value);
            EventsFiles.BFileId = Convert.ToInt32(DdlFileType.SelectedItem.Value);
            EventsFiles.BUserID = Convert.ToInt32(DdlUserName.SelectedItem.Value);
            ///calling the bal method for inserting the Events related Files
            EventsFiles.InsertEvents_Files();
            Response.Redirect("Default.aspx", false);
        }

        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }

        finally
        {
            EventsFiles = null;
        }
    }
}
