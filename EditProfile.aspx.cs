using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class EditProfile : System.Web.UI.Page
{

    // variable declaration
    string name, roll_number, department, semester, phone_number, email, state, distric, city, address, pincode;




    //sql session components
    static String myString = "server=Abhishek; Integrated Security=SSPI; database=tcp";
    SqlConnection con = new SqlConnection(myString);
    SqlCommand cmd;
    SqlDataReader rd;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userLoginID"] == null)
        {
            Response.Redirect("LoginPage.aspx?id=invalid_userProfile_edit");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // Assigning values to variables from texboxes
        name = SignNameTextbox.Text;
        roll_number = SignRegistrationNumber.Text;
        department = signdepartment.Text;
        semester = signsemester.Text;
        phone_number = SignPhoneNumber.Text;
        email = SignEmailText.Text;
        state = signState.Text;
        distric = signDistic.Text;
        city = signCity.Text;
        address = signAddress.Text;
        pincode = signPincode.Text;




        try
        {
            con.Open();
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "update sign set  name='"+name+"', roll_number='"+ roll_number+"', departmenet='"+department+"', semester='"+semester+"',phone_number='"+phone_number+"',email='"+email+"', state='"+state+"', district='"+distric+"',city='"+city+"',address='"+address+"', pincode='"+pincode+"' where loginid='"+Session["userLoginID"].ToString()+"' ";
            rd = cmd.ExecuteReader();
            con.Close();

            ClientScript.RegisterStartupScript(this.GetType(), "yourMessage", "alert(jkulugigigigg);", true); ;
            Response.Redirect("UserProfile.aspx?id=Edit_successfull");


        }
        catch (Exception ex)
        {
            var script = "alert(" + System.Web.HttpUtility.JavaScriptStringEncode("Id is already taken by someone else, please try another valid id                                                                                                          " + ex.Message, true) + ")";
            System.Web.UI.ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", script, true);
        }

    }
}