<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("euc-kr"); %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title>Book Register</title>
</head>
<body>
<br>
<table width="1270" border="0">
<tr>
<td>
<form id="enbookform" name="enbookform" method="post" action="bookRegisterPro.jsp">
  <fieldset>
    <legend width="1270">등록</legend>
    <span class="green_window" width="1270">
    	 책이름: <input id="title" name="title" type="text" title="책 이름">
    	BCID : <input id="bcid" name="bcid" type="text" title="BCID 코드 입력">
    	도서 위치 : <input id="location" name="location" type="text" title="도서 현재 위치 입력">
    	<input type="submit" value="등록">
  </fieldset>
</form>
</td>
</tr>
</table>
</body>
</html>