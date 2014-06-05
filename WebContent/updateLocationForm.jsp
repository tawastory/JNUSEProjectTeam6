<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title></title>
<jsp:include page="head.jsp" flush="false" />
</head>
<body>
<table>
<tr><div align="center">새로운 위치 갱신</tr><br>
<tr><div align="center"> 
<form id="uform" name="uform" method="post" action="updateLocationPro.jsp">
	위치 : <input id="location" name="location" type="text" title="새로운 이치"></input> 
	<input type="submit" value="등록"></input>
	<input type="hidden" name="id" type="text" value="<%=id%>"></input>
</tr>
</form>
</table>
</body>
</html>