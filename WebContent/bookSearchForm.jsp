<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title></title>
</head>
<body>
<table width="1270" border="0">
<tr>
<td>
<fieldset>
<legend>�˻�</legend>
<form id="searchform" name="searchform" method="post" action="bookSearchResult.jsp">
 å�̸�: <input id="title" name="title" type="text" title="å �̸�" value=""><br>
BCID : <input id="isbn" name="isbn" type="text" title="BCID �ڵ� �Է�" value=""><br>
<input type="hidden" name="id" type="text" title="Cookie ID ����">
<input type="submit" value="�˻�">
</form>
</fieldset>

</td>
</tr>
</table>
</body>
</html>