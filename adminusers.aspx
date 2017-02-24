<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminusers.aspx.cs" Inherits="adminusers" Debug="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css" href="adminsty.css" />
<title>新增用户</title>
</head>
<body>
<script language="JavaScript" type="text/javascript">
var lang = navigator.language || navigator.userLanguage;
if(lang.substr(0, 3) == "zh-"){
document.write("<style type=\"text/css\" media=\"screen\">center{display:none;}</style>"); }
</script>
<form id="form1" runat="server" autocomplete="off">
  <table width="1038" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="15" colspan="9" bgcolor="#585858"></td>
  <tr>
  <td  align="left" valign="middle" bgcolor="#ff7d23" class="style1">丽军数码</td>
   
  </tr>  <tr>
  <td height="15" colspan="9" align="center" bgcolor="#FFFFFF">
        <p><br />
        </p>
       
        <table width="90%" border="0" cellspacing="0" cellpadding="12">
          <tr>
            <td width="547" align="left"><h1>后台管理</h1>
             </td>
            <td align="right" nowrap="nowrap"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
            <td width="200" align="right">
                &nbsp;&nbsp;<asp:ImageButton ID="btnBack" runat="server" ImageUrl="~/imgs/back.gif" Height="32" Width="32" title="返回" OnClick="btnBack_click"/>&nbsp;&nbsp;<asp:ImageButton ID="btnLogout" runat="server" ImageUrl="~/imgs/logout.gif" Height="32" Width="32" title="登出" OnClick="btnLogout_click"/></td>
          </tr>
          <tr>
            <td height="3" colspan="3" align="left">
                
                          </td>
          </tr>
          <tr>
            <td colspan="3" align="center" valign="middle" width="500">
            <!--修改密码-->
            <div id="divuseradd" class="divcss" runat="server" align="center">
              <table width="100%" border="0" cellspacing="0" cellpadding="12">
                <tr>
                  <td align="right"><img src="imgs/user.gif" width="32" height="32" /></td>
                  <td align="left"><strong>新增用户：</strong></td>
                </tr>
                <tr>
                  <td colspan="2"><p>&nbsp;&nbsp;用户名：
                          <asp:TextBox ID="yhm" runat="server" BackColor="Silver" class="txt3" 
                          maxlength="20"></asp:TextBox>
                        </p>
                        <p><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;密码：
                        <asp:TextBox ID="mima" runat="server" BackColor="Silver" class="txt3" 
                                maxlength="20" TextMode="Password"></asp:TextBox>
                        </p>
                        <p><br />
                        密码确认：
                        <asp:TextBox ID="mimaqu" runat="server" BackColor="Silver" class="txt3" 
                                maxlength="20" TextMode="Password"></asp:TextBox>
                        </p>
                        <p>
                        超级用户：
                        <asp:CheckBox ID="cksuper" runat="server" Text="启用" />                        
                        <br />
                        </p><p align="center"><div id="aptips" class="aptips" runat="server"></div></td>
                </tr>
                <tr>
                  <td colspan="2"><asp:ImageButton ID="btnInsert" runat="server" 
                          ImageUrl="~/imgs/okbtn.gif" onclick="btnInsert_Click"/>
                      &nbsp;<asp:ImageButton ID="btnReset" runat="server" ImageUrl="~/imgs/clearbtn.gif" OnClick="btnReset_click"/></td>
                </tr>
              </table>
            </div>
</td>
          </tr>
          <tr>
            <td colspan="3" align="center" valign="middle" width="500">

               
            </td>
          </tr>
        </table>

          <p>
            <br />
            <br />
            

        </p>
 <br />

            
  </tr>
  
  <tr>
    <td align="center" valign="middle" bgcolor="#FFFFFF" cellpadding="0">
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<p><br />
             <br />
            <br />
             <br /></p></td>
  </tr>
  <tr>
    <td height="40" bgcolor="#A1A1A1"  class="footer"><p>&nbsp;</p>
                      <p> &nbsp;&nbsp;
                      <asp:Label ID="Label2" runat="server" Text=""></asp:Label></p></td></tr></table>          
    </form>
</body>
</html>
