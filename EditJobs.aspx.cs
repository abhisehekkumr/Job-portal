using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class EditJobs : System.Web.UI.Page
{

   
    String query;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["id"] != null)
        {
            if (Request.QueryString["id"].ToString() == "cannot_edit")
            {
                Label9.Text = "Cannot Edit";
            }
        }

    String myString = "server=Abhishek; Integrated Security=SSPI; database=tcp";
    SqlConnection con = new SqlConnection(myString);
    SqlCommand cmd;
    SqlDataReader rd;

        query = Request.QueryString["edit"].ToString();
        if (Request.QueryString["edit"] != null)
        {
            try
            {
                con.Open();
                cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "select * from jobs where jid=" + Request.QueryString["edit"].ToString();
                rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    SignNameTextbox.Text = rd["name"].ToString();
                    signdepartment.Text = rd["department"].ToString();
                    TextBox1.Text = rd["last_date"].ToString();
                    TextBox2.Text = rd["designation"].ToString();
                    TextBox3.Text = rd["salary"].ToString();
                    TextBox4.Text = rd["experience"].ToString();
                    TextBox5.Text = rd["company"].ToString();
                    TextBox6.Text = rd["job_description"].ToString();
                }
                con.Close();

                ClientScript.RegisterStartupScript(this.GetType(), "yourMessage", "alert(jkulugigigigg);", true);
            }
            catch (Exception ex)
            {
                var script = "alert(" + System.Web.HttpUtility.JavaScriptStringEncode("Cannot edit jobs because there is problem at backhand                                                                                                         " + ex.Message, true) + ")";
                System.Web.UI.ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", script, true);
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (Request.QueryString["edit"] != null)
        {
            String myString = "server=Abhishek; Integrated Security=SSPI; database=tcp";
            SqlConnection con = new SqlConnection(myString);
            SqlCommand cmd;
            SqlDataReader rd;

            String name = SignNameTextbox.Text;
            String department = signdepartment.Text;
            String last_date = TextBox1.Text;
            String designation = TextBox2.Text;
            String salary = TextBox3.Text;
            String experience = TextBox4.Text;
            String company = TextBox5.Text;
            String job_description = TextBox6.Text;

            con.Open();
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "update jobs set name='" + name + "',department='" + department + "',last_date='" + last_date + "',designation='" + designation + "',salary='" + salary + "',experience='" + experience + "',company='" + company + "',job_description='" + job_description + "' where jid=" + Request.QueryString["edit"].ToString() + "";
            rd = cmd.ExecuteReader();
            con.Close();
            Response.Redirect("AdminJobs.aspx?id=edit_job_success");

        }
}
}