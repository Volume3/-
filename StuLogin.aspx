<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StuLogin.aspx.cs" Inherits="StuLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
        <br />
        <label style="font-size: x-large; font-weight: 600;">学生，欢迎登录！</label><br />
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
        <asp:Panel ID="LoginPanel" runat="server" Height="50px" Width="100%" 
            HorizontalAlign="Center">
            学号: <asp:TextBox ID="StuIDTextBox" runat="server" Width="150px"></asp:TextBox>
            <br />
            <br />
            密码: <asp:TextBox ID="PassTextBox" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
            <br />
            <br />
            &nbsp;<asp:Button ID="LoginSubmitBtn" runat="server" Text="Submit" OnClick="LoginSubmit_Click" Width="70px" />
            &nbsp;
            <asp:Button ID="LoginResetBtn" runat="server" Text="Reset" Width="70px" OnClick="LoginReset_Click" />
            <br />
            <br />
            &nbsp; 不是这个用户？<a href="Index.aspx">切换用户</a></asp:Panel>
        <br />
        <br />
        <asp:Panel ID="LoginOkPanel" runat="server" Height="50px" Width="100%" 
            Visible="false">
            <asp:Label ID="LoginOkLabel" runat="server"></asp:Label><br />
            <br />
            <br />
            <a href="SelectCourse.aspx">课程选修</a><img src="images/access.png" alt="access.png" style="height: 17px; width: 17px" />
            &nbsp; <a href="StuGradeQuery.aspx">成绩查询</a>
            <br />
            <br />
            <a href="Index.aspx">退出登录</a>
        </asp:Panel>
        &nbsp;<br />
        &nbsp;<br />
        &nbsp;
    </form>
</body>
</html>
