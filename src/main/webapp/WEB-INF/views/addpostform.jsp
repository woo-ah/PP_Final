<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="com.example.board.BoardVO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add New Post</title>
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

        input[type="submit"] {
            background-color: #006bb3;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        a {
            text-decoration: none;
            color: #006bb3;
        }

        a:hover {
            color: #004080;
        }
    </style>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
    <table id="edit">
        <tr><td>Category:</td><td><input type="text" name="category"/></td></tr>
        <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>Writer:</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
        <tr><td><a href="list">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
    </table>
</form>

</body>
</html>