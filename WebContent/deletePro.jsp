<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "booksharing.board.BoardDBBean" %>
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("euc-kr");%>

<%
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");
  String passwd = request.getParameter("passwd");

  BoardDBBean dbPro = BoardDBBean.getInstance();
  int check = dbPro.deleteArticle(num, passwd);

  if(check==1){
%>
	  <meta http-equiv="Refresh" content="0;url=boardList.jsp?pageNum=<%=pageNum%>" >
<% }else{%>
       <script language="JavaScript">      
       <!--      
         alert("��й�ȣ�� ���� �ʽ��ϴ�");
         history.go(-1);
       -->
      </script>
<%
    }
 %>