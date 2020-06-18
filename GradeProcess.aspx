<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GradeProcess.aspx.cs" Inherits="GradeLog" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="text-align:center">
    <form id="form1" runat="server">
    <div>
        <label style="font-size: x-large; font-weight: 600;">教师课程班成绩录入及处理<br />
        </label><br />
        <asp:Label ID="TchNameLabel" runat="server" Text="Label"></asp:Label>
    &nbsp;
        <asp:DropDownList ID="CourseClassDDList" runat="server" AutoPostBack="True" 
            ontextchanged="CourseClassDDList_TextChanged" Width="300px">
        </asp:DropDownList>
    &nbsp;
        <asp:Button ID="QueryBtn" runat="server" Text="确定" onclick="QueryBtn_Click" />
        <br />
        <br />
    <asp:GridView ID="GradeGView" runat="server" BackColor="White" 
        BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        GridLines="Vertical" HorizontalAlign="Center" AutoGenerateColumns="False" 
        DataKeyNames="GradeSeedID">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />

            <Columns>
                <asp:BoundField DataField="GradeSeedID" HeaderText="成绩编码" />
                 <asp:BoundField DataField="StuID" HeaderText="学号" />
                <asp:BoundField DataField="StuName" HeaderText="姓名" />
                <asp:TemplateField HeaderText="平时成绩">
                    <ItemTemplate>
                        <asp:TextBox ID="TBoxCommonScore" Width="60" Text="0" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="期中成绩">
                    <ItemTemplate>
                        <asp:TextBox ID="TBoxMiddleScore" Width="60" Text="0" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="期末成绩">
                    <ItemTemplate>
                        <asp:TextBox ID="TBoxLastScore" Width="60" Text="0" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="TotalScore" HeaderText="总评成绩" />
                <asp:TemplateField HeaderText="锁定">
                    <ItemTemplate>
                        <asp:CheckBox ID="CBoxLockFlag" Enabled="False" runat="server" />
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
        <asp:Button ID="GradeProcBtn" runat="server" onclick="GradeProcBtn_Click" 
            Text="成绩处理" Width="80px" />
        <br />
        <br />
        <br />
        <a href="javascript:history.go(-1);">返回菜单</a>&nbsp; <a href="Index.aspx">退出登录</a>
    </div>
    </form>
</body>
</html>
