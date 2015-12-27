<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>INDEX</title>
</head>
<body>

	<%
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String today = df.format(date);
		
		
		try{
			
			int money = 100;
			int number = 13;
			request.setAttribute("result", (double)money / number);
	
		}catch(Exception e){
			request.setAttribute("result", "Error.");
		}
		
	%>

	<%! // global variables
	
	
	// some comments

	/**
		some comments
	*/

		int number = 0;
	
		int count() {
			return number++;
		}
		
	%>

	<!-- some comments  -->
	<%-- some comments --%>

	<p>
		<span>Current Time: </span><%=today%></p>


	<p>
		<span>Number: </span><%=count()%></p>

	<jsp:forward page="deal.jsp">
		<jsp:param name="userID" value="IDIDIDIDIDID" />
	</jsp:forward>




	<jsp:forward page="login.jsp">
		<jsp:param name="userID" value="IDIDIDIDIDID" />
	</jsp:forward>

	<%@ include file="copyright.jsp"%>


</body>
</html>