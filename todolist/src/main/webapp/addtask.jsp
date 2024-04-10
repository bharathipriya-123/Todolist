<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<div class="addtask">
<form action="addtask" method="post">
task id:<input type="text" name="taskid" required><br>
task title:<input type="text" name="tasktitle" required><br>
task description:<input type="text" name="taskdescription"><br>
options:
<br>
<label for="option1">
<input type="radio" id="option1" value="low" name="taskpriority">low
</label>
<br>
<label for="option2">
<input type="radio" id="option2" value="medium" name="taskpriority">medium
</label>
<br>
<label for="option3">
<input type="radio" id="option3" value="high" name="taskpriority">high
</label>
<br>
Due Date:<input type="date" name="taskduedate">
<br>
<input type="submit">
</form>
</div>
</body>
</html>