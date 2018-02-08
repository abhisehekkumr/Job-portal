<%@ Page Title="" Language="C#" MasterPageFile="~/AdminHomeMaster.master" AutoEventWireup="true" CodeFile="Applications.aspx.cs" Inherits="Applications" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="row">
<center><asp:Label ID="Label1" runat="server" Text="" ForeColor="#CC0000"></asp:Label></center>
</div>
    <div class="row table-responsive">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="resume" DataSourceID="SqlDataSource1" Width="100%">
        <Columns>
            <asp:BoundField DataField="cid" HeaderText="cid" InsertVisible="False" 
                ReadOnly="True" SortExpression="cid" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="roll_number" HeaderText="roll_number" 
                SortExpression="roll_number" />
            <asp:BoundField DataField="department" HeaderText="department" 
                SortExpression="department" />
            <asp:BoundField DataField="semester" HeaderText="semester" 
                SortExpression="semester" />
            <asp:BoundField DataField="resume" HeaderText="resume" ReadOnly="True" 
                SortExpression="resume" />
            <asp:TemplateField HeaderText="View Details">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="#">Details</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Download Resumes">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.resume","Resumes/{0}") %>'>Download</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Remove Applications">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink3" runat="server" onclick="return confirm('Do you really want to remove ?');" NavigateUrl='<%#DataBinder.Eval(Container,"DataItem.cid","Applications.aspx?del={0}") %>'>Remove</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:tcpConnectionString2 %>" 
        SelectCommand="SELECT [cid], [name], [roll_number], [department], [semester], [resume] FROM [candidates_for_jobs]">
    </asp:SqlDataSource>
    </div>
    </asp:Content>

