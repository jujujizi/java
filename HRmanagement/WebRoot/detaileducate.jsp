<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.zhangying.po.Educate"%>
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
<form name="educateForm" method="post" action="modifyeducate.do?action=addeducate" onsubmit="return educateValidate();">
<div class="MainDiv">
<table width="99%" border="0" cellpadding="0" cellspacing="0" class="CContent">
  <tr>
      <th class="tablestyle_title" >
      	<%
		String educate=null;
		try{
			educate=request.getParameter("educate").toString();
		}catch(Exception e){
			educate="0";
		}
		if("1".equals(educate)){
			out.print("��ѵ��ϸ�ܽ�");
		  }else{
			out.print("��ѵ��ϸ�ƻ�");
		  }
		%>
      </th>
  </tr>
    <%
	  Educate e=(Educate)request.getAttribute("educate");
	  if(e!=null){
  	%>
		<TR>
			<TD width="100%">
				<fieldset style="height:100%;">
					  <table border="0" cellpadding="8" cellspacing="1" style="width:100%">
					  <tr>
					    <td nowrap align="right" width="11%">��ѵ���ƣ�</td>
					    <td colspan="3"><%=e.getName()%>
					    </td>
					    </tr>
					  <tr>
					    <td nowrap align="right" width="11%">��ѵĿ�ģ�</td>
					    <td colspan="3"><%=e.getPurpose()%>
					    </td>
					    </tr>
					  <tr>
					    <td nowrap align="right">��ѵ��ʼʱ�䣺</td>
					    <td width="29%"><%=StringUtil.notNull(DateUtil.parseToString(e.getBegintime(),DateUtil.yyyyMMdd))%>
					    	</td>
					    <td width="18%">��ѵ����ʱ�䣺</td>
					    <td width="42%"><%=StringUtil.notNull(DateUtil.parseToString(e.getEndtime(),DateUtil.yyyyMMdd))%>
					    </td>
					  </tr>
					  <tr>
					    <td nowrap align="right">��ʦ��</td>
					    <td><%=e.getTeacher()%>
					    </td>
					    <td>��ѵ��Ա��</td>
					    <td><%=e.getStudent()%>
						</td>
					  </tr>
					    
					  <tr>
					    <td width="11%" nowrap align="right">��ѵ���ϣ�</td>
					    <td colspan="3"><%=e.getDatum()%></td>
					  </tr>
					   <%if("1".equals(educate)){%>
						  <tr>
						    <td width="11%" height="22" align="center" >��ѵЧ����</td>
						    <td height="22" colspan="3" align="left" ><%=StringUtil.notNull(e.getEffect())%>&nbsp;</td>
						  </tr>
						  <tr>
						    <td width="11%" height="22" align="center" >��ѵ�ܽ᣺</td>
						    <td height="22" colspan="3" align="left" ><%=StringUtil.notNull(e.getSummarize())%>&nbsp;</td>
						  </tr>
						  <tr>
					       <td colspan="4" align="center">
					       <a href="updateeducate.do?action=detaileducate&educate=1&id=<%=e.getId()%>">�޸�</a>&nbsp;&nbsp;
					       <a href="#" onclick="javascript:history.back();">����</a></td>
					      </tr>
						 <%}%>
					  </table>
				</fieldset>			
				</TD>
		</TR>
    <%}else{ %>
  	<tr>
    <td height="22" colspan="4" align="center" >����Ϣ�����ڣ�����</td>
  	</tr>
  	<%}%>
</TABLE>	
</div>
</form>
</body>
</html>

