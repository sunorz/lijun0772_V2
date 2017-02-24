<%@ Page Language="C#" AutoEventWireup="true" CodeFile="messages.aspx.cs" Inherits="messages" Debug="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="style.css" />
<title>丽军数码-网上留言</title></head>
<style type="text/css">
        
#title{
	line-height:5pt;
	font-family:"楷书";
	font-size:20pt;
    color:#ffffff;
    line-height:40pt;
	letter-spacing:8pt;
}
    body {
	background-image: url(imgs/class/bg8.jpg);
	background-repeat: repeat;
	background-attachment: fixed;
}
    a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: underline;
}
a:active {
	text-decoration: none;
}
        .style3
        {
            font-size: small;
        }
        .pager{ width:100%;  margin:10px; line-height:20px; display:block;}
.pager span { border:1px solid #F59223; margin: 0 5px; padding: 1px 6px; float:left;background-color:#F59223;color:White;}
.pager a {
    border: 1px solid #F59223;
    display: block;
    overflow:hidden;
    float: left;
    margin: 0 5px;
    padding: 1px 6px;  color:#F59223;
    background-color:White; 
}
.pager a:hover { border:1 solid #F59223; background-color:#F59223; color:White; margin: 0 5px; padding: 1px 6px;}
        .style4
        {
            text-align: left;
        }
        </style>

<body>
<script language="JavaScript" type="text/javascript">
    var lang = navigator.language || navigator.userLanguage;
    if (lang.substr(0, 3) == "zh-") {
        document.write("<style type=\"text/css\" media=\"screen\">center{display:none;}</style>");
    }
</script>
    <form id="form1" runat="server">
<table width="1038" border="0" align="center" cellpadding="0" cellspacing="0" class="layoute">
  <tr>
    <td height="49px" valign="middle" class="foote"><img src="imgs/logo.gif" width="100px" height="49px"  border="0"/>丽军数码摄影器材维修中心<div style="position:absolute; right:20px; bottom:16px;"><a href="showsea.aspx" title="点此搜索"><img src="imgs/search.gif" width="40" height="48" border="0" /></a></div></td>
  </tr>
  <tr>
    <td height="20" colspan="9"></td>
  </tr>  
  <tr>
  <td colspan="9" height="20"><table align="center" cellspacing="0" width="1035px">
      <tr>
     <td  align="center" valign="middle" class="topbar"><a href="Default.aspx" class="ht">
         网站首页</a></td>
    <td   align="center" valign="middle" class="topbar"><a href="show.aspx" class="ht">配件展示</a></td>
    <td  align="center" valign="middle" class="topbar"><a href="error.aspx" class="ht">常见故障</a></td>
    <td   align="center" valign="middle" class="topbar"><a href="fix.aspx" class="ht">报修流程</a></td>
    <td  align="center" valign="middle" class="topbar"><a href="bbs.aspx" class="ht">维修论坛</a></td>
    <td  align="center" valign="middle" class="topbar"><a href="shop.aspx" class="ht">网店介绍</a></td>
   <td  align="center" valign="middle" class="topbar"><a href="staff.aspx" class="ht">人才招聘</a></td>
    <td  align="center" valign="middle" class="ht" bgcolor="#E96800">网上留言</td>
    <td   align="center" valign="middle" class="topbar"><a href="connect.aspx" class="ht">
        联系我们</a></td>
 </tr>
      </table>
      </td>
    
  </tr>
  <tr>
    <td colspan="9" align="center" valign="middle" cellpadding="0">
<table width="100%" border="0" cellspacing="0" cellpadding="12">
      <tr>
        <td colspan="9" align="middle" valign="middle"><img src="imgs/class/img8.gif" width="200" height="194" /><div id="title" runat="server">
            留言板</div></td></tr>
        <tr>
          <td align="center" bgcolor="#FFFFFF">              <br />
              <br /><asp:Button ID="btnnew" runat="server" BackColor="#FF7D23" 
                              BorderColor="#FF7D23" BorderStyle="Solid" class="txt3" Font-Bold="True" 
                              ForeColor="White" OnClick="btnnew_Click" Text="我要留言" 
                  UseSubmitBehavior="False" />
              <br />
              <br />
            </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF" align="center"><div id="dvmess" class="divcss" runat="server" visible="false" style="padding:0 0 40px 40px;">
             <div id="dvclose" style="text-align: right" visible="false">
              <asp:ImageButton ID="close" runat="server" title="关闭" 
                  ImageUrl="~/imgs/close.gif" CausesValidation="False" onclick="close_Click"/></div><br />
              <br />
              <asp:Label ID="Label3" runat="server" Text="留言者："></asp:Label>
              &nbsp;<asp:TextBox ID="txtcname" runat="server" BackColor="Silver" class="txt3" 
                  maxlength="20" Width="275px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtcname" CssClass="aptips" 
                    ErrorMessage="昵称不符合规定！" 
                    ValidationExpression="^[\u4E00-\u9FA5A\a-zA-Z][\u4E00-\u9FA5A-Za-z0-9]{4,14}$" Display="Dynamic"></asp:RegularExpressionValidator>
              <br /><span class="style3">
              <br />
              昵称请不要以数字开头，不能输入标点符号，且控制长度在5至15个字。
              <br />
              </span><br />
            <asp:Label ID="Label1" runat="server" Text="邮箱地址："></asp:Label>
            <asp:TextBox ID="txtcmail" runat="server" Width="285px" BackColor="Silver" class="txt3" maxlength="30"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtcmail" ErrorMessage="邮箱格式错误！" Font-Bold="True" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>            
              <br />
              <br />
              <br /><div style="text-align: left">
              <asp:Label ID="Label2" runat="server" Text="留言内容（限140字）："></asp:Label>   
            
            <br />
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                  ErrorMessage="留言字数不符合要求！" CssClass=aptips ControlToValidate="txtccontent" 
                      ValidationExpression="^[\s\S][\d\D]{3,139}$"></asp:RegularExpressionValidator></div>             

              <p style="text-align: left">

          <br />
            <asp:TextBox 
                    id="txtccontent" runat="server" Columns="125" Rows="8" 
                    BackColor="Silver" class="txt3" Height="121px" TextMode="MultiLine" 
                    Width="650px">报修请直接联系我们，请不要在此输入！</asp:TextBox>
              </p>
                       <br/> 
              <p style="text-align: center">

              <br />
            <asp:ImageButton ID="btnCommit" runat="server" ImageUrl="~/imgs/sendbtn.gif" OnClick="btnCommit_click"/>
            &nbsp; &nbsp;&nbsp;&nbsp;<asp:ImageButton ID="btnReset" runat="server" ImageUrl="~/imgs/clearbtn.gif" OnClick="btnReset_click"/></p></div></td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">
            <asp:DataList ID="dlmess" runat="server" BackColor="LightGoldenrodYellow" 
                  BorderColor="Tan" BorderWidth="1px" CellPadding="2"    ForeColor="Black" Font-Bold="False" 
                  Font-Italic="False" Font-Overline="False" Font-Strikeout="False" 
                  Font-Underline="False" HorizontalAlign="Left" Width="100%" 
                  AllowPaging="True" >
                  <FooterStyle BackColor="Tan" />
                  <AlternatingItemStyle BackColor="PaleGoldenrod" Wrap="True" />
                  <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                  <HeaderStyle BackColor="Tan" Font-Bold="True" />
                  <ItemTemplate>
                          <div class="style4">
                              <asp:Label ID="Label12" runat="server" Text='<%# Eval("rowsid","{0}楼") %>'></asp:Label>
                              <asp:Label ID="Label5" runat="server" style="color: #FF7D23;" 
                                  Text='<%#  Encryption.Decode(Eval("gname")) %>'></asp:Label>
                              <br />
                              <br />
                              &nbsp;&nbsp;
                              <asp:Label ID="Label6" runat="server" Text='<%#Encryption.Decode(Eval("pcontent"))%>'></asp:Label>
                              <br />
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style2">留言时间：</span>
                              <asp:Label ID="Label7" runat="server" 
                                  Text='<%# Eval("pposttime","{0:yyyy-M-d HH:mm:ss}") %>'></asp:Label>
                              <br />
                              <br />
                              &nbsp;&nbsp;
                              <asp:Label ID="Label9" runat="server" style="color: #FF7D23" Text="欧阳师傅" 
                                  Visible='<%# Eval("state") %>'></asp:Label>
                              &nbsp;<asp:Label ID="Label10" runat="server" Text="回复于" 
                                  Visible='<%# Eval("state") %>'></asp:Label>
                              &nbsp;<asp:Label ID="Label11" runat="server" 
                                  Text='<%# Eval("retime","{0:yyyy-M-d HH:mm:ss}：") %>' 
                                  Visible='<%# Eval("state") %>'></asp:Label>
                              <br />
                              <br />
                              &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text='<%# Eval("reply") %>'></asp:Label>
                              <br />
                              <br />
                          </div>
                        
                  </ItemTemplate>
              </asp:DataList>
              
            </td>
        </tr>
        <tr>
          <td bgcolor="#FFFFFF">
               <asp:Label ID="labPageNumber" runat="server"  Width="100%"></asp:Label>
                </td>
        </tr>
        </table>
<br />
        &nbsp;</td>
  </tr>
  <tr>
     <td  class="footer" height="40" colspan="9" bgcolor="#A1A1A1"><p>&nbsp;</p>
            <p>&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text=""></asp:Label></p>
         <p>&nbsp;&nbsp;<a href="adminlogin.aspx" class="foot">登录后台</a>&nbsp;&nbsp;<a href="http://jsunplace.tumblr.com/" class="foot">作者博客</a>&nbsp;&nbsp;<a href="about.html" class="foot">关于本站</a></p>
</td>
  </tr>
</table>
    </form>
</body>

</html>
