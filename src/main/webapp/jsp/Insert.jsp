<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert Data</title>
<style type="text/css">
body{
background-image:
		url("https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg");
	background-size: cover;
}
</style>
</head>
<body>
 <h1>Student Information Form</h1>
    
    <form action="insert" method="post">
    <fieldset>
    <table>
        <tr>
            <td><label for="name">Name:</label></td>
            <td><input type="text" id="name" name="name" required></td>
        </tr>
        <tr>
            <td><label for="email">Email:</label></td>
            <td><input type="email" id="email" name="email" required></td>
        </tr>
        <tr>
            <td><label for="mobile">Mobile:</label></td>
            <td><input type="tel" id="mobile" name="mobile" required></td>
        </tr>
        <tr>
            <td><label for="dob">Date of Birth:</label></td>
            <td><input type="date" id="dob" name="dob" required></td>
        </tr>
        <tr>
            <td><label for="genger">Gender:</label></td>
            <td>
                <input type="radio" id="male" name="gender" value="Male"> Male
                <input type="radio" id="female" name="gender" value="Female"> Female
            </td>
        </tr>
        <tr>
            <td><label for="englishMarks">English Marks:</label></td>
            <td><input type="number" id="englishMarks" name="englishMarks" required min="0" max="100"></td>
        </tr>
        <tr>
            <td><label for="mathMarks">Math Marks:</label></td>
            <td><input type="number" id="mathMarks" name="mathMarks" required min="0" max="100"></td>
        </tr>
        <tr>
            <td><label for="scienceMarks">Science Marks:</label></td>
            <td><input type="number" id="scienceMarks" name="scienceMarks" required min="0" max="100"></td>
        </tr>
    </table>
    <input type="submit" value="Submit"><a href="/"><button>Cancel</button></a>
    </fieldset>
</form>

    



</body>
</html>