<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style type="text/css">
body{
background-image:
		url("https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg");
	background-size: cover;
}
</style>
</head>
<body>

<fieldset>
<h1 style="color: green ">${pass}</h1>
<h1 style="color: red ">${fail}</h1>
<h1>${msg}</h1>
<a href="insert"><button>Insert Record</button></a>

<a href="fetchall"><button >FetchAll Record</button></a>
</fieldset>
</body>
</html>