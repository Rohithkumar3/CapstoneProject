<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Capstone_Project.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="3">List Of Blogs</td>
        </tr>
        <tr>
            <td>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="BlogId" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="BlogId" HeaderText="BlogId" ReadOnly="True" SortExpression="BlogId" />
        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        <asp:BoundField DataField="Subject" HeaderText="Subject" SortExpression="Subject" />
        <asp:BoundField DataField="DateOfCreation" HeaderText="DateOfCreation" SortExpression="DateOfCreation" />
        <asp:BoundField DataField="EmpEmailId" HeaderText="EmpEmailId" SortExpression="EmpEmailId" />
        <asp:BoundField DataField="BlogUrl" HeaderText="BlogUrl" SortExpression="BlogUrl" />
    </Columns>
         <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
     </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CapstoneConnectionString3 %>" DeleteCommand="DELETE FROM [BlogInfo] WHERE [BlogId] = @original_BlogId AND [Title] = @original_Title AND [Subject] = @original_Subject AND [DateOfCreation] = @original_DateOfCreation AND (([EmpEmailId] = @original_EmpEmailId) OR ([EmpEmailId] IS NULL AND @original_EmpEmailId IS NULL)) AND [BlogUrl] = @original_BlogUrl" InsertCommand="INSERT INTO [BlogInfo] ([BlogId], [Title], [Subject], [DateOfCreation], [EmpEmailId], [BlogUrl]) VALUES (@BlogId, @Title, @Subject, @DateOfCreation, @EmpEmailId, @BlogUrl)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:CapstoneConnectionString3.ProviderName %>" SelectCommand="SELECT [BlogId], [Title], [Subject], [DateOfCreation], [EmpEmailId], [BlogUrl] FROM [BlogInfo]" UpdateCommand="UPDATE [BlogInfo] SET [Title] = @Title, [Subject] = @Subject, [DateOfCreation] = @DateOfCreation, [EmpEmailId] = @EmpEmailId, [BlogUrl] = @BlogUrl WHERE [BlogId] = @original_BlogId AND [Title] = @original_Title AND [Subject] = @original_Subject AND [DateOfCreation] = @original_DateOfCreation AND (([EmpEmailId] = @original_EmpEmailId) OR ([EmpEmailId] IS NULL AND @original_EmpEmailId IS NULL)) AND [BlogUrl] = @original_BlogUrl"></asp:SqlDataSource>
                </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

