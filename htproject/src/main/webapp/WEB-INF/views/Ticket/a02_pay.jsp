<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>열차표 예매</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 50px;
        }
        .container {
            width: 360px;
            margin: 0 auto;
            text-align: left;
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 5px;
        }
        .header {
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
        }
        .info {
            font-size: 18px;
            margin-bottom: 20px;
        }
        .info-title {
            text-align: center;
            font-weight: bold;
            margin-bottom: 20px;
        }
        .info-item {
            margin-bottom: 10px;
        }
        .price {
            color: red;
            font-weight: bold;
        }
        .submit-button {
            width: 100%;
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
            margin-top: 20px;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">열차표 예매정보</div>
        <div class="info">
        <c:forEach var="t" items="${tInfo}">
            <div class="info-title"></div>
            <div class="info-item">1. 열차종류 : ${t.t_type}</div>
            <div class="info-item">2. 출발역 : ${t.t_depart}</div>
            <div class="info-item">3. 도착역 : ${t.t_arrive}</div>
            <div class="info-item">4. 출발(날짜/시간) : ${t.t_dtime}</div>
            <div class="info-item">5. 도착(날짜/시간) : ${t.t_atime}</div> 
            <div class="info-item">6. 가격: ${t.t_price} 원</div> 
             
            </c:forEach>
        </div>
        <form method="post" action="PaymentProcessing.do">
            <button type="submit" class="submit-button">결제하기</button>
        </form>
    </div>
</body>
</html>