<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StuAdd.aspx.cs" Inherits="ManageModel_Web_StuAdd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 104px;
        }
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
        <label id="info">学生信息添加<br /></label>
        <br />
        <table align="center" class="auto-style1" style="width: 400px;">
            <tr>
                <td class="style1" align="left">系名：</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DeptDDList" runat="server" style="margin-left: 0px" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1" align="left">班级名：</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="ClassNameDDList" runat="server" style="margin-left: 0px" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1" align="left">学号：</td>
                <td class="auto-style5">
                    <asp:TextBox ID="StuIDTextBox" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1" align="left">学生姓名：</td>
                <td class="auto-style5">
                    <asp:TextBox ID="StuNameTextBox" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1" align="left">性别：</td>
                <td class="auto-style2">
                    <asp:RadioButtonList ID="SexRadioBtnList" runat="server"  RepeatDirection="Horizontal" AutoPostBack="True" Width="197px">
                    <asp:ListItem Value="M" Selected="True">男</asp:ListItem>
                    <asp:ListItem Value="F">女</asp:ListItem>
                </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style1" align="left">生日：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="BirthdayTextBox" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1" align="left">入学年份：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="EnrollYearTextBox" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1" align="left">毕业年份：</td>
                <td class="auto-style2">
                    <asp:TextBox ID="GradYearTextBox" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style6">
        <asp:Button ID="StuSelectBackBtn" runat="server" Text="返回" Width="80px" OnClick="StuSelectBackBtn_Click" />
        
    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="InsertBtn" runat="server" Text="添加" Width="80px" OnClick="InsertBtn_Click" />
                </td>
            </tr>
        </table>
        <br />
    </form>
</body>
</html>
