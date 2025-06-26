using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;

    private void mycon()
    {
        con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True\r\n");
        con.Open();
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            String edit = Request.QueryString["Edit"];
            mycon();
            if (!String.IsNullOrEmpty(edit))
            {
                cmd = new SqlCommand("select * from brand where brand_id = @id", con);
                cmd.Parameters.AddWithValue("@id", edit);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    TextBox1.Value = ds.Tables[0].Rows[0]["brand"].ToString();
                    DropDownList1.Text = ds.Tables[0].Rows[0]["status"].ToString();
                }
            }
            con.Close();
        }
    }

    protected void save(object sender, EventArgs e)
    {
        mycon();
        String edit = Request.QueryString["Edit"];

        if (!String.IsNullOrEmpty(edit))
        {
            cmd = new SqlCommand("update brand set brand = @brand, status = @status where brand_id = @id", con);
            cmd.Parameters.AddWithValue("@brand", TextBox1.Value);
            cmd.Parameters.AddWithValue("@status", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@id", edit);
            cmd.ExecuteNonQuery();

        }
        else
        {

            cmd = new SqlCommand("insert into brand values(@brand, @status)",con);
            cmd.Parameters.AddWithValue("@brand",TextBox1.Value);
            cmd.Parameters.AddWithValue("@status", DropDownList1.Text);
            cmd.ExecuteNonQuery();
            
        }
        con.Close();

        Response.Redirect("brandList.aspx");
    }
}