<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Companies.aspx.cs" Inherits="Companies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<div class="panel panel-primary">
      <div class="panel-heading"><center><h1><strong>Table</strong></h1></center></div>
      <div class="panel-body table-responsive">


      
          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
              DataKeyNames="loginid" DataSourceID="SqlDataSource1">
              <Columns>
                  <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                  <asp:BoundField DataField="roll_number" HeaderText="roll_number" 
                      SortExpression="roll_number" />
                  <asp:BoundField DataField="departmenet" HeaderText="departmenet" 
                      SortExpression="departmenet" />
                  <asp:BoundField DataField="semester" HeaderText="semester" 
                      SortExpression="semester" />
                  <asp:BoundField DataField="phone_number" HeaderText="phone_number" 
                      SortExpression="phone_number" />
                  <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                  <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                  <asp:BoundField DataField="district" HeaderText="district" 
                      SortExpression="district" />
                  <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                  <asp:BoundField DataField="address" HeaderText="address" 
                      SortExpression="address" />
                  <asp:BoundField DataField="pincode" HeaderText="pincode" 
                      SortExpression="pincode" />
                  <asp:BoundField DataField="loginid" HeaderText="loginid" ReadOnly="True" 
                      SortExpression="loginid" />
                  <asp:BoundField DataField="password" HeaderText="password" 
                      SortExpression="password" />
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:tcpConnectionString2 %>" 
              SelectCommand="SELECT * FROM [sign]"></asp:SqlDataSource>


      </div>
      </div>
</asp:Content>

