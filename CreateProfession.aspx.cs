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

public partial class CreateProfession : System.Web.UI.Page
{
    SqlConnection cn=new SqlConnection(ConfigurationSettings.AppSettings["con"].ToString());
    BalEvents_Files FillDrop = new BalEvents_Files();
    string _SqueryUsers = string.Empty;
    string s = ConfigurationSettings.AppSettings[0];
    DataSet ds;
    BalProfessor ProfessorExpertise = new BalProfessor();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] != null)
        {
            try
            {
                if (!IsPostBack)
                {
                    _SqueryUsers = "SELECT   User_Profiles.User_id,User_Profiles.User_Name, Users.User_Role FROM  Users INNER JOIN   User_Profiles ON Users.User_Id = User_Profiles.User_id where User_role='Professor'";
                    //ds = new DataSet();
                    //SqlDataAdapter da = new SqlDataAdapter(_SqueryUsers,s );
                    //da.Fill(ds, "Users");
                    ds = FillDrop.FillDropdown(_SqueryUsers);
                    DdluserName.DataSource = ds;
                    DdluserName.DataTextField = "User_Name";
                    DdluserName.DataValueField = "User_id";
                    DdluserName.DataBind();
                    DdluserName.Items.Insert(0, "Select User..");
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Btnsubmit_Click(object sender, EventArgs e)
    {
        string exp1 = "", exp2 = "", exp3 = "", exp4 = "";
        try
        {
            ProfessorExpertise.BUserId = Convert.ToInt32(DdluserName.SelectedItem.Value);
            if (CheckBox1.Checked == true)
            {
                exp1 = CheckBox1.Text;
            }
            else
            {
                exp1 = "";
            }
            if (CheckBox2.Checked == true)
            {
                exp2 = CheckBox2.Text;
            }
            else
            {
                exp2 = "";
            }
            if (CheckBox3.Checked == true)
            {
                exp3 = CheckBox3.Text;
            }
            else
            {
                exp3 = "";
            }
            if (CheckBox4.Checked == true)
            {
                exp4 = CheckBox4.Text;
            }
            else
            {
                exp4 = "";
            }
            //ProfessorExpertise.Bproffesion = DdlProfession.SelectedItem.Text;
            //ProfessorExpertise.BExpertise  = Ddlexpertise.SelectedItem.Text;
            //ProfessorExpertise.InsertExperts();
           // Response.Redirect("Default.aspx",false );
          // Response.Redirect("professorshome.aspx", false);
            SqlCommand cmd = new SqlCommand("insert into Professors values(@id,@prof,@ex1,@ex2,@ex3,@ex4)", cn);
            cmd.Parameters.AddWithValue("@id", ProfessorExpertise.BUserId);
            cmd.Parameters.AddWithValue("@prof", DdlProfession.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@ex1", exp1);
            cmd.Parameters.AddWithValue("@ex2", exp2);
            cmd.Parameters.AddWithValue("@ex3", exp3);
            cmd.Parameters.AddWithValue("@ex4", exp4);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        catch (Exception ex)
        {
            Response.Redirect("ErrorPage.aspx?Error=" + ex.Message);
        }
    }
}
