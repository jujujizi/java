<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.zhangying.po.Stipend"%>
<%@ page import="com.zhangying.tool.*"%>
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
<form name="stipendForm" method="post" action="modifystipend.do?action=updatestipend" onSubmit="return stipendValidate();" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >н�����ݸ���</th>
  </tr>
    <%
  Stipend e=(Stipend)request.getAttribute("stipend");
  if(e!=null){
  %>
  <tr>
    <td class="CPanel">
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr><td align="left">
			<input type="submit"value="����" class="button"/>��
			<input type="button" value="����"  onclick="javascript:history.back();" class="button"/>
			</td>
		</tr>
        		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>н������</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <input type="hidden" name="id" value="<%=e.getId()%>"/>
					  <tr>
					    <td nowrap align="right" >Ա��������</td>
					    <td width="36%"><input name="name" type="text" class="input"  value="<%=e.getName()%>"/><span class="red">*</span></td>
					  <td nowrap align="right" >����н��</td>
					 <td width="36%"><input name="basic" type="text"  id ="basic" class="input" value="<%=e.getBasic()%>"/><span class="red">*</span></td>
                      </tr>
					  <tr>
					    <td nowrap height="36" align="right">ȫ&nbsp;��&nbsp;����</td>
					    <td><input name="duty" type="text" class="input" id="duty" value="<%=e.getDuty()%>" /></td>
                           <td nowrap align="right">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ɣ�</td>
					    <td><input name="other" type="text" class="input" id="other" value="<%=e.getOther()%>"></td>
					    </tr>
					  <tr>
					    <td nowrap  height="36"><div align="right">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�</div></td>
					    <td><input name="punishment" type="text" class="input" id="punishment" value="<%=e.getPunishment()%>" /></td>
                        					    <td nowrap align="right">����ʱ�䣺</td>
					    <td><input name="granttime" type="text" class="input" id="granttime"  value="<%=StringUtil.notNull(DateUtil.parseToString(e.getGranttime(),DateUtil.yyyyMMdd))%>" />
				        <span class="red">*</span></td>
					    </tr>
					  <tr>

					    <td colspan="4"><div align="center">ע����Ǯ��λ��Ԫ/RMB��</div></td>
					    </tr>
					  </table>
			  <br />
				</fieldset>			</TD>
			
		</TR>
		</TABLE>
    </td>
  </tr>
	<tr>
		<td colspan="2" align="center" height="32">
		<input name="����" type="submit" class="button" value="����"/>��
		<input name="����" type="reset" class="button" value="����"/>
		</td>
  </tr>
	  <%}else{ %>
	  <tr>
	    <td height="22" colspan="4" align="center" >����Ϣ�����ڣ�����</td>
	  </tr>
	  <%}%>
	</tabel>
</table>
</body>
</html>

