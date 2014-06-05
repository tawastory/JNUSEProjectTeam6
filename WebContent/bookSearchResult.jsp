<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "booksharing.book.BookDBBean" %>
<%@ page import = "booksharing.book.BookDataBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<% request.setCharacterEncoding("euc-kr"); %> 
   
 <jsp:useBean id="book" class="booksharing.book.BookDataBean">
     <jsp:setProperty name="book" property="*"/>
 </jsp:useBean>
  
<%
    int pageSize = 10;
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    int count = 0;
 	int i = 0;
    List<BookDataBean> bookList = null;
    BookDBBean bookPro = BookDBBean.getInstance();
    
    System.out.println(request.getParameter("title"));
    String name = request.getParameter("title");
    System.out.println(request.getParameter("isbn"));
    String isbn = request.getParameter("isbn");
    System.out.print("BookSearchResult -> Name : ");
	System.out.println(name);
	System.out.print("BookSearchResult -> ISBN : ");
	System.out.println(isbn);
	
    bookList = bookPro.searchBook(name, isbn);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<title></title>
<jsp:include page="head.jsp" flush="false" />
<script language="JavaScript" src="script.js"></script>
</head>
<body>
<jsp:include page="bookSearchForm.jsp" flush="false" />
<br></br>
<table width="1270" border="0">
 
<%	
	if(bookList==null){
%>
		<tr>
			<th width="100%" scope="col">검색된 책이 없습니다.</th>
		</tr>
<%	
	}else{
%>
		<tr>
		    <th width="10%" scope="col">책 번호</th>
		    <th width="30%" scope="col">책이름</th>
		    <th width="20%" scope="col">위치</th>
		    <th width="20%" scope="col">ISBN</th>
		    <th width="20%" scope="col">등록일</th>
		</tr>
	<%
		for(i=0; i<bookList.size(); i++){
			book = bookList.get(i);
	%>
		<tr>
	    <td><div align="center"><a href="bookDetail.jsp?id=<%=book.getId()%>"><%=book.getId()%></a></div></td>
	    <td><div align="center"><%=book.getName()%></div></td>
	    <td><div align="center"><%=book.getLocation()%></div></td>
	    <td><div align="center"><%=book.getIsbn()%></div></td>
	    <td><div align="center"><%=sdf.format(book.getRegdate())%></div></td>
	  	</tr>
<%
		}
	}
%>
</body>
</html>