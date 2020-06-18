<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="text-align:center;">
    <form id="form1" runat="server">
    <label style="font-size: x-large; font-weight: 600;">&nbsp;欢迎使用教学管理系统!<br />
    </label><br />
    <br />
    <label style="font-size: large; font-weight: 300;">请选择登录方式<br />
    <br />
    <br />
    <a href="TeacherLogin.aspx">教师</a>
    <br />
    <br />
    <a href="StuLogin.aspx">学生</a>
    <br />
    <br />
    <a href="AdminLogin.aspx">管理人员</a>
    </label>
    </form>
</body>
</html>
