<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.zhangying.po.Institution"%>
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
 <form name="institutionForm" method="post" action="modifyinstitution.do?action=updateinstitution" onSubmit="return institutionValidate()">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >�޸Ľ�����Ϣ</th>
  </tr>
    <%
	  Institution e=(Institution)request.getAttribute("institution");
	  if(e!=null){
  %>
  <tr>
    <td class="CPanel">
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr>
			<td align="left">
			<input type="submit"value="����" class="button"/>��
			<input type="button" value="����"  onclick="javascript:history.back();" class="button"/>
			</td>
		</tr>
		<tr>
			<td width="100%">
				<fieldset style="height:100%;">
				<legend>�޸Ľ�����Ϣ</legend>
						<input type="hidden" name="id" value="<%=e.getId()%>"/>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="11%">�������ƣ�</td>
					    <td width="89%"><input name="name" type="text" class="input" value="<%=e.getName()%>"/>
						<span class="red">*</span></td>
					    </tr>
					  <tr>
					    <td nowrap align="right" width="11%">����ԭ��</td>
					    <td><input name="reason" type="text" class="input" value="<%=e.getReason()%>"/>
						<span class="red">*</span></td>
					    </tr>
					    
					  <tr>
					    <td width="11%" nowrap align="right">����˵����</td>
					    <td><textarea name="explain" cols="100" rows="6" class="input" id="explain"><%=e.getExplain()%></textarea></td>
					  </tr>
					  </table>
				</fieldset>			
				</td>
			
		</tr>
		</table>
	</td>
 	</tr>
	<tr>
		<td colspan="2" align="center" height="50px">
		<input name="�ύ" type="submit" class="button" value="����"/>��
		
		<input name="����" type="reset" class="button" value="����"/></TD>
	</tr>
	<%}else{ %>
	  <tr>
	    <td height="22" colspan="2" align="center" >����Ϣ�����ڣ�����</td>
	  </tr>
	  <%}%>
</tabel>
</table>
</div>
</form>	
</body>
</html>

