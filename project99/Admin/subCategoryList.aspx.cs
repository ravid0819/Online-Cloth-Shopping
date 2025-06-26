using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class subCategoryList : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;

    private void myCon()
    {
        con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True\r\n");
        con.Open();
    }

    private void loadSubcat()
    {
        myCon();
        cmd = new SqlCommand("select sc.sub_id,c.category,sc.subCategory,sc.status from subCategory as sc join category as c on sc.cat_id = c.cat_id", con);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);

        if(ds.Tables[0].Rows.Count > 0)
        {
            rpt1.DataSource = ds;
            rpt1.DataBind();
        }
        con.Close();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        loadSubcat();
    }

    protected void rpt1_ItemCommand(object source,RepeaterCommandEventArgs e)
    {
        String id = e.CommandArgument.ToString();

        myCon();
        cmd = new SqlCommand("delete from subCategory where sub_id = @id", con);
        cmd.Parameters.AddWithValue("@id", id);
        cmd.ExecuteNonQuery();
        con.Close();
        loadSubcat() ;
    }


}