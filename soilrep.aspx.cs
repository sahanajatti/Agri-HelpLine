using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class soilrep : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationSettings.AppSettings["con"].ToString());
 
    protected void Page_Load(object sender, EventArgs e)
    {
       // SqlCommand cmd = new SqlCommand("select * from soilreport");
        SqlDataAdapter da = new SqlDataAdapter("select * from soilreport", cn);
        DataSet ds = new DataSet();
        da.Fill(ds, "tab1");
        GridView1.DataSource = ds;
        GridView1.DataBind();         
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
