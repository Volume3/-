using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class GradeQuery : System.Web.UI.Page
{
    /*protected void Page_Load(object sender, EventArgs e)
    {
        // 从全局Session变量获取学生的学号和姓名
        TIDNameLabel.Text = "<学号：" + Session["TeacherID"].ToString() + "    姓名：" + Session["TeacherName"].ToString() + ">";
        // 建立数据库连接，从Web.config文件获取数据库连接字符串
        SqlConnection TGradeConn = new SqlConnection();
        TGradeConn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnStr"].ToString();
        TGradeConn.Open();
        // 创建查询SQL语句，并用SqlDataAdapter对象获取数据
        SqlCommand TGradeCmd = new SqlCommand("SELECT TB_CourseClass.CourseClassID 课程班, TB_Teacher.TeacherName 教师名称, avg(TB_Grade.TotalScore) as '平均成绩' FROM TB_CourseClass,TB_Grade,TB_Teacher where TB_CourseClass.TeacherID = TB_Teacher.TeacherID and TB_CourseClass.CourseClassID = TB_Grade.CourseClassID group by TB_CourseClass.CourseClassID,TB_Teacher.TeacherName having avg(TotalScore)>0 AND TB_Teacher.TeacherName ='" + Session["TeacherID"].ToString() + "'", TGradeConn);
        SqlDataAdapter TGradeAdapter = new SqlDataAdapter(TGradeCmd);
        // 将SqlDataAdapter对象中的数据填充到DataSet对象的表"StuGradeTable"中
        DataSet TGradeDS = new DataSet();
        TGradeAdapter.Fill(TGradeDS, "TGradeTable");
        // 关闭数据库连接
        TGradeConn.Close();
        // 绑定数据到GridView显示
        this.TGradeGView.DataSource = TGradeDS.Tables["TGradeTable"];
        this.TGradeGView.DataBind();
    }*/
    protected void Page_Load(object sender, EventArgs e)
    {
        //从全局Session变量获取学生的学号和姓名
        TIDNameLabel.Text = "<工号：" + Session["TeacherID"].ToString() + "    姓名：" + Session["TeacherName"].ToString() + ">";
        //建立数据库连接，从Web.config文件获取数据库连接字符串
        SqlConnection TchGradeConn = new SqlConnection();
        TchGradeConn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnStr"].ToString();
        TchGradeConn.Open();
        //创建查询SQL语句，并用SqlDataAdapter对象获取数据 
        SqlCommand TchGradeCmd = new SqlCommand("select TB_CourseClass.CourseClassID 课程班级编号,TB_Course.CourseName 课程名称 ,avg(TB_Grade.TotalScore) 平均成绩 from TB_CourseClass,TB_Grade,TB_Course where TB_CourseClass.CourseID=TB_Course.CourseID and TB_CourseClass.CourseClassID=TB_Grade.CourseClassID and TB_CourseClass.TeacherID='" + Session["TeacherID"].ToString() + "' group by TB_CourseClass.CourseClassID,TB_Course.CourseName", TchGradeConn);
        SqlDataAdapter TchGradeAdapter = new SqlDataAdapter(TchGradeCmd);
        //将SqlDataAdapter对象中的数据填充到DataSet对象的表"TchGradeTable"中
        DataSet TchGradeDS = new DataSet();
        TchGradeAdapter.Fill(TchGradeDS, "TchGradeTable");
        //关闭数据库连接
        TchGradeConn.Close();
        //绑定数据到GridView显示
        this.TGradeGView.DataSource = TchGradeDS.Tables["TchGradeTable"];
        this.TGradeGView.DataBind();
    }
    protected void TchGradeGView_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}