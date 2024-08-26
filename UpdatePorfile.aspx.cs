using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class UpdatePorfile : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    SqlDataAdapter da;
    SqlCommand cmd;    
    DataSet ds; SqlCommandBuilder bldr;
    DataRow rec;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            da = new SqlDataAdapter("select User_Name,User_Firstname,User_Lastname,User_Location,User_state,User_Country from User_Profiles", con);
            ds = new DataSet();
            da.Fill(ds, "User_Profiles");
            bldr = new SqlCommandBuilder(da);
            rec = ds.Tables[0].Select("User_Name='" + Session["name"].ToString() + "'")[0];
            txt_Uname.Text = rec[0].ToString();
            txt_Fname.Text = rec[1].ToString();
            txt_Lname.Text = rec[2].ToString();
            txt_Loc.Text = rec[3].ToString();
            txt_State.Text = rec[4].ToString();
            txt_Country.Text = rec[5].ToString();
        }
    }
    protected void btn_Update_Click(object sender, EventArgs e)
    {
        //try
        //{
            string s = "update User_Profiles set User_Firstname='" + txt_Fname.Text + "',User_Lastname='" + txt_Lname.Text + "',User_Location='" + txt_Loc.Text + "',User_state='" + txt_State.Text + "',User_Country='" + txt_Country.Text + "' where User_Name='" + txt_Uname.Text+"'";
            cmd = new SqlCommand(s, con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            if (i <= 0)
                Response.Write("Record not Updated");
            else
                Response.Write("Record Updated");
        //}
        //catch
        //{
        //    Response.Redirect("ErrorPage.aspx");
        //}
    }
    protected void btn_Back_Click(object sender, EventArgs e)
    {
        if (Session["Role"].ToString() == "Student")
        {
            Response.Redirect("studenthomepage.aspx");
        }
        if (Session["Role"].ToString() == "Admin")
        {
            Response.Redirect("Default.aspx");
        }
        if (Session["Role"].ToString() == "Professor")
        {
            Response.Redirect("professorshome.aspx");
        }
        if (Session["Role"].ToString() == "Farmer")
        {
            Response.Redirect("Farmerhome.aspx");
        }
    }
}
