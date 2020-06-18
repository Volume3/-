using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TeacherLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginSubmit_Click(object sender, EventArgs e)
    {
        if ((TeacherIDTextBox.Text == "") || (PassTextBox.Text == ""))
        {
            Response.Write("<SCRIPT language='javascript'>alert('工号或密码不能为空！！！');</SCRIPT>");
        }
        else
        {
            //学号密码框不为空处理代码
            string TeacherID = this.TeacherIDTextBox.Text; //用户名
            string TeacherPassword = this.PassTextBox.Text; //密码框
            SqlConnection TeachingWebConn = new SqlConnection("server = 127.0.0.1;uid=sa;pwd=123456;database=DB_TeachingMS");
            TeachingWebConn.Open();
            SqlCommand LoginCmd = new SqlCommand("SELECT * FROM TB_Teacher WHERE TeacherID='" + TeacherID + "'AND TPassword='" + TeacherPassword + "'", TeachingWebConn);
            SqlDataReader RsLogin = LoginCmd.ExecuteReader();
            RsLogin.Read();
            if (RsLogin.HasRows)
            {
                LoginOkLabel.Text = RsLogin["TeacherName"].ToString() + "欢迎您登录成功！";
                this.LoginPanel.Visible = false;
                this.LoginOkPanel.Visible = true;
                Session["TeacherID"] = RsLogin["TeacherID"].ToString();
                Session["TeacherName"] = RsLogin["TeacherName"].ToString();
            }
            else
            {
                //工号或密码错误处理代码;
                Response.Write("<SCRIPT language='javascript'>alert('工号或密码错误！！！'); </SCRIPT>");
            }
            RsLogin.Close();
            TeachingWebConn.Close();
        }
    }
    protected void LoginReset_Click(object sender, EventArgs e)
    {
        TeacherIDTextBox.Text = "";
        PassTextBox.Text = "";
    }
}