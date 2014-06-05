<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="booksharing.user.LogonDBBean" %>

<% request.setCharacterEncoding("euc-kr");%>

 <jsp:useBean id="member" class="booksharing.user.LogonDataBean">
     <jsp:setProperty name="member" property="*"/>
 </jsp:useBean>
 
 <%
    member.setReg_date(new Timestamp(System.currentTimeMillis()) );
    LogonDBBean logon = LogonDBBean.getInstance();
    logon.insertMember(member);
%>



<html>
<head>
<title>회원가입</title>
<jsp:include page="head.jsp" flush="false" />
</head>
<body>
	<jsp:getProperty name="member" property="id" />님 회원가입을 축하합니다.
</body>
</html>