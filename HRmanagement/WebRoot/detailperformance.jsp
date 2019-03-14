<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.zhangying.po.Performance"%>
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
      <th class="tablestyle_title" >绩效信息详情</th>
  </tr>
   <%
	  Performance e=(Performance)request.getAttribute("performance");
	  if(e!=null){
  %>
  <tr>
    <td class="CPanel">
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr>
			<td width="100%">
				<fieldset style="height:100%;">
				<legend>绩效信息详情</legend>
					  <table border="0" cellpadding="8" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="11%">绩效分数：</td>
					    <td width="89%"><%=e.getScore()%></td>
					    </tr>
					  <tr>
					    <td nowrap align="right" width="11%">增加工资：</td>
					    <td><%=e.getAddmoney()%></td>
					    </tr>
					    <tr>
					    <td nowrap align="right" width="11%">创建时间：</td>
					    <td width="89%"><%=e.getCreatetime()%></td>
					    </tr>
					  <tr>
					    <td width="11%" nowrap align="right">绩效说明：</td>
					    <td><%=e.getContent()%></td>
					  </tr>
					  <tr>
   							 <td height="22" colspan="2" align="center" >
   							 <a href="updateperformance.do?action=detailperformance&id=<%=e.getId()%>">修改</a>&nbsp;&nbsp;
   							 <a href="#" onClick="javascript:history.back();">返回</a>
   							 </td>
 					  </tr>
					  </table>
				</fieldset>	
			</td>
		</tr>
		</table>
	 </td>
  </tr>
  <%}else{ %>
  <tr>
    <td height="22" colspan="2" align="center" >该信息不存在！！！</td>
  </tr>
  <%}%>
</table>	
</div>
</body>
</html>

