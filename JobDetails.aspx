<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="JobDetails.aspx.cs" Inherits="JobDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div class="panel panel-primary">
      <div class="panel-heading">Panel with panel-primary class</div>
      <div class="panel-body">
      
      
      
      
      
      
      
      
      
      
          <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
              CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
              GridLines="None" Height="50px">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
              <EditRowStyle BackColor="#999999" />
              <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
              <Fields>
                  <asp:BoundField DataField="name" HeaderText="Job Title" SortExpression="name" />
                  <asp:BoundField DataField="department" HeaderText="Department" 
                      SortExpression="department" />
                  <asp:BoundField DataField="last_date" HeaderText="Last Date For Apply" 
                      SortExpression="last_date" />
                  <asp:BoundField DataField="designation" HeaderText="Designation" 
                      SortExpression="designation" />
                  <asp:BoundField DataField="salary" HeaderText="Salary" 
                      SortExpression="salary" />
                  <asp:BoundField DataField="experience" HeaderText="Experience" 
                      SortExpression="experience" />
                  <asp:BoundField DataField="company" HeaderText="Company" 
                      SortExpression="company" />
                  <asp:BoundField DataField="job_description" HeaderText="Job Description" 
                      SortExpression="job_description" />
              </Fields>
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
          </asp:DetailsView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:tcpConnectionString %>" 
              SelectCommand="SELECT [name], [department], [last_date], [designation], [salary], [experience], [company], [job_description] FROM [jobs] WHERE ([jid] = @jid)">
              <SelectParameters>
                  <asp:QueryStringParameter Name="jid" QueryStringField="id" Type="Int32" />
              </SelectParameters>
          </asp:SqlDataSource>
      

      <div class="row">
         
          <center>
               <asp:Button ID="Button1" runat="server" Text="Apply For This Job" 
                   class="btn btn-success btn-lg" onclick="Button1_Click" />
              </center>
      
      </div>

      </div>
    </div>

</asp:Content>

