using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using BalFarming;
using System.Data.SqlClient;
using System.Configuration;

public partial class soilreport : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["con"].ToString());

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into soilreport values ('" + TextBox1.Text + "','" + DropDownList1.SelectedItem.ToString()+ "','" + TextBox2.Text + "')", cn);
        cn.Open();
        cmd.ExecuteNonQuery();
        cn.Close();


    }
}