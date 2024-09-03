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
            width: 500px;
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
        .register-container .form-group {
            display: flex;
            align-items: center;
            margin-bottom: 15px;
        }
        .register-container .form-group label {
            width: 100px;
            margin-right: 10px;
            font-weight: bold;
        }
        .register-container .form-group input[type="text"],
        .register-container .form-group input[type="password"],
        .register-container .form-group input[type="email"],
        .register-container .form-group input[type="date"],
        .register-container .form-group select {
            flex: 1;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        .register-container .form-group button {
            margin-left: 10px;
            padding: 10px;
            background-color: #28a745;
            border: none;
            border-radius: 3px;
            color: white;
            cursor: pointer;
        }
        .register-container .form-group button:hover {
            background-color: #218838;
        }
        .register-container .submit-btn {
            width: 100%;
            padding: 10px;
            background-color: #28a745;
            border: none;
            border-radius: 3px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
        }
        .register-container .submit-btn:hover {
            background-color: #218838;
        }
        .register-container .section-title {
            background-color: #2f8f2f;
            color: white;
            padding: 5px 10px;
            border-radius: 3px;
            font-size: 14px;
            margin-bottom: 10px;
            display: inline-block;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <div class="register-container">
        <h2>회원가입</h2>
        <div class="section-title">회원정보 입력</div>
        <form id="registerForm" action="MemInsert.do" method="post">
            <div class="form-group">
                <label for="name">이름</label>
                <input type="text" id="name" name="m_name" value="" required>
            </div>
            <div class="form-group">
                <label for="birthdate">생년월일</label>
                <input type="date" id="birthdate" name="m_ageStr" value="" required>
            </div>
            <div class="form-group">
                <label for="userid">아이디</label>
                <input type="text" id="m_id" name="m_id" value="" required>
                <button type="button" id="checkIdBtn">아이디 중복확인</button>
                <div id="idCheckResult"></div>
            </div>
            <div class="form-group">
                <label for="password">비밀번호</label>
                <input type="password" id="password" name="m_pwd" value="" required>
            </div>
            <div class="form-group">
                <label for="confirm-password">비밀번호 일치확인</label>
                <input type="password" id="confirm-password" name="confirm-password" value="" required>
                <button type="button" id="pwdCheckBtn">확인</button>
                <div id="pwdCheckResult"></div>
            </div>
            <div class="form-group">
                <label for="email">이메일</label>
                <input type="email" id="email" name="m_email" value="" required>
            </div>
            <div class="form-group">
                <label for="phone">전화번호</label>
                <input type="text" id="phone" name="m_number" value=""  required>
            </div>
            <input type="button" value="등록" class="submit-btn" id="regBtn">
        </form>
        <script type="text/javascript">
    $("#regBtn").click(function() {
            if (confirm("등록하시겠습니까?")) {
                $("form").submit();
                alert('등록성공!');
                location.href="999//Membership//a03_end.jsp";
            }else{
            	alert('등록실패ㅜㅜ');
            }
            
    }) 
</script>
    </div>
    
    <script type="text/javascript">
    $(document).ready(function() {
        var path = "${path}";

        $('#checkIdBtn').click(function() {
            var m_id = $('#m_id').val();
            if (m_id === '') {
                alert('아이디를 입력해주세요.');
                return;
            }

            $.ajax({
                url: path + "/checkid.do",
                data: { m_id : m_id },
                dataType: "json",
                success: function(data) {
                    if (data.checkid > 0) {
                    	alert('이미 사용 중인 아이디입니다.');
                    } else {
                    	alert('사용 가능한 아이디 입니다.');
                    }
                },
                error: function(err) {
                    console.error(err);
                    alert('서버 오류가 발생했습니다.');
                }
            });
        });

        $('#pwdCheckBtn').click(function() {
            var pwd = $('#password').val();
            var confirmPwd = $('#confirm-password').val();

            if (pwd === confirmPwd) {
            	alert('비밀번호가 일치합니다.');
            } else {
            	alert('비밀번호를 다시 입력해주세요.');
           }
        });
      
        });
     
</script>   
</body>
</html>