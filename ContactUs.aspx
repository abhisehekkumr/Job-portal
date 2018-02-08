<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 191px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div class="row"></div>

<div class="row">  
<div class="panel panel-primary">
      <div class="panel-heading"><h1> <center><strong>Contact Us</strong></center></h1></div>
      <div class="panel-body">
      
      
      <form>

      <div class="row" style="padding-top:50px;">
    
      </div>
      
      <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label1"   runat="server" Text="Name:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="ContactNameTextbox" runat="server" class="form-control" placeholder="Enter your name"
            required ></asp:TextBox>   
                  </div>
      
      </div>
            <div class="row" style="padding-top:50px;">
    
      </div>

      <div class="form-group">
       <div class="col-md-6">            
        <asp:Label ID="Label6"   runat="server" Text="Roll Number:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter your Roll number"
            required ></asp:TextBox>   
                  </div>
      
      </div>
      
      <div class="row" style="padding-top:50px;">
    
      </div>
     

     <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label5"   runat="server" Text="Department:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
         
            
        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control">

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
        <asp:Label ID="Label2"   runat="server" Text="Email ID:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="ContactEmailText" runat="server" class="form-control" placeholder="Enter your Email"
            required TextMode="Email" ></asp:TextBox>  
            
       
             
               </div>
      
      </div>

      
      <div class="row" style="padding-top:50px;">
    
      </div>

      
       <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label3"   runat="server" Text="Phone number:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter your Phone number"
            required TextMode="Number" ></asp:TextBox>   
                </div>
      
      </div>

      
      <div class="row" style="padding-top:50px;">
    
      </div>

        <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label4"   runat="server" Text="Query:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Enter your Phone query"
            required TextMode="MultiLine" ></asp:TextBox>   
                 </div>
      
      </div>




     <div class="row" style="padding-top:50px;">
    
      </div>
      
      <div class="row" style="padding-top:50px;">
    
      </div>


      <div class=row">  
      <center><asp:Button ID="Button1" runat="server" Text="Submit" 
              class="btn btn-success btn-lg" onclick="Button1_Click" /></center>        
           </div>
      
      </form>
      
      
      </div>
    </div>

    




</div>
</asp:Content>

