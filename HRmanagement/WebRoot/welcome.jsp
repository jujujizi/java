<%@ page contentType="text/html; charset=GBK" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�����㸮���¹�����Ϣϵͳ</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
-->
</style>
<link href="css/css.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE1 {
	font-size: 36px;
	color: #009999;
	font-family: "��������";
}
-->
</style>
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="147" background="images/top02.gif"><div align="center"><span class="STYLE1">���¹�����Ϣϵͳ</span></div></td>
  </tr>
</table>
<table width="562" border="0" align="center" cellpadding="0" cellspacing="0" class="right-table03">
  <tr>
    <td width="221"><table width="95%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
      
      <tr>
        <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="login-text01">
          <tr>
            <td align="center"><img src="images/ico13.gif" width="107" height="97" /></td>
          </tr>
          <tr>
            <td height="40" align="center">&nbsp;</td>
          </tr>
          
        </table></td>
        <td><img src="images/line01.gif" width="5" height="292" /></td>
      </tr>
    </table></td>
    <td>
	<form name="usersForm" method="post" action="logon.do?action=logon">
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
		<td colspan="2" align="center"><font color="red">${requestScope.error}</font></td>
      </tr>
      <tr>
        <td width="31%" height="35" class="login-text02">�û�����<br /></td>
        <td width="69%"><input name="username" type="text" id="username" size="20" /></td>
      </tr>
      <tr>
        <td height="35" class="login-text02">�ܡ��룺<br /></td>
        <td><input name="password" type="password" id="password" size="20" /></td>
      </tr>
      <tr>
        <td height="35">&nbsp;</td>
        <td><input type="submit" class="right-button01" value="ȷ�ϵ�¼"/>
          <input type="reset" class="right-button02" value="�� ��" /></td>
      </tr>
    </table>
	</form>
	</td>
  </tr>
</table>
</body>
</html>
