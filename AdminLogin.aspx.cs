using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] != null)
        {
            if (Session["login_logout"] != null)
            {
                if (Session["login_logout"].ToString() == "Logout")
                {
                    Session.Abandon();
                    loginsuccess.Text = "Successfully Logged Off";
                }
                else
                {
                    loginsuccess.Text = "";
                }
            }
        }


        if (Request.QueryString["id"] != null)
        {
            if (Request.QueryString["id"].ToString() == "invalid_access")
            {
                loginsuccess.Text = "Please Login Page";

            }


            if (Request.QueryString["id"].ToString() == "invalid_access_id") ;
            {
                loginsuccess.Text = "Invalid Access";
            }
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String myString = "server=Abhishek; Integrated Security=SSPI; database=tcp";
        SqlConnection con = new SqlConnection(myString);
        SqlCommand cmd;
        SqlDataReader rd;
        con.Open();
        cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "select Password from Admin_login where Name= '" + TextBox4.Text + "'";
        rd = cmd.ExecuteReader();

        if (rd.Read())
        {
            string spassword = rd["Password"].ToString();
            if (spassword == signpassword.Text)
            {
                Page.Session.Add("Admin", TextBox4.Text);
                Session.Timeout = 40;
                rd.Close();
                con.Close();


                con.Open();
                SqlDataReader sreder;
                SqlCommand cd = new SqlCommand();
                cd.Connection = con;
                cd.CommandText = "select id from Admin_login where Name='" + TextBox4.Text + "'";
                sreder = cd.ExecuteReader();
                if (sreder.Read())
                {
                    Page.Session.Add("name", sreder["id"].ToString()); 
                    Response.Redirect("AdminHome.aspx?id=Login_success");
                }
            }
            else
            { Label1.Text = "Invalid"; }
        }
    }
}