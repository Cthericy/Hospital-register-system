<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top.jsp' starting page</title>

  </head>
  
  <body bgcolor="#FFFFFF">
  <div align="center">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" >
    <tr>
      <td align="center"><h3><br>欢迎使用医院网上挂号系统</h3></td>
    </tr>
  </table>
     <table width="100%"  height="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td align="center"><img src="picture/321.jpg"></td>
    </tr>
  </table>
  </div>
  </body>
</html>
