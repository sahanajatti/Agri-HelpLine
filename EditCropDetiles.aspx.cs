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

public partial class EditCropDetiles : System.Web.UI.Page
{
    SqlCommand cmd; SqlDataReader dr; SqlConnection con;
    protected void Page_Load(object sender, EventArgs e)
    {
       con = new SqlConnection(ConfigurationManager.AppSettings["con"]);

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //try
        //{
            if (txtCroid.Text == "" && txtCrpName.Text == "" && txtCrpPrice.Text == "")
            {
                Response.Write("Enter the Values");
            }
            else
            {
                string s = "insert into Crop_Dtls values(" + Convert.ToInt32(txtCroid.Text) + ",'" + txtCrpName.Text + "'," + Convert.ToDouble(txtCrpPrice.Text) + ")";
                cmd = new SqlCommand(s, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                cmd = new SqlCommand("insert into Crops values(" + Convert.ToInt32(txtCroid.Text) + ",'" + txtCrpName.Text + "','" + TextBox1.Text + "')",con);
                con.Open();
                cmd.ExecuteNonQuery();
                //dr = cmd.ExecuteReader();
                Response.Write("records inserted");

            }
        //}
        //catch
        //{
        //    Response.Write("Record Not Inserted");
        //}
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}
