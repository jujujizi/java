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
<form name="jobForm" method="post" action="modifyjob.do?action=addjob" onSubmit="return jobValidate();" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >ӦƸ��Ϣ¼��</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr><td align="left">
		<input type="submit"value="����" class="button"/>��
			
			<input type="button" value="����"  onclick="javascript:history.back();" class="button"/>
		</td></tr>
		
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>ӦƸ��Ϣ</legend>
				<table border="0" cellpadding="2" cellspacing="1" style="width:100%">
				<tr>
					<td nowrap align="right" width="11%">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����</td>
					<td width="31%"><input name="name" type="text" class="input">
					<span class="red">*</span></td>
					<td width="14%"><div align="right">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</div></td>
					<td width="44%">
					<input name="sex" type="radio" value="1" checked>��
					<input name="sex" type="radio" value="0">Ů  
				</tr>
				<tr>
                					<td width="11%"><div align="right">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�죺</div></td>
					<td width="31%">
					<input name="health" type="radio" value="1" checked>ͨ��
					<input name="health" type="radio" value="0">δͨ��  
					<td nowrap align="right" width="14%">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�䣺</td>
					<td><input name="age" type="text" class="input"></td>

					
				</tr>
					<tr>
                    <td><div align="right">ְ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;λ��</div></td>
					<td><input name="job" type="text" class="input">
					<span class="red">*</span></td>

					<td><div align="right">�������飺</div></td>
					<td><input name="experience" type="text" class="input">
					<span class="red">*</span></td>
				</tr>
				<tr>

                    <td nowrap align="right">��ѧרҵ��</td>
					<td><input name="specialty" type="text" class="input">
					<span class="red">*</span></td>
					<td><div align="right">��ҵѧУ��</div></td>
					<td><input name="school" type="text" class="input">
					<span class="red">*</span></td>
				</tr>
				<tr>
                	<td nowrap align="right">ѧ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����</td>
					<td><input name="studyeffort" type="text" class="input">
					<span class="red">*</span></td>
					<td nowrap align="right">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����</td>
					<td><input name="tel" type="text" class="input">
					<span class="red">*</span></td>

				</tr>
                <tr>
                	<td><div align="right">Email��</div></td>
					<td><input name="email" type="text" class="input">
					<span class="red">*</span></td>
                </tr>
				<tr>
					<td width="11%" nowrap align="right">��ϸ������</td>
					<td colspan="3"><textarea name="content" cols="100" rows="6" class="input" id="content">
					</textarea></td>
                    
				</tr>
				</table>
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