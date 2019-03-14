<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.zhangying.po.Job"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>人事管理信息系统</title>
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
      <th class="tablestyle_title" >人才详细信息</th>
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
					    <td align="right" width="9%">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</td>
					    <td width="36%"><%=j.getName()%></td>
					    <td width="20%"><div align="right">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</div></td>
					    <td width="43%"><%=new Byte("1").equals(j.getSex())?"男":"女"%>	  </tr>
					  <tr>
					  	<td width="20%"><div align="right">体&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;检：</div></td>
					    <td width="43%"><%=new Byte("1").equals(j.getHealth())?"通过":"未通过"%>
					    <td align="right" width="9%">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄：</td>
					    <td><%=j.getAge()%></td>

				        </td>
					  </tr>
					  <tr>
					  	<td><div align="right">职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;位：</div></td>
					    <td><%=j.getJob()%>
					    <td><div align="right">工作经验：</div></td>
					    <td><%=j.getExperience()%></td>
				        </td>
					 </tr>
					 <tr>
					    <td align="right">所学专业：</td>
					    <td><%=j.getSpecialty()%>
					    <td><div align="right">毕业学校：</div></td>
					    <td><%=j.getSchool()%></td>
					    </tr>
					  <tr>
					  	<td align="right">学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历：</td>
					    <td><%=j.getStudyeffort()%>
				        </td>
					    <td align="right">电&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;话：</td>
					    <td><%=j.getTel()%>
				        </td>
					  </tr>
					  <tr>
					  	<td><div align="right">Email：</div></td>
					    <td><%=j.getEmail()%></td>
					    <td align="right">详细经历：</td>
					    <td colspan="4"><%=j.getContent()%></td>
					  </tr>
					   <tr>
					    <td colspan="4" align="center">
					    <a href="updatejob.do?action=detailjob&id=<%=j.getId() %>">修改</a>&nbsp;&nbsp;
					    <a href="#" onclick="javascript:history.back();">返回</a></td>
					  </tr>
				</table>
				</fieldset>		
			</td>
		</tr>
		<%}else{ %>
		<tr>
			<td height="22" colspan="4" align="center" >该信息不存在！！！</td>
		</tr>
		<%}%>
		</table>
	 </td>
  </tr>
</tabel>	
</div>
</body>
</html>

