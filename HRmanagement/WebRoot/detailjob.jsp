<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.zhangying.po.Job"%>
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
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >�˲���ϸ��Ϣ</th>
  </tr>

  <tr>
    <td class="CPanel">
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<%
		 	Job j=(Job)request.getAttribute("job");
		 	if(j!=null){
		%>
		<tr>
			<td width="100%">
				<fieldset style="height:100%;">
				<table border="0" cellpadding="8" cellspacing="1" style="width:100%">
					  <tr>
					    <td align="right" width="9%">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����</td>
					    <td width="36%"><%=j.getName()%></td>
					    <td width="20%"><div align="right">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��</div></td>
					    <td width="43%"><%=new Byte("1").equals(j.getSex())?"��":"Ů"%>	  </tr>
					  <tr>
					  	<td width="20%"><div align="right">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�죺</div></td>
					    <td width="43%"><%=new Byte("1").equals(j.getHealth())?"ͨ��":"δͨ��"%>
					    <td align="right" width="9%">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�䣺</td>
					    <td><%=j.getAge()%></td>

				        </td>
					  </tr>
					  <tr>
					  	<td><div align="right">ְ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;λ��</div></td>
					    <td><%=j.getJob()%>
					    <td><div align="right">�������飺</div></td>
					    <td><%=j.getExperience()%></td>
				        </td>
					 </tr>
					 <tr>
					    <td align="right">��ѧרҵ��</td>
					    <td><%=j.getSpecialty()%>
					    <td><div align="right">��ҵѧУ��</div></td>
					    <td><%=j.getSchool()%></td>
					    </tr>
					  <tr>
					  	<td align="right">ѧ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����</td>
					    <td><%=j.getStudyeffort()%>
				        </td>
					    <td align="right">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����</td>
					    <td><%=j.getTel()%>
				        </td>
					  </tr>
					  <tr>
					  	<td><div align="right">Email��</div></td>
					    <td><%=j.getEmail()%></td>
					    <td align="right">��ϸ������</td>
					    <td colspan="4"><%=j.getContent()%></td>
					  </tr>
					   <tr>
					    <td colspan="4" align="center">
					    <a href="updatejob.do?action=detailjob&id=<%=j.getId() %>">�޸�</a>&nbsp;&nbsp;
					    <a href="#" onclick="javascript:history.back();">����</a></td>
					  </tr>
				</table>
				</fieldset>		
			</td>
		</tr>
		<%}else{ %>
		<tr>
			<td height="22" colspan="4" align="center" >����Ϣ�����ڣ�����</td>
		</tr>
		<%}%>
		</table>
	 </td>
  </tr>
</tabel>	
</div>
</body>
</html>

