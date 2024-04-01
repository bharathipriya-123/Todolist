<%@page import="java.util.Base64"%>
<%@page import="dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- get user from session -->>
<h1>welcome</h1>

<% User user=(User)request.getSession().getAttribute("user"); %>
<%String username=user.getUsername(); %>

<h1>Welcome<%=username %></h1>
<h1>Email:<%=user.getUseremail() %></h1>

<% String image=new String(Base64.getEncoder().encode(user.getUserimage())); %>
<img src="data:image/jpeg;base64,<%=image %>",width="200",height="250">
 




</body>
</html>