<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpCreate.aspx.cs" Inherits="Capstone_Project.EmpCreate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 191px;
        }
        .auto-style3 {
            width: 296px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <table class="auto-style1">
            <tr>
                <td colspan="3" class="text-center">Add Employee Details</td>
            </tr>
            <tr>
                <td class="auto-style2">Employee Mail Id</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Name</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">DOJ</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">PassCode</td>
                <td colspan="2">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td colspan="2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create" />
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
