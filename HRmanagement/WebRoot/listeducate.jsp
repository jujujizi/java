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
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "����";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "����";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "����";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "����";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<link href="css/css.css" rel="stylesheet" type="text/css" />
<script type="text/JavaScript">

</script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  
  <tr>
    <td height="30">      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td height="62" background="images/nav04.gif">&nbsp;</td>
        </tr>
    </table></td></tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
          	 <tr>
               <td height="20"><span class="newfont07">	<%
	String educate=null;
	try{
		educate=request.getParameter("educate").toString();
	}catch(Exception e){
		educate="0";
	}
	if("1".equals(educate)){
		out.print("��ѵ�ܽ�鿴");
	  }else{
		out.print("��ѵ�ƻ��鿴");
	  }
	%></span></td>
          	 </tr>
              <tr>
                <td height="40" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="6" align="center" style="font-size:16px">
                    	<%
	if("1".equals(educate)){
		out.print("��ѵ�ܽ�");
	  }else{
		out.print("��ѵ�ƻ�");
	  }
	%>�б�</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
				        <td height="22" align="center" >��ѵ����</td>
						<td height="22" align="center" >��ʦ</td>
						<td height="22" align="center" >��ѵ��Ա</td>
						<td height="22" align="center" >��ʼʱ��</td>
						<td height="22" align="center" >����ʱ��</td>
						<td height="22" align="center" >ִ�в���</td>
                  </tr>
				<% List list=(List)request.getAttribute("list");
					 if(list!=null&&list.size()>0){
						Iterator it = list.iterator();
						   while (it.hasNext()) {
									Educate j = (Educate) it.next();
				
				  %>
				  <tr  bgcolor="#FFFFFF">
					<td height="22" align="center" ><%=j.getName()%></td>
					<td height="22" align="center" ><%=j.getTeacher()%></td>
					<td height="22" align="center" ><%=j.getStudent()%></td>
					<td height="22" align="center" ><%=StringUtil.notNull(DateUtil.parseToString(j.getBegintime(),DateUtil.yyyyMMdd))%></td>
					<td height="22" align="center" ><%=StringUtil.notNull(DateUtil.parseToString(j.getEndtime(),DateUtil.yyyyMMdd))%></td>
					<td height="22" align="center" ><a href="detaileducate.do?educate=<%=educate%>&action=detaileducate&id=<%=j.getId()%>">��ϸ</a>&nbsp;&nbsp;<a href="modifyeducate.do?action=deleteeducate&id=<%=j.getId()%>">ɾ��</a><%if(!"1".equals(educate)){%>&nbsp;&nbsp;<a href="updateeducate.do?educate=1&action=detaileducate&id=<%=j.getId()%>">��ѵ���</a><%}%></td>
				  </tr>
				  <%		}
				   }else{
				  %>
				  <tr  bgcolor="#FFFFFF">
					<td height="22" colspan="6" align="center" >�Բ���û����Ϣ������</td>
				  </tr>
				  <%}%>
            </table></td>
        </tr>
      </table>
          </td>
        </tr>
</table>
</body>
</html>