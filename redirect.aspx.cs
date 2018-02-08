using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class redirect : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.Session["mysession"] != null)
        {
            Response.Redirect("LoginPage.aspx?id=please_login");
        }

        if(Session["userLoginID"] != null)
        {
            Session.Abandon();
            Response.Redirect("LoginPAge.aspx?id=logout_successfull");
        }
        }


        }
    