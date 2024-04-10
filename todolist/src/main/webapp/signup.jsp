<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.signup{
border:15px solid black;
height:400px;
width:550px;
background-color:white;
margin-left:480px;
margin-top:140px;
text-align:center;
font-size:45px;
font-weight:25px;
padding:50px;
border-radius:20px;
color:green;

}
body{
background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZoV6vS-h4cu8bxc-n0no1tLQLV1bIbYboaf9fNbtLWw&s");
background-repeat:no-repeat;
background-size:cover;

}

#submit1:hover
{
background-color:pink;
font-size:25px;

}
</style>
<body>
<table class="signup">
<div>
<form action="saveuser" method="post" enctype="multipart/form-data">

<tr>
<td><label for="id">ID:</label></td>
<td><input type="text" name="id" id="id"></td>
</tr>

<tr>
<td><label for="name">NAME:</label></td>
<td><input type="text" name="name" id="name"></td>
</tr>

<tr>
<td><label for="email">EMAIL:</label></td>
<td><input type="email" name="email"></td>
</tr>

<tr>
<td><label for="contact">CONTACT:</label></td>
<td><input type="text" name="contact" id="contact"></td>
</tr>

<tr>
<td><label for="password">PASSWORD:</label></td>
<td><input type="text" name="password" id="password"></td>
</tr>

<tr>
<td><label for="img">IMAGE:</label></td>
<td><input type="file" name="image" id="img"></td>
</tr>

<tr>
<td><input type="submit" id="submit1"></td>
</tr>

</form>
</div>
</table>
</body>
</html>