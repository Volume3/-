<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClassEdit.aspx.cs" Inherits="Manage_Web_ClassEdit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    #form1 {
            height: 268px;
        }
        .auto-style3 {
            width: 720px;
        }
        .auto-style5 {
            width: 760px;
        }
        .auto-style4 {
            height: 24px;
            width: 720px;
        }
        .auto-style2 {
            height: 24px;
            width: 760px;
        }
        .auto-style6 {
            height: 31px;
        }
        .auto-style7 {
            width: 720px;
            height: 27px;
        }
        .auto-style8 {
            width: 760px;
            height: 27px;
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
    <div>
    
        <br />

        <label id="info">班级信息更新</label><br />
        <br />
        <table align="center" class="auto-style1" style="width: 400px;">
            <tr>
                <td class="auto-style7">班级编码：</td>
                <td class="auto-style8">
                    <asp:TextBox ID="ClassIDTextBox" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">班级名称：</td>
                <td class="auto-style5">
                    <asp:TextBox ID="ClassNameTextBox" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">系部：</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DeptDDList" runat="server" style="margin-left: 0px" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">班主任：</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="TeacherDDList" runat="server" Width="200px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style6">
                    <asp:Button ID="UpdateBtn" runat="server" Text="更新" Width="80px" OnClick="UpdateBtn_Click" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
