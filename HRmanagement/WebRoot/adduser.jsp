<%@ page contentType="text/html; charset=GBK" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>���¹�����Ϣϵͳ</title>
<link rel="stylesheet" rev="stylesheet" href="css/style.css " type="text/css" media="all" />
<script type="text/javascript" src="Js/typem.js"></script>
<script type="text/javascript" src="Js/js.js"></script>
<style type="text/css">
<!--
.atten {font-size:12px;font-weight:normal;color:#F00;}
-->
</style>
</head>
<body class="ContentBody">
<form name="userForm" method="post" action="modifyuser.do?action=adduser" onSubmit="return userValidate();">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >��Ա��Ϣ¼��</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table width="90%" border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr><td align="left">
		<input type="submit"value="����" class="button"/>��
			
			<input type="button" value="����"  onclick="javascript:history.back();" class="button"/>
		</td></tr>
		
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>��Ա��Ϣ</legend>
				<table width="100%" border="0" cellpadding="2" cellspacing="1" style="width:100%">
					<tr>
						<td nowrap align="right" width="9%">�û�����</td>
						<td width="36%">
						<input name="username" type="text" class="input" id="username"/>
						<span class="red">*</span></td>
				   		<td width="12%"><div align="right">��½���룺</div></td>
				   		<td width="43%">
				   		<input name="password" type="text" class="input" id="password" />
				      	<span class="red">*</span></tr>
					<tr>
						<td nowrap align="right" width="9%">�Ա�</td>
						<td>
						<input name="sex" type="radio" value="1" checked> ��
						<input name="sex" type="radio" value="0">Ů</td>
						<td><div align="right">�������ڣ�</div></td>
						<td>
						<input name="birthday" type="text" class="input" id="birthday">
						<span class="red">*</span></td>
					</tr>
					<tr>
						<td nowrap align="right">�Ƿ����Ա��</td>
						<td>
						<input name="isadminhelp" type="checkbox" onClick="javascript:adminChecked();" >
						<input type="hidden"  name="isadmin" ></td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td nowrap align="right">��Ա��飺</td>
						<td colspan="3">
						<textarea name="content" cols="100" rows="6" class="input" id="content"></textarea></td>
					</tr>
				</table>
			 		 <br />
				</fieldset>
				</TD>
			
		</TR>
		</TABLE>
	 </td>
  </tr>
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input name="�ύ" type="submit" class="button" value="����"/>��
			
			<input name="����" type="reset" class="button" value="����"/></TD>
		</TR>
		</TABLE>
</div>
</form>
</body>
</html>

