<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.net.URLDecoder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cookie Page</title>
</head>
<body>

<% 

	Cookie[] cookies = request.getCookies();
	String user = "";
	String date = "";
	
	if (cookies !=null){
		for(int i=0; i<cookies.length;i++){
			if(cookies[i].getName().equals("mrCookie")){
				user = URLDecoder.decode(cookies[i].getValue().split("#")[0]);
				date = cookies[i].getValue().split("#")[1];
			}
		}
	}
			
	if ("".equals(user) && "".equals(date)){
%>

	Dear guest, Welcome to Cookie.jsp
	<form action="CookieDataRecorder.jsp" method="post">
		Please input your name: <input name="user" type="text" value="">
		<input type="submit" value="confirm">
	</form> 

<%
	}else{
%>

	Welcome back, [<b><%=user %></b>] 
	Your registered at <%=date %>

<%} %>



</body>
</html>