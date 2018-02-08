using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ContactUs : System.Web.UI.Page
{
    string name, roll_number, department, semester, phone_number, email, address;


    static String myString = "server=Abhishek; Integrated Security=SSPI; database=tcp";
    SqlConnection con = new SqlConnection(myString);
    SqlCommand cmd;
    SqlDataReader rd;


    protected void Page_Load(object sender, EventArgs e)
    {
        
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["userLoginID"] == null)
        {
            Response.Redirect("LoginPage.aspx?id=invalid_contact_details");
        }
        else
        {
            name = ContactNameTextbox.Text;
            roll_number = TextBox1.Text;
            department = DropDownList1.Text;
            phone_number = TextBox2.Text;
            email = ContactEmailText.Text;
            address = TextBox3.Text;



            try
            {
                con.Open();
                cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into contact_details (name,roll_number,departmenet,email,phone_number,query) values( '" + name + "', '" + roll_number + "','" + department + "','" + email + "','" + phone_number + "','" +address +"'";
                rd = cmd.ExecuteReader();
                con.Close();

                ClientScript.RegisterStartupScript(this.GetType(), "yourMessage", "alert(jkulugigigigg);", true); ;
                Response.Redirect("LoginPage.aspx?id=afterSignUp");


            }
            catch (Exception ex)
            {
                var script = "alert(" + System.Web.HttpUtility.JavaScriptStringEncode("Id is already taken by someone else, please try another valid id                                                                                                          " + ex.Message, true) + ")";
                System.Web.UI.ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", script, true);
            }

        }
    }
}