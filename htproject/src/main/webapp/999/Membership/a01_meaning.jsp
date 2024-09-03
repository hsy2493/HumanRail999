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
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f4f4f4;
        }
        .register-container {
            width: 400px;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .register-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .register-container .section {
            margin-bottom: 15px;
        }
        .register-container .section h3 {
            margin-bottom: 5px;
            font-size: 16px;
        }
        .register-container .section p {
            margin: 5px 0;
        }
        .register-container .section input[type="checkbox"] {
            margin-right: 5px;
        }
        .register-container .terms-button {
            background-color: #2f8f2f;
            border: none;
            border-radius: 3px;
            color: white;
            padding: 5px 10px;
            font-size: 12px;
            cursor: pointer;
        }
        .register-container .next-button {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            border: none;
            border-radius: 3px;
            color: white;
            font-size: 14px;
            cursor: pointer;
            margin-top: 20px;
        }
        .register-container .next-button:hover {
            background-color: #218838;
        }
        .register-container .all-terms {
            display: flex;
            align-items: center;
            margin-top: 10px;
        }
    </style>
    <script>
        function toggleAllTerms(checkbox) {
            var checkboxes = document.querySelectorAll('.section input[type="checkbox"]');
            checkboxes.forEach(function(cb) {
                cb.checked = checkbox.checked;
            });
        }
    </script>
</head>
<body>
    <div class="register-container">
        <h2>회원가입</h2>
        <form method="post">
            <div class="section">
                <h3>1. 휴먼철도999 회원약관동의</h3>
                <button type="button" class="terms-button">약관보기</button>
                <p><input type="checkbox" name="terms1" required> 회원약관 동의(필수)</p>
            </div>
            <div class="section">
                <h3>2. 개인정보 수집 및 이용에 대한 안내</h3>
                <button type="button" class="terms-button">약관보기</button>
                <p><input type="checkbox" name="terms2" required> 개인정보 수집 및 이용동의(필수)</p>
                <p><input type="checkbox" name="terms3" required> 개인정보의 제3자 제공 동의(필수)</p>
                <p><input type="checkbox" name="terms4"> 마케팅/홍보에 개인정보 이용 동의(선택)</p>
            </div>
            <div class="all-terms">
                <input type="checkbox" name="allTerms" id="allTerms" onclick="toggleAllTerms(this)">
                <label for="allTerms">전체 약관동의</label>
            </div>
            <input type="submit" value="다음" class="next-button">
        </form>
    </div>
<%
    if (request.getMethod().equalsIgnoreCase("POST")) {
        boolean terms1 = request.getParameter("terms1") != null;
        boolean terms2 = request.getParameter("terms2") != null;
        boolean terms3 = request.getParameter("terms3") != null;
        boolean terms4 = request.getParameter("terms4") != null;

        if (terms1 && terms2 && terms3) {
            response.sendRedirect(request.getContextPath() + "/Member.do");
        } else {
            %>
            <script type="text/javascript"> 
                alert("약관동의를 확인해주세요.");
            </script>
            <%
        }
    }
%>
</body>
</html>