using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class AddJobs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String myString = "server=Abhishek; Integrated Security=SSPI; database=tcp";
        SqlConnection con = new SqlConnection(myString);
        SqlCommand cmd;
        SqlDataReader rd;

        try
        {

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
            cmd.CommandText = "insert into jobs(name,department,last_date,designation,salary,experience,company,job_description)values('" + name + "','"+department+"','"+last_date+"','"+designation+"','"+salary+"','"+experience+"','"+company+"','"+job_description+"')";
            rd = cmd.ExecuteReader();
            con.Close();

            ClientScript.RegisterStartupScript(this.GetType(), "yourMessage", "alert(jkulugigigigg);", true);
            Response.Redirect("AdminJobs.aspx?id=Add_job_success");
        }
        catch (Exception ex)
        {
            var script = "alert(" + System.Web.HttpUtility.JavaScriptStringEncode("Cannot edit jobs because there is problem at backhand                                                                                                         " + ex.Message, true) + ")";
            System.Web.UI.ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", script, true);
        }
    }
}