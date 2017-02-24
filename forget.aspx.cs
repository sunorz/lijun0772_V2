using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Collections.Generic;
using System.Data.SqlClient;


public partial class forget: System.Web.UI.Page
{
	//载入
    protected void Page_Load(object sender, EventArgs e)
    {
        footerload();
    }
    protected void btnpwdfg_Click(object sender, ImageClickEventArgs e)//用户名确认
    {
        yhm.Text = yhm.Text.Replace(" ", "");
        string txtname = yhm.Text;
        string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
        SqlConnection cnn = new SqlConnection(connectionString);
        //用户名未输入
        if (txtname == "")
        {
            aptips.InnerText = "请输入用户名！ ";            
        }
        //用户名已经输入
        else
        {
            Session["fgpwd"] = Encryption.Encode(txtname);
            string cname = Encryption.Encode(txtname);
            string st1="select adname from Admin where adname='" + @cname + "'";
            cnn.Open();
            SqlCommand cmd1=new SqlCommand(st1,cnn);
            SqlDataReader reader1 = cmd1.ExecuteReader();
            if (reader1.Read())//数据库有用户名
            {
                cnn.Close();
                string st2 = "select id from Admin where code is null and adname='" + @cname + "'";
                cnn.Open();
                SqlCommand cmd2 = new SqlCommand(st2, cnn);
                SqlDataReader reader2 = cmd2.ExecuteReader();
                if (reader2.Read())//用户名对应的验证码为空
                {
                    cnn.Close();
                    string flag = Rdom();//生成验证码
                    string st6 = "select * from Admin where code='" + @flag + "'";
                    SqlCommand cmd6 = new SqlCommand(st6, cnn);
                    cnn.Open();
                    SqlDataReader read6 = cmd6.ExecuteReader();
                    if (read6.Read())//避免验证码重复
                    {
                        flag=Rdom();
                    }
                    else
                    {
                        cnn.Close();
                        string st3 = "update Admin set code='" + @flag + "' where adname='" + @cname + "'";
                        cnn.Open();
                        SqlCommand cmd3 = new SqlCommand(st3, cnn);
                        cmd3.ExecuteNonQuery();
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script type='text/javascript'>alert('请耐心等待管理员联系！');window.location.href='adminlogin.aspx';</script>");
                        cnn.Close();
                    }
                }
                else
                {
                    cnn.Close();
                    this.divforget.Visible = false;
                    this.divcode.Visible = true;
                }

            }
            else
            {
                cnn.Close();
                aptips.InnerText = "没有这个用户！ "; 
            }
        }
        
    }
    //清除按钮
    protected void btnReset1_click(object sender, ImageClickEventArgs e)
    {
        yhm.Text = "";
        aptips.InnerText = "";

    }

    protected void btnReset2_click(object sender, ImageClickEventArgs e)
    {
        newpwd.Text = "";
        newconf.Text = "";
        aptips2.InnerText = "";
    }
    protected void btnReset3_click(object sender, ImageClickEventArgs e)
    {
        txtcode.Text = "";
        aptips3.InnerText = "";
    }

    protected void btnpwdr_Click(object sender, ImageClickEventArgs e)//密码重置阶段
    {
        string newpwd = this.newpwd.Text;
        string conf = this.newconf.Text;
        if (newpwd == "")
        {
            aptips2.InnerText = "请输入新密码！";

        }
        else if (conf == "")
        {
            aptips2.InnerText = "请确认新密码！";


        }
        else if (newpwd != conf)
        {
            aptips2.InnerText = "两次输入的新密码不一致！";


        }
        else
        {
            string confs = Encryption.Auth(conf);
            string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
            SqlConnection cnn = new SqlConnection(connectionString);
            string st = "update Admin set adpwd='" + @confs + "',code=null where adname='" + Session["fgpwd"] + "'";
            cnn.Open();
            SqlCommand cmd = new SqlCommand(st, cnn);
            cmd.ExecuteNonQuery();
            cnn.Close();
            Response.Write("<script type='text/javascript'>alert('设置成功,请重新登录！');window.location.href='adminlogin.aspx';</script>");
          
        }
    }
    protected void btnrescode_Click(object sender, ImageClickEventArgs e)//验证码
    {
        this.txtcode.Text = this.txtcode.Text.Replace(" ", "");
        string txtcode = this.txtcode.Text;
        if (txtcode == "")
        {
            aptips3.InnerText = "请输入验证码！";
        }
        else
        {
            string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
            SqlConnection cnn = new SqlConnection(connectionString);
            string st4 = "select id from Admin where code='" + @txtcode + "'";
            cnn.Open();
            SqlCommand cmd4 = new SqlCommand(st4, cnn);
            SqlDataReader reader4 = cmd4.ExecuteReader();
            if (reader4.Read())//如果验证码相同
            {
                cnn.Close();
                Page.ClientScript.RegisterStartupScript(this.GetType(), "", "<script type='text/javascript'>alert('验证成功！');</script>");
                this.divcode.Visible = false;
                this.divreset.Visible = true;

            }
            else
            {
                cnn.Close();
                aptips3.InnerText = "验证码错误，请重试！";
            }
        }

    }
   
    protected string Rdom()
    {
        Random rd = new Random();
        string str = "0123456789";
        string result = "";
        for (int i = 0; i < 6; i++)
        {
            result += str[rd.Next(str.Length)];
        }
        return result;
    }

        protected void btnBack_click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("adminlogin.aspx");
    }
        protected void footerload()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["lijunConnectionString"].ConnectionString;
            SqlConnection cnn = new SqlConnection(connectionString);
            string st = "select * from Class where classid=7";
            cnn.Open();
            SqlCommand cmd = new SqlCommand(st, cnn);
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                this.Label3.Text = Server.HtmlDecode(rdr["content"].ToString());
                cnn.Close();
            }
        }
}
