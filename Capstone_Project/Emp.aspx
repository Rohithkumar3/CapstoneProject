<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Emp.aspx.cs" Inherits="Capstone_Project.Emp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
    .auto-style1 {
        width: 591px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
    <tr>
        <td class="auto-style1">Employee Details</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="EmailId" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="EmailId" HeaderText="EmailId" ReadOnly="True" SortExpression="EmailId" />
        <asp:BoundField DataField="DateOfJoining" HeaderText="DateOfJoining" SortExpression="DateOfJoining" />
        <asp:BoundField DataField="PassCode" HeaderText="PassCode" SortExpression="PassCode" />
    </Columns>
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#FFF1D4" />
    <SortedAscendingHeaderStyle BackColor="#B95C30" />
    <SortedDescendingCellStyle BackColor="#F1E5CE" />
    <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CapstoneConnectionString2 %>" DeleteCommand="DELETE FROM [EmpInfo] WHERE [EmailId] = @original_EmailId AND [Name] = @original_Name AND [DateOfJoining] = @original_DateOfJoining AND [PassCode] = @original_PassCode" InsertCommand="INSERT INTO [EmpInfo] ([Name], [EmailId], [DateOfJoining], [PassCode]) VALUES (@Name, @EmailId, @DateOfJoining, @PassCode)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:CapstoneConnectionString2.ProviderName %>" SelectCommand="SELECT [Name], [EmailId], [DateOfJoining], [PassCode] FROM [EmpInfo]" UpdateCommand="UPDATE [EmpInfo] SET [Name] = @Name, [DateOfJoining] = @DateOfJoining, [PassCode] = @PassCode WHERE [EmailId] = @original_EmailId AND [Name] = @original_Name AND [DateOfJoining] = @original_DateOfJoining AND [PassCode] = @original_PassCode">
    <DeleteParameters>
        <asp:Parameter Name="original_EmailId" Type="String" />
        <asp:Parameter Name="original_Name" Type="String" />
        <asp:Parameter DbType="Date" Name="original_DateOfJoining" />
        <asp:Parameter Name="original_PassCode" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="EmailId" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfJoining" />
        <asp:Parameter Name="PassCode" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter DbType="Date" Name="DateOfJoining" />
        <asp:Parameter Name="PassCode" Type="Int32" />
        <asp:Parameter Name="original_EmailId" Type="String" />
        <asp:Parameter Name="original_Name" Type="String" />
        <asp:Parameter DbType="Date" Name="original_DateOfJoining" />
        <asp:Parameter Name="original_PassCode" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
             </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/EmpCreate.aspx">Create</asp:HyperLink>
        </td>
        <td>
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Home.aspx">Logout</asp:HyperLink>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
