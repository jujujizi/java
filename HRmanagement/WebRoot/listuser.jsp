<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.zhangying.po.Users"%>
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
          <td>
			<table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td height="20"><span class="newfont07">��Ա��Ϣ�鿴</span></td>
				</tr>
				<tr>
					<td height="40" class="font42">
<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
	<tr class="CTitle" >
		<td height="22" colspan="7" align="center" style="font-size:16px">��Ա��Ϣ�б�</td>
	</tr>
	<tr bgcolor="#EEEEEE">
		<td width="4%" align="center" height="30">�û���</td>
		<td width="10%" align="center" >��½����</td>
		<td width="10%" align="center" >�Ա�</td>
		<td width="10%" align="center" >��������</td>
		<td width="10%" align="center" >�Ƿ����Ա</td>
		<td width="15%" align="center" >���</td>
		<td width="12%" align="center" >ִ�в���</td>
	 </tr>
	<% List list=(List)request.getAttribute("list");
		if(list!=null&&list.size()>0){
		Iterator it = list.iterator();
	   	while (it.hasNext()) {
			Users u = (Users) it.next();
	%>
	<tr bgcolor="#FFFFFF">
		<td height="22" align="center" ><%=StringUtil.notNull(u.getUsername())%>&nbsp;</td>
		<td height="22" align="center" ><%=StringUtil.notNull(u.getPassword())%>&nbsp;</td>
		<td height="22" align="center" ><%=new Byte("1").equals(u.getSex())?"��":"Ů"%></td>
		<td height="22" align="center" ><%=StringUtil.notNull(DateUtil.parseToString(u.getBirthday(),DateUtil.yyyyMMdd))%>&nbsp;</td>
		<td height="22" align="center" ><%=new Byte("1").equals(u.getIsadmin())?"��":"��"%></td>
		<td height="22" align="center" ><%=StringUtil.notNull(u.getContent())%>&nbsp;</td>
		<td height="22" align="center" ><a href="selectuser.do?action=selectuser&id=<%=u.getId()%>">�޸�</a>&nbsp;&nbsp;<a href="modifyuser.do?action=deleteuser&id=<%=u.getId()%>">ɾ��</a></td>
	</tr>
   <%}
	}else{
	%>
	<tr>
		<td height="22" colspan="7" align="center" >�Բ�����ʱû����Ա��Ϣ������</td>
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

