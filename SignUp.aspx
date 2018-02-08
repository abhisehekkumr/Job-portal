<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div class="panel panel-primary">
      <div class="panel-heading"><center><h1><strong> Create Account</strong></h1></center></div>
      <div class="panel-body">
      <center>
      <asp:Label ID="idexits" runat="server" Text=""></asp:Label></center>
      
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
      <div class="row">
      <hr class="bg-danger" />
      <strong class="signup">Login Information</strong>
      </div>

    <div class="row" style="padding-top:50px;">
      </div>
      <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label7"   runat="server" Text="Login ID:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="SignLoginID" runat="server" class="form-control" placeholder="Enter your Professionanl Gmail ID"
            required ></asp:TextBox>  
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Invalid Login ID, Please use your Gmail ID" ControlToValidate="SignLoginID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC0000"></asp:RegularExpressionValidator> 
                
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Mendatory Field" ControlToValidate="SignLoginID" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  </div>
      
      </div>



       <div class="row" style="padding-top:50px;">
      </div>
      <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label8"   runat="server" Text="Password:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="signpassword" runat="server" class="form-control" placeholder="Enter your Password"
            required TextMode="Password"></asp:TextBox>   
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Mendatory Field" ControlToValidate="signpassword" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Maximum 16 and minimum 8 " ValidationExpression="^[a-zA-Z0-9\s]{8,16}$" ControlToValidate="signpassword" ForeColor="#CC0000"></asp:RegularExpressionValidator>
                  </div>
      
      </div>



       <div class="row" style="padding-top:50px;">
      </div>
      <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label9"   runat="server" Text="Re-Type Password:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="signrepassword" runat="server" class="form-control" placeholder="Re-Type your Password"
            required TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1"
                runat="server" ErrorMessage="Password doesn't match" ControlToValidate="signrepassword" ControlToCompare="signpassword" ForeColor="#CC0000"></asp:CompareValidator>   
                  </div>
      
      </div>




      <div class="row" style="padding-top:50px;">
    
      </div>
      



      <div class="row">  
      <center><asp:Button ID="Button1" runat="server" Text="Create new account" 
              class="btn btn-success btn-lg" onclick="Button1_Click" /></center>        
           </div>
      
      </form>
      
      
      
      
      </div>
    </div>
   
</asp:Content>

