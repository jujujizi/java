<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.zhangying.po.Stipend"%>
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
               <td height="20"><span class="newfont07">н�����ݲ鿴</span></td>
          	 </tr>
              <tr>
                <td height="40" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="8" align="center" style="font-size:16px">н�������б�</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
				         <td height="22" align="center" >Ա������</td>
						<td height="22" align="center" >����н��</td>
						<td height="22" align="center" >ȫ�ڽ�</td>
						<td height="22" align="center" >���</td>
						<td height="22" align="center" >����</td>
						<td height="22" align="center" >����ʱ��</td>
						<td height="22" align="center" >�ܼ�</td>
						<td height="22" align="center" >ִ�в���</td>
                  </tr>
				<% List list=(List)request.getAttribute("list");
					 if(list!=null&&list.size()>0){
						Iterator it = list.iterator();
						   while (it.hasNext()) {
									Stipend j = (Stipend) it.next();
				
				  %>
				  <tr  bgcolor="#FFFFFF">
					<td height="22" align="center" ><%=j.getName()%></td>
					<td height="22" align="center" ><%=j.getBasic()%></td>
					<td height="22" align="center" ><%=j.getDuty()%></td>
			        <td height="22" align="center" ><%=j.getOther()%></td>
					<td height="22" align="center" ><%=j.getPunishment()%></td>
					<td height="22" align="center" ><%=StringUtil.notNull(DateUtil.parseToString(j.getGranttime(),DateUtil.yyyyMMdd))%>&nbsp;</td>
					<td height="22" align="center" ><%=j.getTotalize()%></td>
					<td height="22" align="center" ><a href="updatestipend.do?action=detailstipend&id=<%=j.getId()%>">�޸�</a>&nbsp;&nbsp;<a href="modifystipend.do?action=deletestipend&id=<%=j.getId()%>">ɾ��</a></td>
				  </tr>
				  <%		}
				   }else{
				  %>
				  <tr  bgcolor="#FFFFFF">
					<td height="22" colspan="8" align="center" >�Բ���û�����н����Ϣ������</td>
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

