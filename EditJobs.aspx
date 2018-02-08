<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHomeMaster.master" AutoEventWireup="true" CodeFile="EditJobs.aspx.cs" Inherits="EditJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row" style="padding-top:40px;">
    
      </div>
       <div class="row" style="padding-top:40px;">
    
      </div>

      <div class="panel panel-primary">
      <div class="panel-heading">Add New Job</div>
      <div class="panel-body">
      
      <div class="row">
          <asp:Label ID="Label9" runat="server" Text="" ForeColor="#CC0000"></asp:Label>
      
      </div>

        <div class="row" style="padding-top:50px;">
      </div>
      <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label1"   runat="server" Text="Name:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="SignNameTextbox" runat="server" class="form-control" placeholder="Enter job title"
            required ></asp:TextBox>   
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only Chareacters are allowed" ControlToValidate="SignNameTextbox" ValidationExpression="[a-zA-Z ]*$" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Medatory Field" ControlToValidate="SignNameTextbox" ForeColor="#CC0000"></asp:RequiredFieldValidator>
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







        <div class="row" style="padding-top:50px;">
      </div>
      <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label3"   runat="server" Text="Last Date for Apply:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter Last Date"
            required ></asp:TextBox>   
       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Medatory Field" ControlToValidate="TextBox1" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  </div>
          
      </div>






        <div class="row" style="padding-top:50px;">
      </div>
      <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label4"   runat="server" Text="Designation:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter job Designation"
            required ></asp:TextBox>   
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Only Chareacters are allowed" ControlToValidate="TextBox2" ValidationExpression="[a-zA-Z ]*$" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Medatory Field" ControlToValidate="TextBox2" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  </div>
          
      </div>





        <div class="row" style="padding-top:50px;">
      </div>
      <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label5"   runat="server" Text="Salary:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Enter job salary"
            required TextMode="Number"></asp:TextBox>   
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Medatory Field" ControlToValidate="TextBox3" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  </div>
          
      </div>






        <div class="row" style="padding-top:50px;">
      </div>
      <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label6"   runat="server" Text="Experience:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Enter experience for job"
            required ></asp:TextBox>   
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Only Chareacters are allowed" ControlToValidate="TextBox4" ValidationExpression="[a-zA-Z ]*$" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Medatory Field" ControlToValidate="TextBox4" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  </div>
          
      </div>







        <div class="row" style="padding-top:50px;">
      </div>
      <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label7"   runat="server" Text="Company:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Enter company name"
            required ></asp:TextBox>   
        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="Only Chareacters are allowed" ControlToValidate="TextBox5" ValidationExpression="[a-zA-Z ]*$" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Medatory Field" ControlToValidate="TextBox5" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  </div>
          
      </div>





        <div class="row" style="padding-top:50px;">
      </div>
      <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label8"   runat="server" Text="Description:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="TextBox6" runat="server" class="form-control" placeholder="Enter descriptions for jobs"
            required TextMode="MultiLine"></asp:TextBox>   
        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="Only Chareacters are allowed" ControlToValidate="TextBox6" ValidationExpression="[a-zA-Z ]*$" ForeColor="#CC0000"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Medatory Field" ControlToValidate="TextBox6" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  </div>
          
      </div>

      <div class="row" style="padding-top:50px;">
          
      </div>
      <div class="row" style="padding-top:50px;">
      </div>
      <div class="row">
      <center><asp:Button ID="Button1" runat="server" Text="Edit Job" 
              class="btn btn-success btn-lg" onclick="Button1_Click" /></center>
      </div>

      </div>
    </div>
</asp:Content>

