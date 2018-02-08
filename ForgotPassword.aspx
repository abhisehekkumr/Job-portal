<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="panel panel-primary">
      <div class="panel-heading">Recover Password</div>
      <div class="panel-body">
      
       <div class="form-group  ">
    <div class="col-md-6">            
        <asp:Label ID="Label1"   runat="server" Text="Email ID:" 
            CssClass="lableSpacing"  ></asp:Label>    </div>
    <div class="col-md-6">              
        <asp:TextBox ID="SignEmailText" runat="server" class="form-control" placeholder="Enter your TPC rmail"
            required TextMode="Email" ></asp:TextBox> 
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invalid Email" ControlToValidate="SignEmailText" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#CC0000"></asp:RegularExpressionValidator> 
            
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Mendatory Field" ControlToValidate="SignEmailText" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                  </div>
           
      </div>

      <center><asp:Label ID="Label2" runat="server"></asp:Label></center>
      <div class="row" style="padding-top:50px;">
      </div>

      <div class"row">
      <center><asp:Button ID="Button1" runat="server" Text="Recover My Password" 
              class="btn btn-success btn-lg" onclick="Button1_Click" /></center>
      
      </div>
      </div>
    </div>

</asp:Content>

