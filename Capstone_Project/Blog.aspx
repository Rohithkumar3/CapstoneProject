<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="Capstone_Project.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 752px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style1" colspan="2">Blogs</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1" colspan="2">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BlogId" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="BlogId" HeaderText="BlogId" ReadOnly="True" SortExpression="BlogId" />
        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
        <asp:BoundField DataField="DateOfCreation" HeaderText="DateOfCreation" SortExpression="DateOfCreation" />
        <asp:BoundField DataField="BlogUrl" HeaderText="BlogUrl" SortExpression="BlogUrl" />
        <asp:BoundField DataField="EmpEmailId" HeaderText="EmpEmailId" SortExpression="EmpEmailId" />
    </Columns>
         <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CapstoneConnectionString %>" DeleteCommand="DELETE FROM [BlogInfo] WHERE [BlogId] = @original_BlogId AND [Title] = @original_Title AND [Subject] = @original_Subject AND [DateOfCreation] = @original_DateOfCreation AND [BlogUrl] = @original_BlogUrl AND (([EmpEmailId] = @original_EmpEmailId) OR ([EmpEmailId] IS NULL AND @original_EmpEmailId IS NULL))" InsertCommand="INSERT INTO [BlogInfo] ([BlogId], [Title], [Subject], [DateOfCreation], [BlogUrl], [EmpEmailId]) VALUES (@BlogId, @Title, @Subject, @DateOfCreation, @BlogUrl, @EmpEmailId)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:CapstoneConnectionString.ProviderName %>" SelectCommand="SELECT [BlogId], [Title], [Subject], [DateOfCreation], [BlogUrl], [EmpEmailId] FROM [BlogInfo]" UpdateCommand="UPDATE [BlogInfo] SET [Title] = @Title, [Subject] = @Subject, [DateOfCreation] = @DateOfCreation, [BlogUrl] = @BlogUrl, [EmpEmailId] = @EmpEmailId WHERE [BlogId] = @original_BlogId AND [Title] = @original_Title AND [Subject] = @original_Subject AND [DateOfCreation] = @original_DateOfCreation AND [BlogUrl] = @original_BlogUrl AND (([EmpEmailId] = @original_EmpEmailId) OR ([EmpEmailId] IS NULL AND @original_EmpEmailId IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_BlogId" Type="Int32" />
        <asp:Parameter Name="original_Title" Type="String" />
        <asp:Parameter Name="original_Subject" Type="String" />
        <asp:Parameter Name="original_DateOfCreation" Type="DateTime" />
        <asp:Parameter Name="original_BlogUrl" Type="String" />
        <asp:Parameter Name="original_EmpEmailId" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="BlogId" Type="Int32" />
        <asp:Parameter Name="Title" Type="String" />
        <asp:Parameter Name="Subject" Type="String" />
        <asp:Parameter Name="DateOfCreation" Type="DateTime" />
        <asp:Parameter Name="BlogUrl" Type="String" />
        <asp:Parameter Name="EmpEmailId" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Title" Type="String" />
        <asp:Parameter Name="Subject" Type="String" />
        <asp:Parameter Name="DateOfCreation" Type="DateTime" />
        <asp:Parameter Name="BlogUrl" Type="String" />
        <asp:Parameter Name="EmpEmailId" Type="String" />
        <asp:Parameter Name="original_BlogId" Type="Int32" />
        <asp:Parameter Name="original_Title" Type="String" />
        <asp:Parameter Name="original_Subject" Type="String" />
        <asp:Parameter Name="original_DateOfCreation" Type="DateTime" />
        <asp:Parameter Name="original_BlogUrl" Type="String" />
        <asp:Parameter Name="original_EmpEmailId" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
            </td>
        <td rowspan="2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/BlogCreate.aspx">Add Blogs</asp:HyperLink>
        </td>
        <td class="auto-style1">
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Home.aspx">Logout</asp:HyperLink>
        </td>
    </tr>
</table>
</asp:Content>
