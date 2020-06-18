<%@ Page Language="C#" AutoEventWireup="true" CodeFile="StuManage.aspx.cs" Inherits="ManageModel_Web_StuManage" %>

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
<body style="text-align:center;">
    <form id="form1" runat="server">
    <div>
        <label id="info">学生信息维护</label>
        <br />
        <br />
        <asp:DropDownList ID="DeptDDList" runat="server" Width="150px">
        </asp:DropDownList>
        &nbsp;<asp:Button ID="QueryBtn" runat="server" Text="查询" Height="22px" 
            Width="80px" onclick="QueryBtn_Click1" />
        <br />
&nbsp;<asp:GridView ID="StudentGView" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" HorizontalAlign="Center" DataKeyNames="StuID" Font-Size="Small" OnRowDeleting="StuGView_RowDeleting">
            <AlternatingRowStyle BackColor="Gainsboro" />
            <Columns>
                <asp:BoundField DataField="DeptName" HeaderText="系部" />
                <asp:BoundField DataField="ClassName" HeaderText="班级" />
                <asp:BoundField DataField="StuID" HeaderText="学号" />
                <asp:BoundField DataField="StuName" HeaderText="姓名" />
                <asp:BoundField DataField="Sex" HeaderText="性别" />
                <asp:BoundField DataField="Birthday" HeaderText="生日" />
                <asp:BoundField DataField="EnrollYear" HeaderText="入学年份" />
                <asp:BoundField DataField="GradYear" HeaderText="毕业年份" />
                <asp:HyperLinkField DataNavigateUrlFields="StuID" DataNavigateUrlFormatString="StuEdit.aspx?StuID={0}" HeaderText="编辑" Text="编辑" />
                <asp:TemplateField HeaderText="删除" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" OnClientClick="javascript:return confirm('真的要删除吗？');"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <br />
        <a href="StuAdd.aspx">学生信息添加</a>
        <br />
        <br />
        <a href="javascript:history.go(-1);">返回菜单</a>&nbsp; <a href="../Index.aspx">退出登录</a>
    </div>
    </form>
</body>
</html>
