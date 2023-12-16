<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>오무식카가</title>
    <style>
        body {
            #font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h1 {
            color: #006bb3;
        }

        h3 {
            color: #004080;
        }

        p {
            max-width: 600px;
            margin: 20px auto;
            line-height: 1.6;
        }

        a {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 20px;
            background-color: #006bb3;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #004080;
        }
    </style>
</head>
<body>
<h1>오무식카가</h1>
<h2>오늘 무슨 식당/카페 가지?</h2>
<P> 음식에 진심인 사람들이 가고 싶은 식당이나 카페를 게시판 형식으로 기록하는 서비스입니다. 평소에 SNS를 통해서 식당이나 카페를 추천 받으면 나중에 가야겠다 생각은 하지만 막상 다음에 어느 식당이나 카페를 갈지 정해야 할 때는 생각이 나지 않고는 합니다. 이럴 때 오무식카가 서비스를 활용해서 가고 싶은 곳을 관리할 수 있다면, 식당이나 카페를 정할 때 선택지를 한 눈에 확인하고 결정할 수 있습니다. </P>
<%--<P> <a href="board/list">게시판으로 이동</a></P>--%>
<P> <a href="login/login">로그인 이동</a></P>
</body>
</html>