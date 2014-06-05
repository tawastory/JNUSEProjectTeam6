<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "booksharing.book.BookDBBean" %>
<%@ page import = "booksharing.book.BookDataBean" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page import = "java.util.List" %>

<% request.setCharacterEncoding("euc-kr"); %> 

 <jsp:useBean id="book" class="booksharing.book.BookDataBean">
     <jsp:setProperty name="book" property="*"/>
 </jsp:useBean>
 
<%
	BookDBBean bookPro = BookDBBean.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	List<BookDataBean> bookList = null;
	String id = request.getParameter("id");
	bookList = bookPro.detailBook(id);	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
<jsp:include page="head.jsp" flush="false" />
</head>
<body>

<table width="1200" border="1" align=center>
<tr>
<center><b>도서정보</b></center>
</tr>
<br>
<%	if(bookList==null){	%>
	<tr><th width="100%">등록된 도서가 없습니다.</th></tr>
<%	}else{
		book = bookList.get(0);
%>
	<tr>
	<td width="30%"><div align="center">번호</td>
	<td width="70%"><div align="center"><%=book.getId()%></td>
	</tr>
	<tr>
	<td><div align="center">책 이름</td>
	<td><div align="center"><%=book.getName()%></td>
	</tr>
	<tr>
	<td><div align="center">ISBN</td>
	<td><div align="center"><%=book.getIsbn()%></td>
	</tr>
	<tr>
	<td><div align="center">등록일</td>
	<td><div align="center"><%=sdf.format(book.getRegdate())%></td>
	</tr>
	<tr>
	<td><div align="center">위치</td>
	<td><div align="center"><a href="updateLocationForm.jsp?id=<%=book.getId()%>"><%=book.getLocation()%></td>
	</tr>
<%	} %>
</body>
</html>