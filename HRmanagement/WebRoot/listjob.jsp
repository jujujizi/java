<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.zhangying.po.Job"%>
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
               <td height="20"><span class="newfont07">�˲���Ϣ�鿴</span></td>
          	 </tr>
              <tr>
                <td height="40" class="font42">
<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
<tr class="CTitle" >
	<td height="22" colspan="8" align="center" style="font-size:16px">�˲���Ϣ�б�</td>
</tr>
<tr bgcolor="#EEEEEE">
	<td width="4%" align="center" height="30">����</td>
	<td width="10%" align="center" >�Ա�</td>
    <td width="10%" align="center" >���</td>
	<td width="10%" align="center" >����</td>
	<td width="10%" align="center" >ְλ</td>
	<td width="10%" align="center" >��ѧרҵ</td>
	<td width="15%" align="center" >��������</td>
	<td width="12%" align="center" >ִ�в���</td>
</tr>
<% List list=(List)request.getAttribute("list");
if(list!=null&&list.size()>0){
Iterator it = list.iterator();
   while (it.hasNext()) {
			Job j = (Job) it.next();

%>
<%if(j.getIsstock()!=null&&j.getIsstock().intValue()==0){%>
	<tr  bgcolor="#FFFFFF">
	<td height="22" align="center" ><%=j.getName()%></td>
	<td height="22" align="center" ><%=new Byte("1").equals(j.getSex())?"��":"Ů"%></td>
	<td height="22" align="center" ><%=new Byte("1").equals(j.getHealth())?"ͨ��":"δͨ��"%></td>
	<td height="22" align="center" ><%=j.getAge()%></td>
	<td height="22" align="center" ><%=j.getJob()%></td>
	<td height="22" align="center" ><%=j.getSpecialty()%></td>
	<td height="22" align="center" ><%=j.getExperience()%></td>
		<td height="22" align="center" ><a href="detailjob.do?action=detailjob&id=<%=j.getId()%>">��ϸ</a>&nbsp;&nbsp;<a href="modifyjob.do?action=deletejob&&id=<%=j.getId()%>">ɾ��</a>
		<a href="modifyjob.do?action=updatejob&id=<%=j.getId()%>&isstock=1">���</a></td>
	<% }else{%>
	<tr  bgcolor="#FFFFFF">
	<td height="22" align="center" ><%=j.getName()%></td>
	<td height="22" align="center" ><%=new Byte("1").equals(j.getSex())?"��":"Ů"%></td>
	<td height="22" align="center" ><%=new Byte("1").equals(j.getHealth())?"ͨ��":"δͨ��"%></td>
	<td height="22" align="center" ><%=j.getAge()%></td>
	<td height="22" align="center" ><%=j.getJob()%></td>
	<td height="22" align="center" ><%=j.getSpecialty()%></td>
	<td height="22" align="center" ><%=j.getExperience()%></td>
	<td height="22" align="center" ><a href="detailjob.do?action=detailjob&id=<%=j.getId()%>">��ϸ</a>&nbsp;&nbsp;<a href="modifyjob.do?action=deletejob&isstock=1&id=<%=j.getId()%>">ɾ��</a>

	<%}%>
	</tr>
<%}
}else{
%>
<tr  bgcolor="#FFFFFF">
	<td height="22" colspan="8" align="center" >�Բ���û����Ϣ������</td>
</tr>
<%}%>
</table>
            </td>
        </tr>
      </table>
          </td>
        </tr>
</table>
</body>
</html>

