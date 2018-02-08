﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userLoginID"] == null)
        {
            Response.Redirect("LoginPage.aspx?id=invalid_userProfile");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("EditProfile.aspx?id=Edit_my_profile");
    }
}