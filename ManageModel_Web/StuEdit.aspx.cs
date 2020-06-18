using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ManageModel_Web_StuEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //如果是第一次加载网页，则绑定页面上各个下拉框的数据
        if (!Page.IsPostBack)
        {
            //绑定下拉列表框中的数据
            DropDownListBind();
            //获取网页传递过来的要更新班级记录的班级编码的值
            string StuID = Request.QueryString["StuID"];
            //新建一个连接实例
            SqlConnection StudentConn = new SqlConnection();
            //从Web.config文件获取数据库连接字符串
            StudentConn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnStr"].ToString();
            StudentConn.Open();
            //新建ClassDataSet对象，并将班级表中的数据填充到ClassDataSet对象的表“ClassTable”中
            SqlCommand StudentCmd = new SqlCommand("SELECT StuID,StuName,Sex,Birthday,EnrollYear,GradYear FROM TB_Student WHERE StuID = " + "'" + StuID + "'", StudentConn);
            SqlDataAdapter ClassDataAdapter = new SqlDataAdapter(StudentCmd);
            DataSet ClassDataSet = new DataSet();
            ClassDataAdapter.Fill(ClassDataSet, "StudentTable");
            StudentConn.Close();
            //将ClassDataSet中"ClassTable"表的Rows[i][j]，即第i行j列的值分别赋给相应的组件
            this.StuIDTextBox.Text = ClassDataSet.Tables["StudentTable"].Rows[0][0].ToString();
            this.StuNameTextBox.Text = ClassDataSet.Tables["StudentTable"].Rows[0][1].ToString();
            this.BirthdayTextBox.Text = ClassDataSet.Tables["StudentTable"].Rows[0][3].ToString();
            this.EnrollYearTextBox.Text = ClassDataSet.Tables["StudentTable"].Rows[0][4].ToString();
            this.GradYearTextBox.Text = ClassDataSet.Tables["StudentTable"].Rows[0][5].ToString();

        }

    }

    private void DropDownListBind()
    {
        //新建一个连接实例
        SqlConnection DDLConn = new SqlConnection();
        //从Web.config文件获取数据库连接字符串
        DDLConn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnStr"].ToString();
        DDLConn.Open();
        //并将系部表中的数据填充到DDLDataSet对象的表“DeptTable”中
        SqlCommand DeptCmd = new SqlCommand("SELECT DeptID,DeptName FROM TB_Dept", DDLConn);
        SqlDataAdapter DeptDataAdapter = new SqlDataAdapter(DeptCmd);
        SqlCommand ClassCmd = new SqlCommand("SELECT ClassID,ClassName FROM TB_Class", DDLConn);
        SqlDataAdapter ClassDataAdapter = new SqlDataAdapter(ClassCmd);
        DataSet DDLDataSet = new DataSet();
        DeptDataAdapter.Fill(DDLDataSet, "DeptTable");
        ClassDataAdapter.Fill(DDLDataSet, "ClassTable");

        //系部下拉框绑定
        this.DeptDDList.DataTextField = "DeptName";
        this.DeptDDList.DataValueField = "DeptID";
        this.DeptDDList.DataSource = DDLDataSet.Tables["DeptTable"];
        this.DeptDDList.DataBind();

        this.ClassNameDDList.DataTextField = "ClassName";
        this.ClassNameDDList.DataValueField = "ClassID";
        this.ClassNameDDList.DataSource = DDLDataSet.Tables["ClassTable"];
        this.ClassNameDDList.DataBind();
        //关闭数据库连接
        DDLConn.Close();
    }

    protected void StuSelectBackBtn_Click(object sender, EventArgs e)
    {
        Response.Write("<SCRIPT language=javascript>history.go(-2);</SCRIPT>");
    }

    protected void UpdateBtn_Click(object sender, EventArgs e)
    {
        //构建添加班级记录的UPDATE语句
        string StudentUpdateSQL = "UPDATE TB_Student SET ";
        StudentUpdateSQL = StudentUpdateSQL + "DeptID='" + this.DeptDDList.SelectedValue + "',";
        StudentUpdateSQL = StudentUpdateSQL + "ClassID='" + this.ClassNameDDList.SelectedValue + "',";
        StudentUpdateSQL = StudentUpdateSQL + "StuID='" + this.StuIDTextBox.Text.Trim() + "',";
        StudentUpdateSQL = StudentUpdateSQL + "StuName='" + this.StuNameTextBox.Text.Trim() + "',";
        StudentUpdateSQL = StudentUpdateSQL + "Birthday='" + this.BirthdayTextBox.Text.Trim() + "',";
        StudentUpdateSQL = StudentUpdateSQL + "EnrollYear='" + this.EnrollYearTextBox.Text.Trim() + "',";
        StudentUpdateSQL = StudentUpdateSQL + "GradYear='" + this.GradYearTextBox.Text.Trim() + "' ";
        StudentUpdateSQL = StudentUpdateSQL + "WHERE StuID=" + "'" + Request.QueryString["StuID"] + "'";

        //创建并打开数据库连接，从Web.config从获取连接字符串
        SqlConnection StudentUpdateConn = new SqlConnection();
        StudentUpdateConn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnStr"].ToString();
        StudentUpdateConn.Open();
        //执行UPDATE语句
        SqlCommand StudentUpdateCmd = new SqlCommand(StudentUpdateSQL, StudentUpdateConn);
        StudentUpdateCmd.ExecuteNonQuery();
        //关闭数据库连接
        StudentUpdateConn.Close();
        //显示更新成功对话框，并链接到ClassManage.aspx网页
        Response.Write("<script language='javascript'>alert('更新学生记录成功');location.href='StuManage.aspx';</script>");

    }
}