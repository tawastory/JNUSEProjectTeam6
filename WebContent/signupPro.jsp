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
<title>ȸ������</title>
<jsp:include page="head.jsp" flush="false" />
</head>
<body>
	<jsp:getProperty name="member" property="id" />�� ȸ�������� �����մϴ�.
</body>
</html>