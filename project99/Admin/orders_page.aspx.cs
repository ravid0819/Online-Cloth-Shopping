using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Activities.Expressions;

public partial class Admin_orders_page : System.Web.UI.Page
{
    SqlConnection conn;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;

    void myconn()
    {
        conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True\r\n");
        conn.Open();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        myconn();
        cmd = new SqlCommand("select * from orderdetail",conn);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count>0)
        {
            rpt1.DataSource=ds;
            rpt1.DataBind();
        }
    }
}