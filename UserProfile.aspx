<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="UserProfile" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <div class="panel panel-primary">
      <div class="panel-heading"> User Profile</div>
      <div class="panel-body table table-responsive table-hover">
      
          <asp:DetailsView ID="DetailsView1"  class=" table-responsive" runat="server" AutoGenerateRows="False" 
              CellPadding="4" DataKeyNames="loginid" DataSourceID="SqlDataSource1" 
              ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
              <AlternatingRowStyle BackColor="White" />
              <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
              <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
              <Fields>
                  <asp:BoundField DataField="loginid" HeaderText="loginid" ReadOnly="True" 
                      SortExpression="loginid" />
                  <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                  <asp:BoundField DataField="roll_number" HeaderText="roll_number" 
                      SortExpression="roll_number" />
                  <asp:BoundField DataField="departmenet" HeaderText="departmenet" 
                      SortExpression="departmenet" />
                  <asp:BoundField DataField="semester" HeaderText="semester" 
                      SortExpression="semester" />
                  <asp:BoundField DataField="phone_number" HeaderText="phone_number" 
                      SortExpression="phone_number" />
                  <asp:BoundField DataField="email" HeaderText="email" 
                      SortExpression="email" />
                  <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                  <asp:BoundField DataField="district" HeaderText="district" 
                      SortExpression="district" />
                  <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                  <asp:BoundField DataField="address" HeaderText="address" 
                      SortExpression="address" />
                  <asp:BoundField DataField="pincode" HeaderText="pincode" 
                      SortExpression="pincode" />
              </Fields>
              <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
              <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
          </asp:DetailsView>
          
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
              ConnectionString="<%$ ConnectionStrings:tcpConnectionString %>" 
              
              SelectCommand="SELECT [loginid], [name], [roll_number], [departmenet], [semester], [phone_number], [email], [state], [district], [city], [address], [pincode] FROM [sign] WHERE ([loginid] = @loginid)">
              <SelectParameters>
                  <asp:SessionParameter Name="loginid" SessionField="userLoginID" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>


          <div class="row">
          <center><asp:Button ID="Button1" runat="server" Text="Edit my profile"  
                  class="btn btn-success btn-lg" onclick="Button1_Click"/></center>
          </div>

      </div>
    </div>
</asp:Content>

