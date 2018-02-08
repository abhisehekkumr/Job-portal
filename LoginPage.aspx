<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="panel panel-primary">
      <div class="panel-heading"><center><h1><strong>Login</strong></h1></center></div>
      <div class="panel-body">
      <center>    <asp:Label ID="loginsuccess" runat="server" Text="" ForeColor="#CC0000"></asp:Label></center>
      
      <form role="form">
      
      <div class="row" style="padding-top:50px;">
      </div>
      <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label7"   runat="server" Text="Login ID:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">           
        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Enter your Login ID"
            required ></asp:TextBox>   
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
                  </div>
      
      </div>



      
      <div class="row" style="padding-top:50px;">
    
      </div>
      
      <div class="row">
      
          <center><a href="ForgotPassword.aspx">Forgot Password</a></center>
      </div>

      <div class="row" style="padding-top:50px;">
    
      </div>
      <div class="row">  
      <center><asp:Button ID="Button1" runat="server" Text="Let me explore" 
              class="btn btn-success btn-lg" onclick="Button1_Click" /></center>        
           </div>
      </form>
      
      
      </div>
    </div>
</asp:Content>

