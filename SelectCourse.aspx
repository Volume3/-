<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SelectCourse.aspx.cs" Inherits="SelectCourse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body style="text-align:center">
    <form id="form1" runat="server">
    
    <label style="font-size: x-large; font-weight: 600;">网上课程选修</label><br />
    
    <br />
    <asp:GridView ID="CourseClassGView" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None" 
        DataKeyNames="CourseClassID" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:TemplateField HeaderText="勾选">
                <EditItemTemplate>
                    <asp:CheckBox ID="CBoxCourseClass" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CBoxCourseClass" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CourseClassID" HeaderText="课程班编码" Visible="False" />
            <asp:BoundField DataField="CourseName" HeaderText="课程名称" />
            <asp:BoundField DataField="TeacherName" HeaderText="任课教师" />
            <asp:BoundField DataField="TeachingPlace" HeaderText="教学地点" />
            <asp:BoundField DataField="TeachingTime" HeaderText="教学时间" />
            <asp:BoundField DataField="MaxNumber" HeaderText="允许选修数" />
            <asp:BoundField DataField="SelectedNumber" HeaderText="已选数" />
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
    
    <asp:Button ID="StuSelectBtn" runat="server" onclick="StuSelectBtn_Click" 
        Text="确定" Width="80px" />
    <br />
    <br />
    <br />
    <a href="javascript:history.go(-1);">返回菜单</a>&nbsp; <a href="Index.aspx">退出登录</a>
    </form>
</body>
</html>
