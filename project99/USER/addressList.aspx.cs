using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class addressList : System.Web.UI.Page
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

    void loadAddress(String cusId)
    {
        mycon() ;
        cmd = new SqlCommand("select * from address where cus_id = @cusId", con);
        cmd.Parameters.AddWithValue("@cusId", cusId);
        da = new SqlDataAdapter(cmd);   
        ds = new DataSet();
        da.Fill(ds);

        if(ds.Tables[0].Rows.Count > 0)
        {
            rpt1.DataSource = ds;
            rpt1.DataBind();
        }
        con.Close() ;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        String usName = Session["usname"] != null ? Session["usname"].ToString() : "";
        String cusId = Session["cusId"] != null ? Session["cusId"].ToString() : "";
       
        if (!String.IsNullOrEmpty(cusId))
        {
            loadAddress(cusId);
        }   

    }

    protected void rpt1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if(e.CommandName == "edit")
        {
            String addressId = e.CommandArgument.ToString();
            Response.Redirect($"address.aspx?id={addressId}");
        }

        if(e.CommandName == "delete")
        {
            String addressId = e.CommandArgument.ToString();

            mycon();
            cmd = new SqlCommand("delete from address where id = @id ",con);
            cmd.Parameters.AddWithValue("@id",addressId);
            cmd.ExecuteNonQuery();
            con.Close() ;
            Response.Redirect(Request.RawUrl);
        }

        if(e.CommandName == "select")
        {
            String invoice = "";
            String cusId = Session["cusId"] != null ? Session["cusId"].ToString() : "";
            String addressId = e.CommandArgument.ToString();
            mycon();
            // get latest invoice number
            cmd = new SqlCommand("select invoice from orderdetail where custid = @cusId order by orderdate desc", con);
            cmd.Parameters.AddWithValue("@cusId", cusId);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);

            if(ds.Tables[0].Rows.Count > 0)
            {
                invoice = ds.Tables[0].Rows[0]["invoice"].ToString();
            }

            // change address invoice number
            cmd = new SqlCommand("update address set invoice = @invoice where id = @id", con);
            cmd.Parameters.AddWithValue("@id",addressId);
            cmd.Parameters.AddWithValue("@invoice", invoice);
            cmd.ExecuteNonQuery();
            Session["invoice"] = invoice;

            mycon();
            if (!String.IsNullOrEmpty(invoice) && !String.IsNullOrEmpty(cusId))
            {
                cmd = new SqlCommand("select o.*,p.price from orderdetail as o join product as p on o.proid = p.product_id where o.custid = @cusId and o.invoice = @invoice", con);
                cmd.Parameters.AddWithValue("@cusId", cusId);
                cmd.Parameters.AddWithValue("@invoice", invoice);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
                    {
                        cmd = new SqlCommand("insert into Bill values(@ship_id,@cus_id,@pr_id,@size,@invoice,@qty,@price,@date_time)", con);
                        cmd.Parameters.AddWithValue("@ship_id", addressId);
                        cmd.Parameters.AddWithValue("@cus_id", cusId);
                        cmd.Parameters.AddWithValue("@pr_id", Convert.ToInt32(ds.Tables[0].Rows[i]["proid"]));
                        cmd.Parameters.AddWithValue("@size", ds.Tables[0].Rows[i]["size"]);
                        cmd.Parameters.AddWithValue("@invoice", invoice);
                        cmd.Parameters.AddWithValue("@qty", Convert.ToInt32(ds.Tables[0].Rows[i]["totalqty"]));
                        cmd.Parameters.AddWithValue("@price", Convert.ToInt32(ds.Tables[0].Rows[i]["price"]) * Convert.ToInt32(ds.Tables[0].Rows[i]["totalqty"]));
                        cmd.Parameters.AddWithValue("@date_time", DateTime.Now);
                        cmd.ExecuteNonQuery();
                    }
                    Response.Redirect("bill.aspx");
                }
            }

        }
    }

    protected void Button4_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("address.aspx");  
    }
}