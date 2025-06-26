using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class USER_buyProduct : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;

    void mycon()
    {
        con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True\r\n");
        con.Open();
    }
    void loadUsName(String usName)
    {
        login.InnerHtml = $"<i class=\"fa-regular fa-face-smile\" style=\"color: #ffffff;\"></i>&nbsp;Welcome , {usName}";
        login.HRef = "login_page.aspx";
    }
    void featuredproducts()
    {
        mycon();
        cmd = new SqlCommand("select * from product as p join subcategory as sc on sc.sub_id = p.sub_id where p.cat_id = '1'", con);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            Rpt2.DataSource = ds;
            Rpt2.DataBind();
        }
        else
        {
            Response.Write("check the error");
        }
    }
    void loadProduct(String id)
    {
        mycon();
        cmd = new SqlCommand("select * from product as p join subcategory as sc on sc.sub_id = p.sub_id where product_id = @pr_id", con);
        cmd.Parameters.AddWithValue("@pr_id", id);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            rpt1.DataSource = ds;
            rpt1.DataBind();
        }
        con.Close();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        String usName = Session["usname"] != null ? Session["usname"].ToString() : "";
        String cusId = Session["cusId"] != null ? Session["cusId"].ToString() : "";
        if (!String.IsNullOrEmpty(usName))
        {
            loadUsName(usName);
        }

        String pr_id = Request.QueryString["Id"];

        featuredproducts();
        if (!String.IsNullOrEmpty(pr_id))
        {
            loadProduct(pr_id);
        }

    }
    protected void Rpt2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        String Id = e.CommandArgument.ToString();
        Response.Redirect("buyProduct.aspx?id=" + Id);
    }
    
    protected void rpt1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        String name = Session["usname"] != null ? Session["usname"].ToString() : "";
        String cusId = Session["cusId"] != null ? Session["cusId"].ToString() : "";
       
        if (e.CommandName == "buy")
        {
            if (String.IsNullOrEmpty(name))
            {
                Response.Redirect("login_page.aspx");
            }
            else
            {
                TextBox txtInput = (TextBox)e.Item.FindControl("TextBox1");
                DropDownList ddlList = (DropDownList)e.Item.FindControl("DropDownList1");
                Random r = new Random();
              
                String invoice = Session["invoice"] != null ? Session["invoice"].ToString() : r.Next(100000, 999999).ToString();
                ;


                int pr_id = Convert.ToInt32(e.CommandArgument);
                mycon();
                if (!String.IsNullOrEmpty(cusId) && txtInput.Text != null)
                {
                    cmd = new SqlCommand("insert into orderdetail values(@pr_id, @cus_id,@invoice, @si, @orDate, @qty)", con);
                    cmd.Parameters.AddWithValue("@pr_id", pr_id);
                    cmd.Parameters.AddWithValue("@cus_id", cusId);
                    cmd.Parameters.AddWithValue("@invoice", invoice);
                    cmd.Parameters.AddWithValue("@si", Convert.ToString(ddlList.SelectedValue));
                    cmd.Parameters.AddWithValue("@orDate", DateTime.Now);
                    cmd.Parameters.AddWithValue("@qty", Convert.ToInt32(txtInput.Text));
                    cmd.ExecuteNonQuery();
                    Response.Redirect("addressList.aspx");
                }
                con.Close();
            }
        }
    }
    public void buy_click(object sender, EventArgs e)
    {

    }
}