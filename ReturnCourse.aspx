<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReturnCourse.aspx.cs" Inherits="ReturnCourse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="text-align:center">
    <form id="form1" runat="server">
    <div>
        <label style="font-size: x-large; font-weight: 600;">&nbsp;网上课程退选</label></div>
    <br />
    <br />
    <asp:GridView ID="StuCourseGView" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None" 
        onrowdeleting="StuCourseGView_RowDeleting" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="CourseClassID" HeaderText="课程班编码" />
            <asp:BoundField DataField="CourseName" HeaderText="课程名称" />
            <asp:BoundField DataField="TeacherName" HeaderText="任课教师" />
            <asp:BoundField DataField="TeachingPlace" HeaderText="教学地点" />
            <asp:BoundField DataField="TeachingTime" HeaderText="教学时间" />
            <asp:TemplateField HeaderText="退选" ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="退选" OnClientClick="javascript:return confirm('真的要退选吗？');" ></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
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
