<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClassManage.aspx.cs" Inherits="ManageModel_Web_ClassManage" %>

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
        <label id="info">班级信息维护</label>
        <br />
        <br />
        <asp:DropDownList ID="DeptDDList" runat="server" Width="150px">
        </asp:DropDownList>
        &nbsp;<asp:Button ID="QueryBtn" runat="server" Text="查询" Height="22px" 
            Width="80px" onclick="QueryBtn_Click1" />
        <br />
&nbsp;<asp:GridView ID="ClassGView" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None" 
            HorizontalAlign="Center" DataKeyNames="ClassID" Font-Size="Small" OnRowDeleting="ClassGView_RowDeleting">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ClassID" HeaderText="班级编码" />
                <asp:BoundField DataField="ClassName" HeaderText="班级名称" />
                <asp:BoundField DataField="DeptName" HeaderText="系部" />
                <asp:BoundField DataField="TeacherName" HeaderText="班主任" />
                <asp:HyperLinkField DataNavigateUrlFields="ClassID" 
                    DataNavigateUrlFormatString="ClassEdit.aspx?ClassID={0}" HeaderText="编辑" 
                    Text="编辑" />
                <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
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
        <a href="ClassAdd.aspx">班级信息添加</a>
        <br />
        <br />
        <a href="javascript:history.go(-1);">返回菜单</a>&nbsp; <a href="../Index.aspx">退出登录</a>
    </div>
    </form>
</body>
</html>
