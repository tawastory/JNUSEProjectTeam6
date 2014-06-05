<?xml version="1.0" encoding="EUC-KR" ?>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	String id = "";
	try{
	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
	   for(int i=0; i<cookies.length; i++){
          if(cookies[i].getName().equals("id")){
			id = cookies[i].getValue();
		  }
	   }
	   if(id.equals("")){
         id = "Guest";
	   }	
	}else{
		id = "Guest";
	}
  }catch(Exception e){}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<td width="626" height="38" align="right"> 
<table width="555" border="0" cellspacing="0" cellpadding="0">
	<tr> 
		<td>
		<b><%= id %></b>님이 로그인 하셨습니다.
		</td> 
		<td width="92"> 
         	<%if(id.equals("")||id.equals("Guest")){ %>
         		<a href="loginForm.jsp">Login</a>
         	<%}else{%>
         		<a href="cookieLogout.jsp">Logout</a>
         	<%}%>
		</td>
		<td width="87">&nbsp;</td>
	</tr>
	</td>                
	<img src="images/menu.jpg" alt="Main" width="1270" height="106" usemap="#Map" border="0" />
	<map name="Map" id="Map">
		<area shape="rect" coords="30,30,280,70" href="index.jsp"/>
		<area shape="rect" coords="856,60,998,103" href="about.jsp"/>
		<area shape="rect" coords="1001,59,1127,105" href="bookMain.jsp"/>
		<area shape="rect" coords="1127,62,1243,106" href="boardList.jsp"/>
	</map>
</table>
<br>