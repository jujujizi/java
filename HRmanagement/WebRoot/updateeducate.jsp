<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.zhangying.po.Educate"%>
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
<form name="educateForm" method="post" action="modifyeducate.do?action=updateeducate" onSubmit="return educateValidate();">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >培训总结</th>
  </tr>
  <tr>
    <td class="CPanel">
		
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr><td align="left">
		<input type="submit"value="保存" class="button"/>　
			
			<input type="button" value="返回"  onclick="javascript:history.back();" class="button"/>
		</td></tr>
		<%
		  Educate e=(Educate)request.getAttribute("educate");
		  if(e!=null){
	  	%>
	  	<input type="hidden" name="id" value="<%=e.getId()%>"/>
	  	<input type="hidden" name="educate" value="<%=request.getParameter("educate")%>"/>
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>培训计划</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="11%">培训名称：</td>
					    <td colspan="3"><input name="name" type="text" class="input" value="<%=e.getName()%>" disabled/>
					    <span class="red">*</span></td>
					    </tr>
					  <tr>
					    <td nowrap align="right" width="11%">培训目的：</td>
					    <td colspan="3"><input type="text" name="purpose" class="input" value="<%=e.getPurpose()%>" disabled/>
					    <span class="red">*</span></td>
					    </tr>
					  <tr>
					    <td nowrap align="right">培训开始时间：</td>
					    <td width="29%"><input type="text" name="begintime" class="input" value="<%=StringUtil.notNull(DateUtil.parseToString(e.getBegintime(),DateUtil.yyyyMMdd))%>" disabled/>
					    	<span class="red">*</span></td>
					    <td width="18%">培训结束时间：</td>
					    <td width="42%"><input type="text" name="endtime" class="input" value="<%=StringUtil.notNull(DateUtil.parseToString(e.getEndtime(),DateUtil.yyyyMMdd))%>" disabled/>
					    <span class="red">*</span></td>
					  </tr>
					  <tr>
					    <td nowrap align="right">讲师：</td>
					    <td><input type="text" name="teacher" class="input" value="<%=e.getTeacher()%>" disabled/>
					    <span class="red">*</span></td>
					    <td>培训人员：</td>
					    <td><input type="text" name="student" class="input" value="<%=e.getStudent()%>" disabled/>
					    <span class="red">*</span>
						</td>
					  </tr>
					    
					  <tr>
					    <td width="11%" nowrap align="right">培训材料：</td>
					    <td colspan="3"><textarea name="datum" cols="100" rows="6" class="input" disabled><%=e.getDatum()%></textarea></td>
					  </tr>
					  
					  <tr align="center">
					    <td width="11%" height="22" >培训效果：</td>
					    <td height="22" colspan="3" align="left" ><input name="effect" type="text"  class="input" value="<%=StringUtil.notNull(e.getEffect())%>" size="50"></td>
					  </tr>
					  <tr align="center">
					    <td width="11%" height="22" >培训总结：</td>
					    <td height="22" colspan="3" align="left" ><textarea name="summarize" cols="50" rows="6"  class="input"><%=StringUtil.notNull(e.getSummarize())%></textarea></td>
					  </tr>
					  </table>
			  <br />
				</fieldset>			</TD>
			
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
			<input name="重置" type="reset" class="button" value="重置"/>
		</TD>
	</TR>
</TABLE>	
</div>
</form>
</body>
</html>

