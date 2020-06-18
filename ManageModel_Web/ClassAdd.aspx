<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClassAdd.aspx.cs" Inherits="ManageModel_Web_ClassAdd" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 45%;
        }
        .style2
        {
            width: 104px;
        }
        .style3
        {
            width: 272px;
        }
        #info
        {
             font-size: x-large;
             font-weight: 600;
        }
    </style>
</head>
<body style="text-align:center;">
    <form id="form1" runat="server">
    <div>
        <label id="info">班级信息添加</label>
        <br />
    </div>
    &nbsp;&nbsp;&nbsp;
    <table align="center" class="style1">
        <tr>
            <td align="left" class="style2">
                班级编码：</td>
            <td align="left" class="style3">
                <asp:TextBox ID="ClassIDTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" class="style2">
                班级名称：</td>
            <td align="left" class="style3">
                <asp:TextBox ID="ClassNameTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="left" class="style2">
                系部：</td>
            <td align="left" class="style3">
                <asp:DropDownList ID="DeptDDList" runat="server" Width="150px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="left" class="style2">
                班主任：</td>
            <td align="left" class="style3">
                <asp:DropDownList ID="TeacherDDList" runat="server" Width="150px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="InsertBtn" runat="server" Text="添加" Width="80px" 
                    onclick="InsertBtn_Click1" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
