<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Print Request Content</title>
</head>
<body>


<br><br>客户提交信息方式： <%=request.getMethod() %>
<br>使用的协议： <%=request.getProtocol() %>
<br><br>获取发出请求字符串的客户端地址： <%=request.getRequestURL() %>
<br>获取提交数据的客户端IP地址： <%=request.getRemoteAddr() %>
<br><br>获取服务器端口号： <%=request.getServerPort() %>
<br>获取服务器名称： <%=request.getServerName() %>
<br><br>获取客户端主机名： <%=request.getRemoteHost() %>
<br>获取客户端请求的脚本文件路径： <%=request.getServletPath() %>
<br><br>获得http协议定义的文件头信息host值： <%=request.getHeader("host") %>
<br>获得http协议定义的文件头信息user-agent的值： <%=request.getHeader("user-agent") %>
<br>获得http协议定义的文件头信息accept-language的值： <%=request.getHeader("accept-language") %>
<br><br>获得请求文件的绝对路径： <%=request.getRealPath("hahahahaha") %>

</body>
</html>