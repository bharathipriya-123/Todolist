<%@page import="dto.Task"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Task task =(Task)request.getAttribute("task"); %>

<form action="updatetask" method="post">
task id:<input type="text" name="taskid" hidden=""  value="<%= task.getTaskid()%>"><br>
task title:<input type="text" name="tasktitle" value="<%= task.getTaskid() %>"><br>
task description:<input type="text" name="taskdescription" value="<%= task.getTaskdescription()%>"><br>
current task priority:<h4><%=task.getTaskpriority() %></h4>

Task priority:<br>

<label for="option1">
<input type="radio" id="optionl" value="low" name="taskpriority">low
</label><br>
<label for="option2">
<input type="radio" id="option2" value="medium" name="taskpriority">medium
</label><br>
<label for="option3">
<input type="radio" id="option3" value="high" name="taskpriority">high
</label><br>
due date:<input type="date" name="taskduedate" value="<%=task.getTaskduedate()%>"><br>
status:<input type="text" name="taskstatus" value="<%=task.getTaskstatus()%>"><br>

<input type="submit"> 
</form>

</body>
</html>