<%@ page contentType="text/html; charset=GBK" language="java" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="com.zhangying.po.Performance"%>
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
               <td height="20"><span class="newfont07">��Ч��Ϣ�鿴</span></td>
          	 </tr>
              <tr>
                <td height="40" class="font42">
				<table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">
				 <tr class="CTitle" >
                    	<td height="22" colspan="8" align="center" style="font-size:16px">��Ч��Ϣ�б�</td>
                  </tr>
                  <tr bgcolor="#EEEEEE">
				        <td height="22" width="5%" align="center" >��Ч����</td>
						<td height="22" width="5%" align="center" >���ӹ���</td>
						<td height="22" width="5%"align="center" >����ʱ��</td>
						<td height="22" width="50%"align="center" >��Ч˵��</td>
						<td height="22" width="15%"align="center" >ִ�в���</td>
                  </tr>
				<% List list=(List)request.getAttribute("list");
				 if(list!=null&&list.size()>0){
					Iterator it = list.iterator();
					   while (it.hasNext()) {
								Performance j = (Performance) it.next();
			
			  %>
			  <tr  bgcolor="#FFFFFF">
				<td height="22" align="center" ><%=j.getScore()%></td>
				<td height="22" align="center" ><%=j.getAddmoney()%></td>
				<td height="22" align="center" ><%=j.getCreatetime()%></td>
				<td height="22" align="center" ><%=j.getContent()%></td>
				<td height="22" align="center" ><a href="detailperformance.do?action=detailperformance&id=<%=j.getId()%>">��ϸ</a>&nbsp;&nbsp;<a href="modifyperformance.do?action=deleteperformance&id=<%=j.getId()%>">ɾ��</a></td>
			  </tr>
			  <%		}
			   }else{
			  %>
			  <tr  bgcolor="#FFFFFF">
				<td height="22" colspan="3" align="center" >�Բ���û����Ӽ�Ч��Ϣ������</td>
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

