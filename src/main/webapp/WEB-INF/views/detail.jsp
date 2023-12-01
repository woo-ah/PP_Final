<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Detail</title>
</head>
<body>

<h1>게시물 상세 정보</h1>
<table>
    <tr><td>Category:</td><td>${boardVO.category}</td></tr>
    <tr><td>Title:</td><td>${boardVO.title}</td></tr>
    <tr><td>Writer:</td><td>${boardVO.writer}</td></tr>
    <tr><td>Content:</td><td>${boardVO.content}</td></tr>
    <tr><td>RegDate:</td><td>${boardVO.regDate}</td></tr>
    <tr><td>UpdateDate:</td><td>${boardVO.updateDate}</td></tr>
</table>

<a href="../list">Back to List</a> <!-- 목록으로 돌아가기 -->

</body>
</html>
