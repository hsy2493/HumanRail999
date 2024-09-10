<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>휴먼철도999 로그인</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .login-container {
            width: 300px;
            margin: 100px auto;
            border: 1px solid #ccc;
            padding: 20px;
            box-shadow: 0px 0px 10px 0px #000;
            border-radius: 10px;
        }
        .login-container h2 {
            text-align: center;
        }
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 92%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .login-container button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }
        .login-container button:hover {
            background-color: #0056b3;
        }
        .login-container .links {
            text-align: center;
            margin-top: 10px;
            font-size: 12px;
        }
        .login-container .links a {
            margin: 0 5px;
            color: #007bff;
            text-decoration: none;
        }
        .login-container .links a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>휴먼철도999 로그인</h2>
         <c:if test="${not empty error}">
            <p class="error-message">${error}</p>
        </c:if>
          <form action="login.do" method="post">
            <label for="userid">아이디</label>
            <input type="text" id="userid" name="m_id" value="${param.m_id}" required>
            <label for="password">비밀번호</label>
            <input type="password" id="password" name="m_pwd" value="${param.m_pwd}" required>
            <button type="submit">확 인</button>
            <div class="links">
                <a href="#">아이디 찾기</a>
                <a href="#">비밀번호 재설정</a>
                <a href="/htproject/999/Membership/a01_meaning.jsp">회원가입</a>
            </div>
        </form>
    </div>
     <script type="text/javascript">
 var error= "${error}"
	 if(error != ""){
	    alert(error)
	 }
 </script> 	
</body>
</html>
