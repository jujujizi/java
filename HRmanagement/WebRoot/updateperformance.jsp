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
 <form name="performanceForm" method="post" action="modifyperformance.do?action=updateperformance" onSubmit="return PerformanceValidate()">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >修改绩效信息</th>
  </tr>
    <%
	  Performance e=(Performance)request.getAttribute("performance");
	  if(e!=null){
  %>
  <tr>
    <td class="CPanel">
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr>
			<td align="left">
			<input type="submit"value="保存" class="button"/>　
			<input type="button" value="返回"  onclick="javascript:history.back();" class="button"/>
			</td>
		</tr>
		<tr>
			<td width="100%">
				<fieldset style="height:100%;">
				<legend>修改绩效信息</legend>
						<input type="hidden" name="id" value="<%=e.getId()%>"/>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="11%">绩效分数：</td>
					    <td width="89%"><input name="score" type="text" class="input" value="<%=e.getScore()%>"/>
						<span class="red">*</span></td>
					    </tr>
					  <tr>
					    <td nowrap align="right" width="11%">增加工资：</td>
					    <td><input name="addmoney" type="text" class="input" value="<%=e.getAddmoney()%>"/>
						<span class="red">*</span></td>
					    </tr>
					    <tr>
					    <td nowrap align="right" width="11%">创建时间：</td>
					    <td width="89%"><input name="createtime" type="text" class="input" value="<%=e.getCreatetime()%>" disabled/>
						<span class="red">*</span></td>
					    </tr>
					  <tr>
					    <td width="11%" nowrap align="right">绩效说明：</td>
					    <td><textarea name="content" cols="100" rows="6" class="input" id="con"><%=e.getContent()%></textarea></td>
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
		<input name="提交" type="submit" class="button" value="保存"/>　
		
		<input name="重置" type="reset" class="button" value="重置"/></TD>
	</tr>
	<%}else{ %>
	  <tr>
	    <td height="22" colspan="2" align="center" >该信息不存在！！！</td>
	  </tr>
	  <%}%>
</tabel>
</table>
</div>
</form>	
</body>
</html>

