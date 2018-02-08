<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHomeMaster.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row" style="padding-top:50px;">
    

      </div>
      <div class="row" style="padding-top:50px;">
    
      </div>
  <div class="panel panel-primary">

      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

      <div class="panel-heading"><center><h1>Admin Login</h1></center></div>
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



      
      
      

      <div class="row" style="padding-top:40px;">
    
      </div>

      <div class="row">  
      <center>
          <asp:Button ID="Button1" runat="server" Text="Let me Login" 
              class="btn btn-success btn-lg" onclick="Button1_Click"  /></center>        
           </div>
      </form>
      
      
      </div>
    </div>
</asp:Content>

