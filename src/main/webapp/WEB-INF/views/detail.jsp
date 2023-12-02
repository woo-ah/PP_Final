<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Detail</title>
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

        table {
            width: 50%;
            margin: 20px auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 5px;
        }

        td {
            padding: 10px;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #006bb3;
        }

        a:hover {
            color: #004080;
        }
    </style>
</head>
<body>

<h1>게시물 상세 정보</h1>
<table>
    <tr><td>Category:</td><td>${boardVO.category}</td></tr>
    <tr><td>Name:</td><td>${boardVO.title}</td></tr>
    <tr><td>Location:</td><td>${boardVO.writer}</td></tr>
    <tr><td>Content:</td><td>${boardVO.content}</td></tr>
    <tr><td>Registration Date:</td><td>${boardVO.regDate}</td></tr>
    <tr><td>UpdateDate:</td><td>${boardVO.updateDate}</td></tr>
</table>

<a href="../list">Back to List</a> <!-- 목록으로 돌아가기 -->

</body>
</html>