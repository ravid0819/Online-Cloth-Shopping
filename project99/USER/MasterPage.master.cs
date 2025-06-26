using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class USER_MasterPage : System.Web.UI.MasterPage
{
    void loadUsName(String usName)
    {
        login.InnerHtml = $"<i class=\"fa-regular fa-face-smile\" style=\"color: #ffffff;\"></i>&nbsp;Welcome , {usName}";
        login.HRef = "login_page.aspx";
    }

    protected void Page_Load(object sender, EventArgs e)
    {

        String usName = Session["usname"] != null ? Session["usname"].ToString() : "";
        String cusId = Session["cusId"] != null ? Session["cusId"].ToString() : "";
        if (!String.IsNullOrEmpty(usName))
        {
            loadUsName(usName);
        }
    }
}
