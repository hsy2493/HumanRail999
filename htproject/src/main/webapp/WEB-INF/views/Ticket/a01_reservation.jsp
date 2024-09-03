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
            margin-top: 20px;
            text-align: center;
        }
        .container {
            width: 360px;
            margin: 0 auto;
            text-align: left;
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 5px;
            display: inline-block;
            vertical-align: top;
        }
        .header {
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .form-group label {
            width: 35%;
            margin-right: 5px;
            text-align: left;
        }
        .form-group input, .form-group select {
            width: 55%;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        .form-group button {
            width: 25%;
            margin-left: 5px;
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
            padding: 5px 10px;
            box-sizing: border-box;
        }
        .submit-button {
            width: 100%;
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
            margin-top: 20px;
        }
        .inline-group {
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .table-container {
            width: 700px;
            margin: 20px auto;
            text-align: left;
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 5px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        .select-button {
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
            padding: 5px 10px;
            border-radius: 3px;
        }
        .reserve-button {
            background-color: #dc3545;
            color: white;
            border: none;
            cursor: pointer;
            padding: 10px 20px;
            border-radius: 3px;
            margin-top: 20px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">열차표 예매</div>
        <form method="post">
            <div class="form-group inline-group">
                <label for="ticket-type">열차종류</label>
                <input type="text" id="ticket-type" name="t_type" placeholder="KTX,무궁화호,새마을호,KTX 중 선택" />
            </div>
            <div class="form-group inline-group">
                <label for="departure">출발역</label>
                <input type="text" id="departure" name="t_depart" placeholder="출발역 입력하세요" />
            </div>
            <div class="form-group inline-group">
                <label for="arrival">도착역</label>
                <input type="text" id="arrival" name="t_arrive" placeholder="도착역 입력하세요" />
            </div>
            <button type="submit" class="submit-button">열차표 조회</button>
        </form>
    </div>

    <div class="table-container">
        <table> 
            <thead>
                <tr>
                    <th>열차 정보</th>
                    <th>출발<br>(지역/시간)</th>
                    <th>도착<br>(지역/시간)</th>              
                    <th>가격(원)</th>
                </tr>
            </thead>
           
            <tbody>
               <c:forEach var="t" items="${tlist}">
                <tr>
                    <td>${t.t_type}</td>
                    <td>${t.t_depart }<br>${t.t_dtime}</td>
                    <td>${t.t_arrive}<br>${t.t_atime}</td>
                    <td>${t.t_price} 원<br>
            
                      <form method="post" action="${path}/reserve.do">
                        <input type="hidden" name="t_type" value="${t.t_type}">
                        <input type="hidden" name="t_depart" value="${t.t_depart}">
                        <input type="hidden" name="t_dtime" value="${t.t_dtime}">
                        <input type="hidden" name="t_arrive" value="${t.t_arrive}">
                        <input type="hidden" name="t_atime" value="${t.t_atime}">
                      
                        <button type="submit" class="select-button">예매하기</button>
                    </form>
                </td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>