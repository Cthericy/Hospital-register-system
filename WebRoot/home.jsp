<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>ҽԺ���ϹҺ�ϵͳ</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="css/style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="js/checkform.js"></script>


</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<iframe src="top2.jsp" frameborder="0" marginheight="0" marginwidth="0" width="100%" height="60%" scrolling="no"></iframe>


<table width="70%" height="120%" border="0" cellpadding="0" cellspacing="0" class="main">
<tr valign="top">
<td><form action="DoctorAction?method=select" method="post" name="form1" onSubmit="return checkuser()">
  <table width="100%" border="0" cellpadding="2" cellspacing="1" class="inputTable">
    <tr>
    
      <td align="center"><font color="red">(*����ҽ���������߿���*)</font><input   type="text" name="infor"/><input type="submit" value="�����ѯ">&nbsp;&nbsp;&nbsp;<a href="DoctorAction?method=allDoctor">ȫ��ҽ����Ϣ</a></td>
    </tr>
    
    <tr>
      <td class="inputHeader">
	   <table width="100%"  border="0" cellpadding="0" cellspacing="1" class="inputbox">
          <tr>
            <td width="15%" align="center" class="inputHeader">ҽ������</td>
            <td width="15%" align="center" class="inputContent">����</td>
           <td width="15%" align="center" class="inputContent">ר��</td>
            <td width="15%" align="center" class="inputContent">ͷ��</td>
            <td width="15%" align="center" class="inputContent">�Ա�</td>
           <td width="15%" align="center" class="inputContent">����</td>        
          </tr>
          <c:forEach items="${list}" var="list">
		     <tr>
           <td width="15%" align="center" class="inputHeader"><a href="DoctorAction?method=infor&id=${list.id}" target="_blank">${list.name }</a></td>
            <td width="15%" align="center" class="inputContent">${list.type}</td>
            <td width="15%" align="center" class="inputContent">${list.specialty}</td>
            <td width="15%" align="center" class="inputContent">${list.title}</td>
            <td width="15%" align="center" class="inputContent">${list.sex}</td>
            <td width="15%" align="center" class="inputContent"><a href="DoctorAction?method=order&id=${list.id}">ԤԼ</a></td>        
          </tr>  
          </c:forEach>
        </table>
        
	  </td>
    </tr>
   
  </table>
  </form>  
</td>
</tr>
</table>
</body>
</html>