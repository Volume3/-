<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TeacherGradeQuery.aspx.cs" Inherits="TeacherGradeQuery" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="text-align:center">
    <form id="form1" runat="server">
    <div>
        <label style="font-size: x-large; font-weight: 600;">教师课程班成绩查询</label><br />
        <br />
        <asp:DropDownList ID="TeacherDDList" runat="server" AutoPostBack="True" 
            onselectedindexchanged="TeacherDDList_SelectedIndexChanged" Width="120px">
        </asp:DropDownList>
&nbsp;<asp:DropDownList ID="CourseClassDDList" runat="server" Width="300px">
        </asp:DropDownList>
&nbsp;<asp:Button ID="QueryBtn" runat="server" onclick="QueryBtn_Click" Text="确定" Width="80px" />
        <br />
    
    </div>
    &nbsp;<asp:GridView ID="GradeGView" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" 
        Width="900px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="StuID" HeaderText="学号" />
            <asp:BoundField DataField="StuName" HeaderText="姓名" />
            <asp:BoundField DataField="CommonScore" HeaderText="平时成绩" />
            <asp:BoundField DataField="MiddleScore" HeaderText="期中成绩" />
            <asp:BoundField DataField="LastScore" HeaderText="期末成绩" />
            <asp:BoundField DataField="TotalScore" HeaderText="总评成绩" />
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
    <br />
    <br />
    <a href="javascript:history.go(-1);">返回菜单</a>&nbsp; <a href="Index.aspx">退出登录</a>
    </form>
</body>
</html>
