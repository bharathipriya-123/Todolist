<%@page import="dto.Task"%>
<%@page import="java.util.List"%>
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
<style>
table,td,th{
border:4px solid black;
border-collapse:collapse;
height:70px;
width:600px;
font-size:15px;
text-align:center;
}
.h3
{
font-size:50px;
font-weight:bolder;
color:blue;
}
.anc
{
font-size:50px;
}
</style>
<body>
<!-- get user from session -->


<% User user=(User)request.getSession().getAttribute("user"); %>
<%String username=user.getUsername(); %>

<h1>Welcome<%=username %></h1>
<h1>Email:<%=user.getUseremail() %></h1>

<% String image=new String(Base64.getEncoder().encode(user.getUserimage())); %>
<img src="data:image/jpeg;base64,<%=image %>",width="200",height="250">
<br>
<br>
<br>
 
<a href="addtask.jsp" class="anc">addtask</a>

<h3 class="h3">Tasks</h3>

<% List<Task> tasks=(List)request.getAttribute("tasks");%>

<table >
<tr >
<th>#</th>
<th>title</th>
<th>description</th>
<th>priority</th>
<th>due date</th>
<th>status</th>
<th>delete</th>
<th>edit</th>
</tr>
<%int num=1; %>
<%for(Task task:tasks) {%>
<tr>
<td><%=task.getTaskid() %></td>
<td><%=task.getTasktitle() %></td>
<td><%=task.getTaskdescription() %></td>
<td><%=task.getTaskpriority() %></td>
<td><%=task.getTaskduedate() %></td>
<td><%=task.getTaskstatus() %></td>
<td><a href="delete?id=<%=task.getTaskid()%>">delete</a></td>
<td><a href="edit?id=<%= task.getTaskid()%>">Edit</a></td>

</tr>
<% num += 1; %>
<%} %>
</table>
<br>
<br>
<br>
<a href="logout" class="anc">logout</a>

</body>
</html>