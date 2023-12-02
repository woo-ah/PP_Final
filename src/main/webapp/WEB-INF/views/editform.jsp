<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Edit Post</title>
	<style>
		body {
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
			background-color: #f4f4f4;
			margin: 0;
			padding: 0;
		}

		h1 {
			text-align: center;
			color: #006bb3;
		}

		form {
			width: 50%;
			margin: 20px auto;
			background-color: #fff;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			padding: 20px;
			border-radius: 5px;
		}

		table {
			width: 100%;
		}

		td {
			padding: 10px;
		}

		input[type="text"], textarea {
			width: calc(100% - 20px);
			padding: 10px;
			box-sizing: border-box;
			margin-bottom: 10px;
			border: 1px solid #ddd;
			border-radius: 5px;
			outline: none;
		}

		input[type="text"]:focus, textarea:focus {
			border-color: #006bb3;
			box-shadow: 0 0 5px rgba(0, 107, 179, 0.5);
		}

		textarea {
			resize: vertical;
		}

		input[type="submit"], input[type="button"] {
			background-color: #006bb3;
			color: white;
			padding: 10px 15px;
			border: none;
			border-radius: 3px;
			cursor: pointer;
		}

		input[type="submit"]:hover, input[type="button"]:hover {
			background-color: #004080;
		}
	</style>
</head>
<body>


<h1>Edit Post</h1>
<form:form modelAttribute="boardVO" method="POST" action="../editok">
	<form:hidden path="seq"/>
	<table id="edit">
		<tr><td>Category:</td><td><form:input path="category" /></td></tr>
		<tr><td>Name:</td><td><form:input path="title" /></td></tr>
		<tr><td>Location:</td><td><form:input path="writer" /></td></tr>
		<tr><td>Content:</td><td><form:textarea cols="50" rows="5" path="content" /></td></tr>
	</table>
	<tr><td colspan="2"><input type="submit" value="Edit Post"/>
		<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</form:form>

</body>
</html>