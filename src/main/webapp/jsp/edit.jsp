<%@page import="dto.student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>\
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Data</title>
<style type="text/css">
body {
    background-image: url("https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg");
    background-size: cover;
}
</style>
</head>
<body>
<h1>${msg}</h1>


<form action="updateStudent" method="post">
    <fieldset>
        <th><input type="text" name="id" value="${student.getId()}" hidden="true" required></th>
        <table>
            <tr>
                <td><label for="name">Name:</label></td>
                <td><input type="text" id="name" name="name" value="${student.getName()}" required></td>
            </tr>
            <tr>
                <td><label for="email">Email:</label></td>
                <td><input type="email" id="email" name="email" value="${student.getEmail()}" required></td>
            </tr>
            <tr>
                <td><label for="mobile">Mobile:</label></td>
                <td><input type="tel" id="mobile" name="mobile" value="${student.getMobile()}" required></td>
            </tr>
            <tr>
                <td><label for="dob">Date of Birth:</label></td>
                <td><input type="date" id="dob" name="dob" value="${student.getDate()}" required></td>
            </tr>
            <tr>
                <td><label for="gender">Gender:</label></td>
                <td>
                    <input type="radio" id="male" name="gender" value="Male" ${student.getGender().equals("Male") ? "checked" : ""}> Male
                    <input type="radio" id="female" name="gender" value="Female" ${student.getGender().equals("Female") ? "checked" : ""}> Female
                </td>
            </tr>
            <tr>
                <td><label for="englishMarks">English Marks:</label></td>
                <td><input type="number" id="englishMarks" name="englishMarks" value="${student.getEnglishMarks()}" required min="0" max="100"></td>
            </tr>
            <tr>
                <td><label for="mathMarks">Math Marks:</label></td>
                <td><input type="number" id="mathMarks" name="mathMarks" value="${student.getMathMarks()}" required min="0" max="100"></td>
            </tr>
            <tr>
                <td><label for="scienceMarks">Science Marks:</label></td>
                <td><input type="number" id="scienceMarks" name="scienceMarks" value="${student.getScienceMarks()}" required min="0" max="100"></td>
            </tr>
        </table>
         <input type="submit" value="Submit">
        <a href="/"><button>Cancel</button></a>
    </fieldset>
</form>

</body>
</html>
