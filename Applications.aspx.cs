using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Applications : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Admin"] == null)
        {
            Response.Redirect("AdminLogin.aspx?id=invalid_access");
        }


        if (Request.QueryString["del"] != null)
        {
            String myString = "server=Abhishek; Integrated Security=SSPI; database=tcp";
            SqlConnection con = new SqlConnection(myString);
            SqlCommand cmd;
            SqlDataReader rd;
            con.Open();
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "delete from candidates_for_jobs where cid=" + Request.QueryString["del"].ToString();
            rd = cmd.ExecuteReader();
            con.Close();

            Response.Redirect("Applications.aspx?id=Application_deleted");
        }

        if (Request.QueryString["id"] != null)
        {
            if (Request.QueryString["id"].ToString() == "Application_deleted")
            {
                Label1.Text = "Candidate has been removed from job list";
            }
        }
    }
}