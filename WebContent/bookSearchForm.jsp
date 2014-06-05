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
<legend>검색</legend>
<form id="searchform" name="searchform" method="post" action="bookSearchResult.jsp">
 책이름: <input id="title" name="title" type="text" title="책 이름" value=""><br>
BCID : <input id="isbn" name="isbn" type="text" title="BCID 코드 입력" value=""><br>
<input type="hidden" name="id" type="text" title="Cookie ID 전송">
<input type="submit" value="검색">
</form>
</fieldset>

</td>
</tr>
</table>
</body>
</html>