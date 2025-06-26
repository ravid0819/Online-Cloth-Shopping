using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Net.Sockets;

public partial class USER_home_page : System.Web.UI.Page
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
    String price;
    void loadUsName(String usName)
    {
        login.InnerHtml = $"<i class=\"fa-regular fa-face-smile\" style=\"color: #ffffff;\"></i>&nbsp;Welcome , {usName}";
        login.HRef = "login_page.aspx";
    }
    void featuredproducts()
    {
        myconn();
        cmd = new SqlCommand("select * from product as p join brand as b on b.brand_id = p.brand_id where cat_id = '1'", conn);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {

            Rpt1.DataSource = ds;
            Rpt1.DataBind();
            // find the id of br bu copilet
        }
        else
        {
            Response.Write("check the error");
        }
    }
    //void productsofmen()
    //{
    //    myconn();
    //    cmd = new SqlCommand("select * from product where cat_id = '2'", conn);
    //    da = new SqlDataAdapter(cmd);
    //    ds = new DataSet();
    //    da.Fill(ds);

    //    if (ds.Tables[0].Rows.Count > 0)
    //    {
    //        Rpt2.DataSource = ds;
    //        Rpt2.DataBind();
    //    }
    //    else
    //    {
    //        Response.Write("check the error");
    //    }
    //}
    //void productsofwomen()
    //{
    //    myconn();
    //    cmd = new SqlCommand("select * from product where cat_id = '4'", conn);
    //    da = new SqlDataAdapter(cmd);
    //    ds = new DataSet();
    //    da.Fill(ds);

    //    if (ds.Tables[0].Rows.Count > 0)
    //    {
    //        Rpt4.DataSource = ds;
    //        Rpt4.DataBind();
    //    }
    //    else
    //    {
    //        Response.Write("check the error");
    //    }
    //}
    void newproducts()
    {
        myconn();
        cmd = new SqlCommand("select * from product as p join brand as b on b.brand_id = p.brand_id where cat_id = '2'", conn);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            Rpt3.DataSource = ds;
            Rpt3.DataBind();
        }
        else
        {
            Response.Write("check the error");
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        String usName = Session["usname"] != null ? Session["usname"].ToString() : "";
        String cusId = Session["cusId"] != null ? Session["cusId"].ToString() : "";
        if (!String.IsNullOrEmpty(usName))
        {
            loadUsName(usName);
        }
        if (!IsPostBack)
        {
            newproducts();
            featuredproducts();
            //productsofmen();
            //productsofwomen();
        }
    }
    protected void Rpt1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        String Id = e.CommandArgument.ToString();
        Response.Redirect("buyProduct.aspx?id=" + Id);

    }
    protected void Rpt2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        String Id = e.CommandArgument.ToString();
        Response.Redirect("buyProduct.aspx?id=" + Id);

    }
    protected void Rpt4_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        String Id = e.CommandArgument.ToString();
        Response.Redirect("buyProduct.aspx?id=" + Id);

    }
    protected void Rpt3_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        String Id = e.CommandArgument.ToString();
        Response.Redirect("buyProduct.aspx?id=" + Id);

    }
}