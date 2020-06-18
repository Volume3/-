using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ManageModel_Web_StuAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DropDownListBind();
    }
    protected void StuSelectBackBtn_Click(object sender, EventArgs e)
    {
        Response.Write("<SCRIPT language=javascript>history.go(-2);</SCRIPT>");
    }

    //系部、班主任下拉框数据绑定
    private void DropDownListBind()
    {
        //新建一个连接实例
        SqlConnection DDLConn = new SqlConnection();
        //从Web.config文件获取数据库连接字符串
        DDLConn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnStr"].ToString();
        DDLConn.Open();
        //将两表中数据填充到DDLDataSet对象的表“DeptTable”和“TeacherTable”中
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
        //班主任下拉框绑定
        this.ClassNameDDList.DataTextField = "ClassName";
        this.ClassNameDDList.DataValueField = "ClassID";
        this.ClassNameDDList.DataSource = DDLDataSet.Tables["ClassTable"];
        this.ClassNameDDList.DataBind();
        //关闭数据库连接
        DDLConn.Close();
    }
    protected void InsertBtn_Click(object sender, EventArgs e)
    {
        //构建添加班级记录的INSERT INTO语句 
        string StudentInsertSQL = "INSERT INTO TB_Student(StuID,StuName,EnrollYear,GradYear,DeptID,ClassID,Sex,Birthday,StuAddress,ZipCode) VALUES(";
        StudentInsertSQL = StudentInsertSQL + "'" + this.StuIDTextBox.Text.Trim() + "',";
        StudentInsertSQL = StudentInsertSQL + "'" + this.StuNameTextBox.Text.Trim() + "',";
        StudentInsertSQL = StudentInsertSQL + "'" + this.EnrollYearTextBox.Text.Trim() + "',";
        StudentInsertSQL = StudentInsertSQL + "'" + this.GradYearTextBox.Text.Trim() + "',";
        StudentInsertSQL = StudentInsertSQL + "'" + this.DeptDDList.SelectedValue + "',";
        StudentInsertSQL = StudentInsertSQL + "'" + this.ClassNameDDList.SelectedValue + "',";
        StudentInsertSQL = StudentInsertSQL + "'" + this.SexRadioBtnList.SelectedValue + "',";
        StudentInsertSQL = StudentInsertSQL + "'" + this.BirthdayTextBox.Text.Trim() + "',";
        StudentInsertSQL = StudentInsertSQL + "'略','111111')";


        //建立一个数据库连接，并从Web.config文件中获取连接字符串，并打开连接
        SqlConnection StudentInsertConn = new SqlConnection();
        StudentInsertConn.ConnectionString =
        ConfigurationManager.ConnectionStrings["ConnStr"].ToString();
        StudentInsertConn.Open();
        //执行添加班级记录的SQL语句命令
        SqlCommand ClassInsertCmd = new SqlCommand(StudentInsertSQL, StudentInsertConn);
        ClassInsertCmd.ExecuteNonQuery();
        //关闭数据库连接
        StudentInsertConn.Close();
        //班级记录添加成功后弹出成功对话框，并链接到新网页
        Response.Write("<script language='javascript'>alert('新增学生记录成功');location.href='StuManage.aspx';</script>");

    }
}