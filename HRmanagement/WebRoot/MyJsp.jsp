<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="com.zhangying.po.Job"%>
<%@ page import="com.zhangying.tool.*"%>
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
<form name="jobForm" method="post" action="modifyjob.do?action=updatejob" onSubmit="return jobValidate();" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >修改人事信息</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr><td align="left">
		<input type="submit"value="保存" class="button"/>　
			
			<input type="button" value="返回"  onclick="javascript:history.back();" class="button"/>
		</td></tr>
		<%
		  Job ob=(Job)request.getAttribute("job");
		  if(ob!=null){
	  	%>
	    <input type="hidden" name="id" value="<%=ob.getId()%>"/>
	  	<input type="hidden" name="job" value="<%=request.getParameter("job")%>"/>
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>人事信息</legend>
				<table border="0" cellpadding="2" cellspacing="1" style="width:100%">
				<tr>
					<td nowrap align="right" width="9%">姓名：</td>
					<td width="36%"><input name="name" type="text" class="input" value="<%=ob.getName()%>" disabled>
					<span class="red">*</span></td>
				</tr>
				<tr>
					<td nowrap align="right" width="9%">年龄：</td>
					<td><input name="age" type="text" class="input" value="<%=ob.getAge()%>" disabled ></td>
					<td><div align="right">职位：</div></td>
					<td><input name="job" type="text" class="input" value="<%=ob.getJob()%>" >
					<span class="red">*</span></td>
				</tr>
					<tr>
					<td nowrap align="right">所学专业：</td>
					<td><input name="specialty" type="text" class="input" value="<%=ob.getSpecialty()%>" disabled >
					<span class="red">*</span></td>
					<td><div align="right">工作经验：</div></td>
					<td><input name="experience" type="text" class="input" value="<%=ob.getExperience()%>" disabled  >
					<span class="red">*</span></td>
				</tr>
				<tr>
					<td nowrap align="right">学历：</td>
					<td><input name="studyeffort" type="text" class="input" value="<%=ob.getStudyeffort()%>" disabled  >
					<span class="red">*</span></td>
					<td><div align="right">毕业学校：</div></td>
					<td><input name="school" type="text" class="input" value="<%=ob.getSchool()%>" disabled  >
					<span class="red">*</span></td>
				</tr>
				<tr>
					<td nowrap align="right">电话：</td>
					<td><input name="tel" type="text" class="input" value="<%=ob.getTel()%>" disabled   >
					<span class="red">*</span></td>
					<td><div align="right">Email：</div></td>
					<td><input name="email" type="text" class="input"  value="<%=ob.getEmail()%>" disabled  >
					<span class="red">*</span></td>
				</tr>
				<tr>
					<td width="9%" nowrap align="right">详细经历：</td>
					<td colspan="3">
					<textarea name="content" cols="100" rows="6" class="input" id="content" value="<%=ob.getContent()%>" disabled  >
					</textarea></td>
				</tr>
				</table>
				</fieldset>		
			</TD>
			
		</TR>
		</TABLE>
	 </td>
  </tr>
   <%}else{ %>
  <tr>
    <td height="22" colspan="4" align="center" >该信息不存在！！！</td>
  </tr>
  <%}%>
		<TR>
			<TD colspan="2" align="center" height="50px">
			<input name="提交" type="submit" class="button" value="保存"/>　
			
			<input name="重置" type="reset" class="button" value="重置"/></TD>
		</TR>
		</TABLE>	
</div>
</form>
</body>
</html>

