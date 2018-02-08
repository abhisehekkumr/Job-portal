using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AdminJobs : System.Web.UI.Page
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
            String query = "delete from jobs where jid=" + Request.QueryString["del"].ToString();
            con.Open();
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = query;
            cmd.ExecuteReader();
            con.Close();
            Response.Redirect("AdminJobs.aspx?id=deletion_success");
        }

        if (Request.QueryString["id"] != null)
        {
            if (Request.QueryString["id"].ToString() == "deletion_success")
            {
                Label1.Text = "Deletion Successful";
            }

            if (Request.QueryString["id"].ToString() == "Add_job_success")
            {
                Label1.Text = "Job Added";
            }


            if (Request.QueryString["id"].ToString() == "edit_job_success")
            {
                Label1.Text = "Job Edit Successfull";
            }


        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("AddJobs.aspx?id=add_new_job");
    }
}