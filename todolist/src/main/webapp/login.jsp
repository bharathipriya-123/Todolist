<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.login{
border:10px solid black;
height:150px;
width:550px;

margin-left:480px;
margin-top:250px;
text-align:center;
font-size:45px;
padding:50px;
border-radius:10px;
color:pink;

}
body{
background-image:url("https://cdn.pixabay.com/photo/2022/11/30/13/24/login-7626818_960_720.jpg");
background-repeat:no-repeat;
background-size:cover;

}
#submit:hover
{
background-color:green;
font-size:25px;
color:blue;

}
</style>

<body>
<table class="login">
<div >

<form action="userlogin" method="post">
<tr>
<td><label for="email">EMAIL:</label></td>
<td><input type="text" name="email" id="email"></td>
</tr>

<tr>     
 <td> <label for="password">PASSWORD:</label></td>
<td><input type="text" name="password" id="password"></td>
</tr>
<tr>
<td><input type="submit" id="submit"></td>
</tr>
</form>

</div>

</table>
<%String message=(String)request.getAttribute("message"); %>
<%if(message!=null) {%>
<h3><%=message %></h3>
<%} %>
</body>
</html>