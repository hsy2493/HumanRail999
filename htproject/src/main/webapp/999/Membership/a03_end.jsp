<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        .container {
            width: 500px;
            margin: 0 auto;
        }
        .header {
            font-size: 24px;
            margin-bottom: 20px;
        }
        .box {
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 5px;
            position: relative;
            margin-top: 20px; /* 박스와 상단 간격 조정 */
        }
        .success-message {
            font-size: 18px;
            margin-bottom: 20px;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 10px;
            text-decoration: none;
            border-radius: 5px;
            color: white;
        }
        .login-button {
            background-color: #007bff;
        }
        .main-button {
            background-color: #dc3545;
        }
        .completed-badge {
            display: inline-block;
            background-color: #20c997;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
            position: absolute;
            top: -30px; 
            left: -1px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">회원가입</div>
        <div class="box">
            <div class="completed-badge">회원가입 완료</div>
            <div class="success-message">
                축하드립니다! 휴먼철도999 회원가입이 완료되었습니다! <span style="font-size: 24px;">👍</span>
            </div>
            <div>
                <a href="/htproject/login.do" class="button login-button">로그인</a>
                <a href="/htproject/999/login/main.jsp" class="button main-button">메인창</a>
            </div>
        </div>
    </div>
</body>
</html>
