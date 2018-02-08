<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHomeMaster.master" AutoEventWireup="true" CodeFile="AdminJobs.aspx.cs" Inherits="AdminJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="row" style="padding-top:40px;">
    
                         </div>
       <div class="row" style="padding-top:40px;">
    
      </div>
       <div class="row" style="padding-top:40px;">
    
      </div>
      <div class="row">
      <center>
          <asp:Label ID="Label1" runat="server" Text="" ForeColor="#CC0000"></asp:Label></center>
      </div>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:tcpConnectionString %>" 
    SelectCommand="SELECT * FROM [jobs] ORDER BY [jid]">
</asp:SqlDataSource>
       <div class="panel panel-primary">
      <div class="panel-heading">Jobs</div>
      <div class="panel-body">
      
      
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
    GridLines="None" Width="100%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="jid" HeaderText="jid" SortExpression="jid" 
                InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="name" HeaderText="name" 
                SortExpression="name" />
            <asp:BoundField DataField="department" HeaderText="department" 
                SortExpression="department" />
            <asp:BoundField DataField="last_date" HeaderText="last_date" 
                SortExpression="last_date" />
            <asp:BoundField DataField="designation" HeaderText="designation" 
                SortExpression="designation" />
            <asp:BoundField DataField="salary" HeaderText="salary" 
                SortExpression="salary" />
            <asp:BoundField DataField="experience" HeaderText="experience" 
                SortExpression="experience" />
            <asp:BoundField DataField="company" HeaderText="company" 
                SortExpression="company" />
            <asp:BoundField DataField="job_description" HeaderText="job_description" 
                SortExpression="job_description" />
            <asp:TemplateField HeaderText="Edit Jobs">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.jid","EditJobs.aspx?edit={0}") %>'>Edit</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Remove Jobs">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.jid","AdminJobs.aspx?del={0}") %>'>Remove</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
      <div class="row" style="padding-top:40px;">
    
      </div>
      <div class="row" style="padding-top:40px;">
    
      </div>
      <div class="row">
      <center><asp:Button ID="Button1" runat="server" Text="Add New Job" 
              class="btn btn-success btn-lg" onclick="Button1_Click"/></center>
      </div>
          
      </div>
    </div>
</asp:Content>

