using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mysession"] != null)
        {
            if (Session["mysession"].ToString() == "Login")
            {
                loginsuccess.Text = "Please Login";
                Session.Abandon();
            }
        }


        if (Session["userLoginID"] != null)
        {
            Session.Abandon();
            Page.Session.Add("logout_session","Abhishek kumar this will work");
            Response.Redirect("Home.aspx?id=logout_successfull_abhishek");
        }
      
        if (Request.QueryString["id"] != null)
        {
            if (Request.QueryString["id"].ToString() == "afterSignUp")
            {
                loginsuccess.Text = "Your account has been successfully created please login !!!!";
            }
            else
            {
                loginsuccess.Text = "Opppppsssss!!!";
            }



            if (Request.QueryString["id"] == "abhishek")
            {
                loginsuccess.Text = "You have successfully logged off";
            }


            if (Request.QueryString["id"] == "cannot_access_companies")
            {
                loginsuccess.Text = "You have to login first to access companies details";
            }


            if (Request.QueryString["id"] == "logged_out_Success")
            {
                loginsuccess.Text = "You have successfully Logged Out";
                Page.Session.Abandon();
            }

            if (Request.QueryString["id"] == "abhishek")
            {
                loginsuccess.Text = "You have successfully logged off";
                Page.Session.Abandon();
                Session.Abandon();
            }

            if (Request.QueryString["id"] == "logout_successfull")
            {
                loginsuccess.Text = "Logged out";

            }
          

            if (Request.QueryString["id"] == "invalid_userProfile")
            {
                loginsuccess.Text = "Please Login first to view to have access to user profile";
            }



            if (Request.QueryString["id"] == "invalid_userProfile_edit")
            {
                loginsuccess.Text = "Please Login first to view to have access to user Edit oprtion";
            }

            if (Request.QueryString["id"] == "invalid_contact_details")
            {
                loginsuccess.Text = "Please Login first to upload contact details";
            }

            if (Request.QueryString["id"] == "please_login")
            {
                loginsuccess.Text = "Ready to Explor";
            }

            if (Request.QueryString["id"] == "invalid_company_access")
            {
                loginsuccess.Text = "Please Login to have access to company details";
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
            cmd.CommandText = "select password from sign where loginid= '" + TextBox4.Text + "'";
            rd = cmd.ExecuteReader();


            if (rd.Read())
            {
                string spassword = rd["password"].ToString();
                if (spassword == signpassword.Text)
                {
                    
                    Page.Session.Add("userLoginID", TextBox4.Text);
                    rd.Close();
                    con.Close();

                    con.Open();
                    SqlDataReader sreder;
                    SqlCommand cd = new SqlCommand();
                    cd.Connection = con;
                    cd.CommandText = "select name from sign where loginid='" + TextBox4.Text + "'";
                    sreder = cd.ExecuteReader();

                    if (sreder.Read())
                    {
                        Page.Session.Add("name", sreder["name"]);
                    }
                    
                    
                    
                    
                    Page.Session.Timeout = 5;
                    Response.Redirect("Home.aspx?id=success");
                }
                else
                {
                    loginsuccess.Text = "Incorrect Password";
                }
            }
            else
            {
                loginsuccess.Text = "Cannot Login";
            }
            con.Close();


    }

 
}