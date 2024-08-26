using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using BalFarming;

public partial class Login : System.Web.UI.Page
{
    Ballogin CheckCredentilas = new Ballogin();
    SqlDataReader dr; 
    
    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["uid"] != null)
        {
            LinkButton lblsign = (LinkButton)Master.FindControl("Signout");
            lblsign.Visible = false;
        }
        
    }

    /// <summary>
    /// verifying login credentials
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Btnsubmit_Click(object sender, EventArgs e)
    {
        CheckCredentilas.BUserName = TxtUname.Text;
        CheckCredentilas.BUpassword = Txtpassword.Text;

         dr=CheckCredentilas.UserLogin();
            
       if (dr.Read())
       {
           //forms authentication
           FormsAuthentication.RedirectFromLoginPage(TxtUname.Text, false);           
           Session["uid"] = dr["user_id"];
           Session["Role"]=dr["User_Role"];
           Session["name"] = dr["User_Name"];
           if (Session["Role"].ToString()=="Student")
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
       else
       {
           LblError.Text = "Invalid UserName/Password";
       
       }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Btnregister_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserRegister.aspx");
    }
}
