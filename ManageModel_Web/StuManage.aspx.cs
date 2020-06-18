using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class ManageModel_Web_StuManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //如果是第一次加载网页，则绑定页面上各个下拉框的数据 
        if (!Page.IsPostBack)
        {
            DropDownListBind();
            GridViewDataBind();
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
        DataSet DDLDataSet = new DataSet();
        DeptDataAdapter.Fill(DDLDataSet, "DeptTable");
        //系部下拉框绑定
        this.DeptDDList.DataTextField = "DeptName";
        this.DeptDDList.DataValueField = "DeptID";
        this.DeptDDList.DataSource = DDLDataSet.Tables["DeptTable"];
        this.DeptDDList.DataBind();
        this.DeptDDList.Items.Insert(0, new ListItem("===所有系部===", "全部"));
        //关闭数据库连接
        DDLConn.Close();
    }
    private void GridViewDataBind()
    {
        SqlConnection StudentConn = new SqlConnection();
        StudentConn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnStr"].ToString();
        StudentConn.Open();
        SqlCommand StudentSelectCmd = new SqlCommand("SELECT DeptName,ClassName,StuID,StuName,Sex,Birthday,EnrollYear,GradYear FROM TB_Class TC,TB_Dept TD,TB_Student TS WHERE TD.DeptID=TS.DeptID AND TC.ClassID=TS.ClassID", StudentConn);
        SqlDataAdapter StudentAdapter = new SqlDataAdapter(StudentSelectCmd);
        DataSet StudentDS = new DataSet();
        StudentAdapter.Fill(StudentDS, "StudentTable");
        StudentConn.Close();
        this.StudentGView.DataSource = StudentDS.Tables["StudentTable"];
        this.StudentGView.DataBind();
    }

    protected void QueryBtn_Click1(object sender, EventArgs e)
    {
        string QuerySQL = "SELECT DeptName,ClassName,StuID,StuName,Sex,Birthday,EnrollYear,GradYear FROM TB_Class TC,TB_Dept TD,TB_Student TS WHERE TD.DeptID=TS.DeptID AND TC.ClassID=TS.ClassID";
        if (this.DeptDDList.SelectedValue != "全部")
        {
            QuerySQL += " AND TC.DeptID='" + this.DeptDDList.SelectedValue + "'";
        }
        SqlConnection QueryConn = new SqlConnection();
        QueryConn.ConnectionString =
        ConfigurationManager.ConnectionStrings["ConnStr"].ToString();
        QueryConn.Open();
        SqlCommand QueryCmd = new SqlCommand(QuerySQL, QueryConn);
        SqlDataAdapter QueryAdapter = new SqlDataAdapter(QueryCmd);
        DataSet QueryDS = new DataSet();
        QueryAdapter.Fill(QueryDS);
        QueryConn.Close();
        this.StudentGView.DataSource = QueryDS.Tables[0].DefaultView;
        this.StudentGView.DataBind();
    }

    protected void StuGView_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string StuID = this.StudentGView.DataKeys[e.RowIndex].Value.ToString();
        SqlConnection DeleteConn = new SqlConnection();
        DeleteConn.ConnectionString = ConfigurationManager.ConnectionStrings["ConnStr"].ToString();
        DeleteConn.Open();
        SqlCommand DeleteCmd = new SqlCommand("DELETE FROM TB_Student WHERE StuID='" + StuID + "'", DeleteConn);
        DeleteCmd.ExecuteNonQuery();
        DeleteConn.Close();
        Response.Write("<script language='javascript'>alert('删除学生记录成功');</script>");
        GridViewDataBind();

    }
}