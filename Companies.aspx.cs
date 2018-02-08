using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Companies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mysession"] != null)
        {
            Response.Redirect("LoginPage.aspx?id=invalid_company_access");
        }

        if (Session["userLoginID"] == null)
        {
            Response.Redirect("LoginPage.aspx?id=invalid_company_access");
        }
    }
}