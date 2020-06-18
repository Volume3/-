<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StuEdit.aspx.cs" Inherits="ManageModel_Web_StuEdit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    #info
        {
             font-size: x-large;
             font-weight: 600;
        }
    </style>
</head>
<body style="text-align:center">
    <form id="form1" runat="server">
    <br />
        <label id="info">学生信息更新<br /></label>
        <br />
        <table align="center" class="auto-style1" style="width: 400px;">
            <tr>
                <td class="auto-style3">系名：</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DeptDDList" runat="server" style="margin-left: 0px" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">班级名：</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="ClassNameDDList" runat="server" style="margin-left: 0px" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">学号：</td>
                <td class="auto-style5">
                    <asp:TextBox ID="StuIDTextBox" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">学生姓名：</td>
                <td class="auto-style8">
                    <asp:TextBox ID="StuNameTextBox" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">生日：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="BirthdayTextBox" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">入学年份：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="EnrollYearTextBox" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">毕业年份：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="GradYearTextBox" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style6">
        <asp:Button ID="StuSelectBackBtn" runat="server" Text="返回" Width="80px" OnClick="StuSelectBackBtn_Click" />
        
    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="UpdateBtn" runat="server" Text="更新" Width="80px" OnClick="UpdateBtn_Click" />
                </td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
