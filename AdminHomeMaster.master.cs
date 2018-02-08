using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHomeMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] != null)
        {
            if (Request.QueryString["id"] != null)
            {
                if (Request.QueryString["id"].ToString() == "Login_success")
                {
                    login_logout.Text = "Logout";
                    myaccount_logout.Text = "Logout";
                    myaccont.Text = Session["name"].ToString();
                    Session.Add("login_logout", "Logout");


                }
            }

        }
        else
        {
            login_logout.Text = "Login";
            myaccount_logout.Text = "Login";
            myaccont.Text = "my account";
        }

    }
}
