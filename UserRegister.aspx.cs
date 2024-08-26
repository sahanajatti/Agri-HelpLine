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

public partial class UserRegister : System.Web.UI.Page
{
    NewRandom Objran = new NewRandom();
    BalUserProfile Objpl = new BalUserProfile();
    SqlCommand cmd;
    SqlDataReader Dr;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["con"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {

                TxtVcode0.Text = Objran.Password();                
            }
            //cmd = new SqlCommand("select User_Role from Users",con );
            //con.Open();
            //Dr = cmd.ExecuteReader();
            //while (Dr.Read())
            //{
            //    DdlRole.Items.Add(Dr[0].ToString());
            //}
            //con.Close();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
    }
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            cmd = new SqlCommand("select User_name from USer_Profiles",con);
            con.Open();
            Dr = cmd.ExecuteReader();
            while (Dr.Read())
            {
                if (TxtUname.Text == Dr[0].ToString())
                {
                    Response.Write("USer Exist");
                    break;
                }
            
                    Objpl.BUserName = TxtUname.Text;
                    Objpl.BFirstName = TxtFname.Text;
                    Objpl.BUserLastName = TxtLname.Text;
                    Objpl.BUserPassword = TxtPwrd.Text;
                    Objpl.BUserSecuQuestion = DdlSecurity.SelectedItem.Text;
                    Objpl.BUserSecanswe = TxtSecAns.Text;
                    Objpl.BUserLocation = TxtLocation.Text;
                    Objpl.BUserState = TxtStates.Text;
                    Objpl.BUserCountry = DdlCountry.SelectedItem.Text;
                    Objpl.BUserVercode = TxtVcode0.Text;
                    Objpl.CreateUser(Objpl.BUserName, Objpl.BFirstName, Objpl.BUserLastName, Objpl.BUserPassword, Objpl.BUserSecuQuestion, Objpl.BUserSecanswe, Objpl.BUserVercode, Objpl.BUserLocation, Objpl.BUserState, Objpl.BUserCountry);
                    TxtUname.Text = "";
                    TxtFname.Text = "";
                    TxtLname.Text = "";
                    TxtPwrd.Text = "";
                    TxtSecAns.Text = "";
                    TxtLocation.Text = "";
                    TxtStates.Text = "";
                    TxtVcode0.Text = "";
                    Response.Redirect("Login.aspx", false);
                    break;
                }
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
    }
}
