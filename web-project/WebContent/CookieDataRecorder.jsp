<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.net.URLEncoder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cookie recorder</title>
</head>
<body>


<% 
	request.setCharacterEncoding("GB18030");
	String user = URLEncoder.encode(request.getParameter("user"), "ISO-8859-1"); 
	Cookie cookie = new Cookie("mrCookie", user+"#"+new java.util.Date().toString());

	cookie.setMaxAge(60*60*24*30);
	response.addCookie(cookie);
%>

<script type="text/javascript">window.location.href="index.jsp"</script>














</body>
</html>