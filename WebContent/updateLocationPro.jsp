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
			
	if(request.getParameter("location")==null||request.getParameter("location")==""){
		response.sendRedirect("updateLocationForm.jsp");
	}
	else{
		String location = request.getParameter("location");
		String id = request.getParameter("id");
		
	    BookDBBean bookdb = BookDBBean.getInstance();
	    bookdb.updateLocation(id, location);
	    
	    response.sendRedirect("bookDetail.jsp?id=" + id);
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