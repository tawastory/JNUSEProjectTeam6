<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="booksharing.book.BookDBBean" %>

<% request.setCharacterEncoding("euc-kr");%>

 <jsp:useBean id="book" class="booksharing.book.BookDataBean">
     <jsp:setProperty name="book" property="*"/>
 </jsp:useBean>
     
<%
	if(request.getParameter("title")==null){
		response.sendRedirect("bookMain.jsp");
	}
	else{
		book.setName(request.getParameter("title"));
		book.setIsbn(request.getParameter("bcid")); 
		book.setRegdate(new Timestamp(System.currentTimeMillis()));
		book.setLocation(request.getParameter("location"));
	    BookDBBean bookdb = BookDBBean.getInstance();
	    bookdb.insertBook(book);	
%>

<script>      
	alert("도서등록이 완료되었습니다.");
	history.go(-1);  
</script>

<%
    response.sendRedirect("bookMain.jsp");
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title></title>
</head>
<body>
</body>
</html>