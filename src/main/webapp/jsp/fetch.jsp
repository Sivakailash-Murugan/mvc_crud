<%@page import="dto.student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
	background-image:
		url("https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg");
	background-size: cover;
}
</style>
</head>
<body>

<h1>Welcome to display page</h1>
<table border="1">
<tr>
<th>Id</th>
<th>Name</th>
<th>Email</th>
<th>Mobile</th>
<th>MathsMark</th>
<th>ScienceMark</th>
<th>EnglishMark</th>
<th>Total Marks</th>
<th>Percentage</th>
<th>Result</th>
<th>Update</th>
<th>Delete</th>
</tr>

<%
List<student> list=(List<student>)request.getAttribute("list");

for(student student:list)
{
%>
<tr>
<td><%=student.getId()%></td>
<td><%=student.getName()%></td>
<td><%=student.getEmail()%></td>
<td><%=student.getMobile()%></td>
<td><%=student.getMathMarks()%></td>
<td><%=student.getScienceMarks()%></td>
<td><%=student.getEnglishMarks()%></td>
<td><%=student.getTotal()%></td>
<td><%=student.getPercentage()%></td>
<td><%=student.getResult()%></td>
<td><a href="update?id=<%=student.getId()%>"><button>Update</button></a></td>
<td><a href="delete?id=<%=student.getId()%>"><button>Delete</button></a></td>
</tr>

<%
}
%>
</table>
</body>
</html>