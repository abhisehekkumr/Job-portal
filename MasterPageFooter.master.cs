using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageFooter : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Page.Session["userLoginID"] == null)
        {
            myaccount_logout.Text = "Login";
           
        }
      


        if (Session["logout_session"] != null)
        {
            myaccont.Text = "my account";
            login_logout.Text = "Login";
            sign.Text = "Sign Up";
            Session.Abandon();
            Response.Redirect("LoginPage.aspx?id=abhishek");
        }


        if (Session["userLoginID"] != null)
        {
            myaccont.Text = Session["name"].ToString();
            login_logout.Text = "Logout";
            sign.Text = "Jobs";
            myaccount_logout.Text = "Login";
        }



        if (Request.QueryString["id"] != null)
        {
            if (Request.QueryString["id"] == "success")
            {
                if (Session["name"] != null)
                {
                    myaccont.Text = Session["name"].ToString();

                }

                if (Session["userLoginID"] != null)
                {
                    login_logout.Text = "Logout";
                    sign.Text = "Jobs";
                }


            }
        }
    }
}
