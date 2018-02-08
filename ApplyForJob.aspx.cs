using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class ApplyForJob : System.Web.UI.Page
{
    String file_name;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["userLoginID"] != null)
        {
            String myString = "server=Abhishek; Integrated Security=SSPI; database=tcp";
            SqlConnection con = new SqlConnection(myString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            SqlDataReader rd;
            cmd.Connection = con;
            cmd.CommandText = "select * from sign where loginid= '" + Session["userLoginID"].ToString() + "'";
            rd = cmd.ExecuteReader();
            if (rd.Read())
            {
                SignNameTextbox.Text = rd["name"].ToString();
                SignRegistrationNumber.Text = rd["roll_number"].ToString();
                signdepartment.Text = rd["departmenet"].ToString();
                signsemester.Text = rd["semester"].ToString();
                SignPhoneNumber.Text = rd["phone_number"].ToString();
                SignEmailText.Text = rd["email"].ToString();
                signState.Text = rd["state"].ToString();
                signDistic.Text = rd["district"].ToString();
                signCity.Text = rd["city"].ToString();
                signAddress.Text = rd["address"].ToString();
                signPincode.Text = rd["pincode"].ToString();
            }

            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (FileUploadResume.HasFile)
        {

            Regex myextension = new Regex(@"^.+\.(doc|docx|pdf|txt)");
            Match result = myextension.Match(FileUploadResume.FileName);
            if (result.Success)
            {
                FileUploadResume.SaveAs(Server.MapPath("Resumes/"+Page.Session["userLoginID"].ToString()+FileUploadResume.FileName));
                file_name = Page.Session["userLoginID"].ToString() + FileUploadResume.FileName;
            }
            else
            {
                Label22.Text = "only doc, pdf and txt files are allowed";
            }


            String name = SignNameTextbox.Text;
            String father_name = TextBox1.Text;
            String roll_number = SignRegistrationNumber.Text;
            String department = signdepartment.Text;
            String semester = signsemester.Text;
            String phone_number = SignPhoneNumber.Text;
            String email = SignEmailText.Text;
            String state = signState.Text;
            String district = signDistic.Text;
            String city = signCity.Text;
            String address = signAddress.Text;
            String pincode = signPincode.Text;
            String tength = TextBox2.Text;
            String twelth = TextBox3.Text;
            String semster_1 = TextBox4.Text;
            String semster_2 = TextBox5.Text;
            String semster_3 = TextBox6.Text;
            String semster_4 = TextBox7.Text;
            String semster_5 = TextBox8.Text;
            String uploadresume = file_name;


            try
            {
                String myString = "server=Abhishek; Integrated Security=SSPI; database=tcp";
                SqlConnection con = new SqlConnection(myString);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandText = "insert into candidates_for_jobs (name,father_name,roll_number,department,semester,phone__number,email,state,district,city,address,pincode,tength_marks,twelth_marks,semster_1,semster_2,semster_3,semster_4,semster_5,resume,job_id) values ('" + name + "','" + father_name + "','" + roll_number + "','" + department + "','" + semester + "','" + phone_number + "','" + email + "','" + state + "','" + district + "','" + city + "','" + address + "','" + pincode + "','" + tength + "','" + twelth + "','" + semster_1 + "','" + semster_2 + "','" + semster_3 + "','" + semster_4 + "','" + semster_5 + "','" + file_name + "','" + Request.QueryString["id"].ToString() + "')";
                SqlDataReader rd;
                rd = cmd.ExecuteReader();
                con.Close();
                Response.Redirect("Apply_for_job_success.aspx?id=successfully_applied");

            }
            catch (Exception ex)
            {
                var script = "alert(" + System.Web.HttpUtility.JavaScriptStringEncode("Already applied, but if you still want to apply again than please rename your resume to something different from the previous one !!                                                                                                          " + ex.Message, true) + ")";
                System.Web.UI.ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", script, true);
            }
        }




    }

}