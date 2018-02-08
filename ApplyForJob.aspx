<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ApplyForJob.aspx.cs" Inherits="ApplyForJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



 <div class="panel panel-primary">
      <div class="panel-heading"><center><h1>Apply For Job</h1></center></div>
      <div class="panel-body">
      
      
      
      <form role="form">

      <div class="row" style="padding-top:40px;">
    
      </div>

      <div class="row signup">
      <strong><b>Basic Information</b></strong>
      </div>
      <div class="row" style="padding-top:50px;">
      </div>
      <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label1"   runat="server" Text="Name:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="SignNameTextbox" runat="server" class="form-control" placeholder="Enter your name"
            required ></asp:TextBox>   
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only Chareacters are allowed" ControlToValidate="SignNameTextbox" ValidationExpression="[a-zA-Z ]*$" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Medatory Field" ControlToValidate="SignNameTextbox" ForeColor="#CC0000"></asp:RequiredFieldValidator>
      
                 
                  </div>
          
      </div>












       <div class="row" style="padding-top:50px;">
      </div>
      <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label7"   runat="server" Text="Father's Name:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter your Father's name"
            required ></asp:TextBox>   
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Only Chareacters are allowed" ControlToValidate="SignNameTextbox" ValidationExpression="[a-zA-Z ]*$" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Medatory Field" ControlToValidate="SignNameTextbox" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  </div>
          
      </div>








      

      
      <div class="row" style="padding-top:40px;">
    
      </div>

       <div class="form-group">
       <div class="col-md-6">            
        <asp:Label ID="Label6"   runat="server" Text="Board Registration Number:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="SignRegistrationNumber" runat="server" class="form-control" placeholder="Enter your registration number"
            required TextMode="Number"></asp:TextBox>  
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Only 12 digits are allowed, Please check your roll number" ControlToValidate="SignRegistrationNumber" ValidationExpression="^[0-9]{12}$" ForeColor="#CC0000"></asp:RegularExpressionValidator> 
                 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Medatory Field" ControlToValidate="SignRegistrationNumber" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  </div>
      
      </div>


      <div class="row" style="padding-top:40px;">
    
      </div>
     

       <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label2"   runat="server" Text="Department:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
         
            
        <asp:DropDownList ID="signdepartment" runat="server" class="form-control">

         <asp:ListItem Selected="True">Computer Science</asp:ListItem>
                      <asp:ListItem>Information Technology</asp:ListItem>
                      <asp:ListItem>Mechanical </asp:ListItem>
                      <asp:ListItem>Civil</asp:ListItem>
                      <asp:ListItem>Electrical</asp:ListItem>
                      <asp:ListItem>Electronic & Communication</asp:ListItem>
                      <asp:ListItem>Architecuture</asp:ListItem>
                 
        </asp:DropDownList>
             
               </div>
      
      </div>





      <div class="row" style="padding-top:40px;">
    
      </div>
     

       <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label10"   runat="server" Text="Semester:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
         
            
        <asp:DropDownList ID="signsemester" runat="server" class="form-control" >

         <asp:ListItem Selected="True">1</asp:ListItem>
                      <asp:ListItem>2</asp:ListItem>
                      <asp:ListItem>3 </asp:ListItem>
                      <asp:ListItem>4</asp:ListItem>
                      <asp:ListItem>5</asp:ListItem>
                      <asp:ListItem>6</asp:ListItem>
                 
        </asp:DropDownList>
             
               </div>
      
      </div>



      
      <div class="row" style="padding-top:40px;">
    
      </div>

      
       <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label3"   runat="server" Text="Phone number:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="SignPhoneNumber" runat="server" class="form-control" placeholder="Enter your Phone number"
            required TextMode="Number" ></asp:TextBox>  
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid Phone Number" ValidationExpression="^[7-9][0-9]{9}$" ControlToValidate="SignPhoneNumber" ForeColor="#CC0000"></asp:RegularExpressionValidator> 
               
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Mendatory Field" ControlToValidate="SignPhoneNumber" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </div>
      
      </div>

          <div class="row" style="padding-top:50px;">
      </div>
       <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label5"   runat="server" Text="Email ID:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="SignEmailText" runat="server" class="form-control" placeholder="Enter your Email"
            required TextMode="Email" ></asp:TextBox> 
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invalid Email" ControlToValidate="SignEmailText" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC0000"></asp:RegularExpressionValidator> 
            
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Mendatory Field" ControlToValidate="SignEmailText" ForeColor="#CC0000"></asp:RequiredFieldValidator>
             
               </div>
      
      </div>

      <div class="row" style="padding-top:50px;">
      </div>


      <hr />
  <div class="row">
     <strong class="signup">Address Information</strong>
  </div>
  <div class="row" style="padding-top:50px;">
      </div>

      <div class="form-group">
      <div class="col-md-6"><asp:Label ID="Label4"   runat="server" Text="State:" 
            CssClass="lableSpacing"  ></asp:Label></div>
      <div class="col-md-6">
       <asp:TextBox ID="signState" runat="server" class="form-control" placeholder="Enter your State"
            required ></asp:TextBox>
            
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Mendatory Field" ControlToValidate="signState" ForeColor="#CC0000"></asp:RequiredFieldValidator>
      </div>
      
      </div>


      <div class="row" style="padding-top:50px;">
      </div>
        <div class="form-group">
      <div class="col-md-6"><asp:Label ID="Label11"   runat="server" Text="Distric:" 
            CssClass="lableSpacing"  ></asp:Label></div>
      <div class="col-md-6">
       <asp:TextBox ID="signDistic" runat="server" class="form-control" placeholder="Enter your Distric"
            required ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8"
                runat="server" ErrorMessage="Mendatory Field" ControlToValidate="signDistic" ForeColor="#CC0000"></asp:RequiredFieldValidator>
      </div>
      
      </div>




      <div class="row" style="padding-top:50px;">
      </div>
       <div class="form-group">
      <div class="col-md-6"><asp:Label ID="Label12"   runat="server" Text="City:" 
            CssClass="lableSpacing"  ></asp:Label></div>
      <div class="col-md-6">
       <asp:TextBox ID="signCity" runat="server" class="form-control" placeholder="Enter your City"
            required ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9"
                runat="server" ErrorMessage="Mendatory Field" ControlToValidate="signCity" ForeColor="#CC0000"></asp:RequiredFieldValidator>
      </div>
      
      </div>


      <div class="row" style="padding-top:50px;">
      </div>
        <div class="form-group">
      <div class="col-md-6"><asp:Label ID="Label13"   runat="server" Text="Address:" 
            CssClass="lableSpacing"  ></asp:Label></div>
      <div class="col-md-6">
       <asp:TextBox ID="signAddress" runat="server" class="form-control" placeholder="Enter your Address"
            required TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10"
                runat="server" ErrorMessage="Mendatoty Field" ControlToValidate="signAddress" ForeColor="#CC0000"></asp:RequiredFieldValidator>
      </div>
      
      </div>


      

      <div class="row" style="padding-top:50px;">
      </div>
        <div class="form-group">
      <div class="col-md-6"><asp:Label ID="Label14"   runat="server" Text="Pincode:" 
            CssClass="lableSpacing"  ></asp:Label></div>
      <div class="col-md-6">
       <asp:TextBox ID="signPincode" runat="server" class="form-control" placeholder="Enter your Address"
            required TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11"
                runat="server" ErrorMessage="Mendatoty Field" ControlToValidate="signPincode" ForeColor="#CC0000"></asp:RequiredFieldValidator>
     
     <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Only 6 digits are allowed" ControlToValidate="signPincode" ForeColor="#CC0000" ValidationExpression="^[0-9]{6}$"></asp:RegularExpressionValidator>
      </div>
      
      </div>



        <div class="row" style="padding-top:50px;">
      </div>
     




      <div class="row" style="padding-top:50px;">
    
      </div>
      

      <hr />
      <div class="row">
     <strong class="signup">Qualification Information</strong>
  </div>

  <div class="row" style="padding-top:40px;">
    
      </div>
  
      <div class="row">
      <center><asp:Label ID="Label20" runat="server" 
              Text="You have to enter only 2 digit number for example if you have 77.45% than write 78 without % sign" 
              ForeColor="#009933"></asp:Label></center>
      </div>


   <div class="row" style="padding-top:40px;">
    
      </div>   
       <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label8"   runat="server" Text="Persantage in 10TH:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter Persantage in 10th"
            required TextMode="Number" ></asp:TextBox>  
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Invalid Phone Number" ValidationExpression="^[0-9]{2}$" ControlToValidate="TextBox2" ForeColor="#CC0000"></asp:RegularExpressionValidator> 
               
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Mendatory Field" ControlToValidate="TextBox2" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </div>
      
      </div>









      <div class="row" style="padding-top:40px;">
    
      </div>

      
       <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label9"   runat="server" Text="Persantage in 12TH:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Enter Persantage in 12th (Optional)"
             TextMode="Number" ></asp:TextBox>  
        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="Invalid Number" ValidationExpression="^[0-9]{2}$" ControlToValidate="TextBox3" ForeColor="#CC0000"></asp:RegularExpressionValidator> 
               
                </div>
      
      </div>









      <div class="row" style="padding-top:40px;">
    
      </div>   
       <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label15"   runat="server" Text="Persantage in First Sester:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Enter Persantage in 1st Semester (Optional)"
             TextMode="Number" ></asp:TextBox>  
        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="Invalid Number" ValidationExpression="^[0-9]{2}$" ControlToValidate="TextBox4" ForeColor="#CC0000"></asp:RegularExpressionValidator> 
                </div>
      
      </div>






       <div class="row" style="padding-top:40px;">
    
      </div>   
       <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label16"   runat="server" Text="Persantage in Second Sester:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Enter Persantage in 2st Semester (Optional)"
             TextMode="Number" ></asp:TextBox>  
        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ErrorMessage="Invalid Number" ValidationExpression="^[0-9]{2}$" ControlToValidate="TextBox5" ForeColor="#CC0000"></asp:RegularExpressionValidator> 
                </div>
      
      </div>







       <div class="row" style="padding-top:40px;">
    
      </div>   
       <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label17"   runat="server" Text="Persantage in Third Sester:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Enter Persantage in 3st Semester (Optional)"
             TextMode="Number" ></asp:TextBox>  
        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="Invalid Number" ValidationExpression="^[0-9]{2}$" ControlToValidate="TextBox6" ForeColor="#CC0000"></asp:RegularExpressionValidator> 
                </div>
      
      </div>







       <div class="row" style="padding-top:40px;">
    
      </div>   
       <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label18"   runat="server" Text="Persantage in Fourth Sester:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="TextBox7" runat="server" class="form-control" placeholder="Enter Persantage in 4st Semester (Optional)"
             TextMode="Number" ></asp:TextBox>  
        <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ErrorMessage="Invalid Number" ValidationExpression="^[0-9]{2}$" ControlToValidate="TextBox7" ForeColor="#CC0000"></asp:RegularExpressionValidator> 
                </div>
      
      </div>







        <div class="row" style="padding-top:40px;">
    
      </div>   
       <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label19"   runat="server" Text="Persantage in Fifth Sester:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="TextBox8" runat="server" class="form-control" placeholder="Enter Persantage in 5st Semester (Optional)"
             TextMode="Number" ></asp:TextBox>  
        <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ErrorMessage="Invalid Number" ValidationExpression="^[0-9]{2}$" ControlToValidate="TextBox8" ForeColor="#CC0000"></asp:RegularExpressionValidator> 
                </div>
      
      </div>










        <div class="row" style="padding-top:40px;">
    
      </div>   
       <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label21"   runat="server" Text="Upload Resume:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:FileUpload ID="FileUploadResume" runat="server" />
          <asp:Label ID="Label22" runat="server" ForeColor="#CC0000"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Mendatory Field" ControlToValidate="FileUploadResume" ForeColor="#CC0000"></asp:RequiredFieldValidator>


                </div>
      
      </div>





      <div class="row" style="padding-top:50px;">
    
      </div>

      <div class="row">  
      <center>
          <asp:Button ID="Button1" runat="server" Text="Apply Now" 
              class="btn btn-success btn-lg" onclick="Button1_Click"  /></center>        
           </div>
      
      </form>
      
      
      </div>
    </div>
</asp:Content>

