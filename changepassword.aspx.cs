using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class changepassword : System.Web.UI.Page
{
    int i;
    SqlConnection con123 = new SqlConnection(ConfigurationManager .ConnectionStrings ["Farming_assistConnectionString2"].ToString());
    SqlDataAdapter da=new SqlDataAdapter();
    DataSet ds=new DataSet() ;

    protected void Page_Load(object sender, EventArgs e)
    {
        da=new SqlDataAdapter ("select * from User_Profiles",con123);
        da.Fill(ds, "Users_Profiles");
    } 
    protected void Backbtn_Click(object sender, EventArgs e)
    {
        //Response.Redirect("Default.aspx");
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
    protected void subbtn_Click(object sender, EventArgs e)

    {
        int cnt = 0;
        string StId="";
        if (Session["Role"].ToString() == "Student")
        {
            StId = Session["name"].ToString();
        }
        if (Session["Role"].ToString() == "Admin")
        {
            StId = Session["name"].ToString();
        }
        if (Session["Role"].ToString() == "Professor")
        {
            StId = Session["name"].ToString();
        }
        if (Session["Role"].ToString() == "Farmer")
        {
            StId = Session["name"].ToString();
        }
        //da.Fill (ds,"Users_Profiles");
        for (i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            string ss = ds.Tables[0].Rows[i][3].ToString();
            if (StId != ss)
            {

                //Response.Write ("invalid");
                cnt++;

            }
            else
            {
                da = new SqlDataAdapter("update User_Profiles set User_Password='" + newtxt.Text + "' Where User_Name ='" + StId + "'", con123);
                da.Fill(ds, "User_Profiles");
                //Response.Write("Sucessfully changed");
                break;
            }
        }
        if (cnt == ds.Tables[0].Rows.Count)
        {
            Response.Write("invalid password");
        }
        else
        {
            Response.Write("Sucessfully changed");
        }



    }
}
