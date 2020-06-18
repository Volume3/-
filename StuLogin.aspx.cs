﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class StuLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void LoginSubmit_Click(object sender, EventArgs e)
    {
        if ((StuIDTextBox.Text == "") || (PassTextBox.Text == ""))
        {
            Response.Write("<SCRIPT language='javascript'>alert('学号或密码不能为空！！！');</SCRIPT>");
        }
        else
        {
            //学号密码框不为空处理代码
            string StuID = this.StuIDTextBox.Text; //用户名
            string StuPassword = this.PassTextBox.Text; //密码框
            SqlConnection TeachingWebConn = new SqlConnection("server = 127.0.0.1;uid=sa;pwd=123456;database=DB_TeachingMS");
            TeachingWebConn.Open();
            SqlCommand LoginCmd = new SqlCommand("SELECT * FROM TB_Student WHERE StuID='" + StuID + "'AND SPassword='" + StuPassword + "'", TeachingWebConn);
            SqlDataReader RsLogin = LoginCmd.ExecuteReader();
            RsLogin.Read();
            if (RsLogin.HasRows)
            {
                LoginOkLabel.Text = RsLogin["StuName"].ToString() + "欢迎您登录成功！";
                this.LoginPanel.Visible = false;
                this.LoginOkPanel.Visible = true;
                Session["StuID"] = RsLogin["StuID"].ToString();
                Session["StuName"] = RsLogin["StuName"].ToString();
            }
            else
            {
                //学号或密码错误处理代码;
                Response.Write("<SCRIPT language='javascript'>alert('学号或密码错误！！！'); </SCRIPT>");
            }
            RsLogin.Close();
            TeachingWebConn.Close();
        }
    }
    protected void LoginReset_Click(object sender, EventArgs e)
    {
        StuIDTextBox.Text = "";
        PassTextBox.Text = "";
    }
}