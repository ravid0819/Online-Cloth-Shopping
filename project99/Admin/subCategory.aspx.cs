using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class subCategory : System.Web.UI.Page
{
   private SqlCommand cmd;
   private SqlConnection con;
   private SqlDataAdapter da;
   private DataSet ds;

    private void mycon()
    {
        con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True\r\n");
        con.Open();
    }

    private void dropdown()
    {
        cmd = new SqlCommand("select * from category", con);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "category";
            DropDownList2.DataValueField = "cat_id";

            DropDownList2.DataBind();
            DropDownList2.Items.Insert(0, "--Select Category--");

        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            mycon();

            String edit = Request.QueryString["Edit"];
            
            dropdown();

            if (!String.IsNullOrEmpty(edit)) { 

                cmd = new SqlCommand("select * from subCategory where sub_id = @id ", con);
                cmd.Parameters.AddWithValue("@id", edit);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);

                if(ds.Tables[0].Rows.Count > 0)
                {
                    TextBox1.Value = ds.Tables[0].Rows[0]["subCategory"].ToString();
                    DropDownList2.SelectedValue = ds.Tables[0].Rows[0]["cat_id"].ToString();
                    DropDownList1.Text = ds.Tables[0].Rows[0]["status"].ToString();
                }
            }
            con.Close();
        }
    }

    protected void save(object sender, EventArgs e)
    {
        String edit = Request.QueryString["Edit"];
        mycon();

        if (!String.IsNullOrEmpty(edit))
        {
            cmd = new SqlCommand("update subCategory set subCategory = @subcat,cat_id = @catid, status = @status where sub_id = @id ", con);
            cmd.Parameters.AddWithValue("@subcat", TextBox1.Value);
            cmd.Parameters.AddWithValue("@catid", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@status", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@id", edit);
            cmd.ExecuteNonQuery();
            
        }
        else
        {
            cmd = new SqlCommand("insert into subCategory values(@subCat,@cat_id,@status)", con);
            cmd.Parameters.AddWithValue("@subCat", TextBox1.Value);
            cmd.Parameters.AddWithValue("@cat_id", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@status", DropDownList1.Text);
            cmd.ExecuteNonQuery();
        }
        con.Close();
        Response.Redirect("subCategoryList.aspx");
    }
}