using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;

public partial class ForgotPassword : System.Web.UI.Page
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
            con.Open();
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select password from sign where loginid='"+SignEmailText+"'";
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                String password = rd["password"].ToString();
                String mailid = rd["email"].ToString();


                SendMail(password, mailid);
            }
            else
            {
                Label2.Text = "Please Enter correct ID";
            }
            con.Close();

            ClientScript.RegisterStartupScript(this.GetType(), "yourMessage", "alert(jkulugigigigg);", true); ;
            Response.Redirect("LoginPage.aspx?id=afterSignUp");


        }
        catch (Exception ex)
        {
            var script = "alert(" + System.Web.HttpUtility.JavaScriptStringEncode("Cannot recover your Password                                                                                                         " + ex.Message, true) + ")";
            System.Web.UI.ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", script, true);
        }
    }


    public void SendMail(String password, String mailid)
    {
        try
        {
            MailAddress to = new MailAddress(mailid);
            MailAddress from = new MailAddress("TCP Job Portal");
            MailMessage msg = new MailMessage(from, to);
            msg.Subject = "Password Recover";
            msg.Body = "<b>Password Is:</b>" + password;
            msg.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("localhost", 25);
            client.Send(msg);
            Label2.Text = "Your password has been sent to your mail ID" + mailid;
        }
        catch (Exception ex)
        {

            var script = "alert(" + System.Web.HttpUtility.JavaScriptStringEncode("Id is already taken by someone else, please try another valid id                                                                                                          " + ex.Message, true) + ")";
            System.Web.UI.ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", script, true);
        }
    }
}