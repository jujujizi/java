<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.zhangying.po.Stipend"%>
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
<form name="stipendForm" method="post" action="modifystipend.do?action=updatestipend" onSubmit="return stipendValidate();" >
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >薪金数据更新</th>
  </tr>
    <%
  Stipend e=(Stipend)request.getAttribute("stipend");
  if(e!=null){
  %>
  <tr>
    <td class="CPanel">
		<table border="0" cellpadding="0" cellspacing="0" style="width:80%" align="center">
		<tr><td align="left">
			<input type="submit"value="更新" class="button"/>　
			<input type="button" value="返回"  onclick="javascript:history.back();" class="button"/>
			</td>
		</tr>
        		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
				<legend>薪金数据</legend>
					  <table border="0" cellpadding="2" cellspacing="1" style="width:100%">
					  <input type="hidden" name="id" value="<%=e.getId()%>"/>
					  <tr>
					    <td nowrap align="right" >员工姓名：</td>
					    <td width="36%"><input name="name" type="text" class="input"  value="<%=e.getName()%>"/><span class="red">*</span></td>
					  <td nowrap align="right" >基本薪金：</td>
					 <td width="36%"><input name="basic" type="text"  id ="basic" class="input" value="<%=e.getBasic()%>"/><span class="red">*</span></td>
                      </tr>
					  <tr>
					    <td nowrap height="36" align="right">全&nbsp;勤&nbsp;奖：</td>
					    <td><input name="duty" type="text" class="input" id="duty" value="<%=e.getDuty()%>" /></td>
                           <td nowrap align="right">提&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;成：</td>
					    <td><input name="other" type="text" class="input" id="other" value="<%=e.getOther()%>"></td>
					    </tr>
					  <tr>
					    <td nowrap  height="36"><div align="right">罚&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;款：</div></td>
					    <td><input name="punishment" type="text" class="input" id="punishment" value="<%=e.getPunishment()%>" /></td>
                        					    <td nowrap align="right">发放时间：</td>
					    <td><input name="granttime" type="text" class="input" id="granttime"  value="<%=StringUtil.notNull(DateUtil.parseToString(e.getGranttime(),DateUtil.yyyyMMdd))%>" />
				        <span class="red">*</span></td>
					    </tr>
					  <tr>

					    <td colspan="4"><div align="center">注：金钱单位（元/RMB）</div></td>
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
		<input name="更新" type="submit" class="button" value="更新"/>　
		<input name="重置" type="reset" class="button" value="重置"/>
		</td>
  </tr>
	  <%}else{ %>
	  <tr>
	    <td height="22" colspan="4" align="center" >该信息不存在！！！</td>
	  </tr>
	  <%}%>
	</tabel>
</table>
</body>
</html>

