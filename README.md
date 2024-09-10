# <기차표 예매 사이트(4회차 프로젝트)>
1. 작업 기간 : 2024. 06. 19 ~ 2024. 07. 12
2. 주제 : 기차표 예매 사이트
3. 목적 : 기차 배차 시간 확인, 기차표 예매 등 고객들이 기차를 더 편리하게 이용하는 것을 주목적으로 진행된 기차표 예매 사이트 프로젝트 입니다.<br>
4. 주요 기능 : 로그인, 회원가입, 기차표 예매
- 역할 분담 : <br>
  ![image](https://github.com/user-attachments/assets/51f070c5-2c6a-4537-b7e5-54328ecc114f) <br>
- 일정표 : <br>
![개인 일정표](https://github.com/user-attachments/assets/8e704229-8bd5-4adf-abdc-1c4579e6eba3) <br>
- 요구사항 정의서 : <br>
(1) 로그인 & (2) 회원가입 & (3) 기차표 예매 <br>
![요구사항 정의서](https://github.com/user-attachments/assets/7692ee75-dd93-4c67-89e7-0226eb19defe) <br>
- 워크 플로우 : <br>
(1) 로그인 <br>
![로그인](https://github.com/user-attachments/assets/3dcf32c4-8720-417f-a034-31b206ccd6e8)<br><br>
(2) 회원가입 <br>
![회원가입](https://github.com/user-attachments/assets/1aa251ea-a036-490f-9934-3da49aa7f40e)<br><br>
(3) 기차표 예매 <br>
![열차표 예매](https://github.com/user-attachments/assets/46021288-2d87-4be0-ad6e-a39fe1d791a8)<br>

- 데이터 베이스(DataBase) 설계/ERD 설계 : <br> 
![image](https://github.com/user-attachments/assets/cfd4842b-76b6-4875-8164-1b0038974cea) <br>
- PPT 자료<br>
  https://github.com/hsy2493/HumanRail999/issues/1#issue-2509856113<br>
5. 작업 툴 :
  - Front-end : HTML, CSS, javascript, JSP <br>
  - Back-end : Java, Spring mvc, DataBase <br>
6. 작업 인원 : 3명

7. 결과물 : 
## <화면구현>
(1) 로그인<br>
![image](https://github.com/user-attachments/assets/3c9d6cdf-b992-4993-afec-29bcdba0dcc0) <br>
<설명> <br>
-아이디와 비밀번호를 입력한 후 로그인을 시도한다. <br>
-비회원인 경우, 회원가입을 권장한다. <br>
- 로그인 - 화면구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/webapp/WEB-INF/views/login/a01_login_form.jsp <br>

(2) 회원가입<br>
2-1). 약관동의 <br>
![image](https://github.com/user-attachments/assets/6a35b5d1-bf2a-4606-8f24-74bb0d499b06) <br>
<설명> <br>
-약관 내용 확인 후, 약관 내용에 동의(필수/선택)한다. <br>
- 회원가입 : 약관동의 - 화면구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/webapp/999/Membership/a01_meaning.jsp <br>

2-2). 회원정보 등록 <br>
![image](https://github.com/user-attachments/assets/3bd27ba6-d100-4dc6-9c18-22e21f981d5c) <br>
<설명> <br>
-회원정보 입력 후 등록 버튼을 선택한다. <br>
-단, 아이디 중복확인과 비밀번호 재확인을 진행해야 한다. <br> 
- 회원가입 : 회원정보 등록 - 화면구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/webapp/WEB-INF/views/MemberShip/a02_member_data.jsp <br>

2-3). 회원가입 완료 <br>
![image](https://github.com/user-attachments/assets/2179cc16-33bc-4024-b8dd-38db766500ac) <br>
<설명> <br>
-회원가입 완료 후, 로그인창 또는 메인창으로 이동이 가능하다. <br>
- 회원가입 : 회원가입 완료 - 화면구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/webapp/999/Membership/a03_end.jsp <br>

(3) 기차표 예매<br>
3-1) 기차표 조회 <br>
![image](https://github.com/user-attachments/assets/89c4ee70-74e3-4aa8-a253-ab7c286deab9) <br>
<설명> <br>
-열차종류 또는 출발역 또는 도착역 중 한가지 정보 입력 후, 열차표 조회 버튼을 클릭하면 예매표 검색이 가능하다. <br>
- 기차표 예매 : 기차표 조회 - 화면구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/webapp/WEB-INF/views/Ticket/a01_reservation.jsp <br>

3-2) 예매표 선택 <br>
![image](https://github.com/user-attachments/assets/703a25a3-df10-4e9e-b3ae-6cdd7d76a7bf) <br>
<설명> <br>
-예매할 기차표 확인 후, 예매하기 버튼을 클릭하면 기차표 예매가 가능하다. <br>
- 기차표 예매 : 예매표 선택 - 화면구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/webapp/WEB-INF/views/Ticket/a01_reservation.jsp <br>

3-3) 선택한 예매표 정보 조회 <br>
![image](https://github.com/user-attachments/assets/bc872893-5029-42e3-ab58-8977ded0cd6d) <br>
<설명> <br>
-예매할 기차표 정보가 조회된다. <br>
- 기차표 예매 : 선택한 정보 조회 - 화면구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/webapp/WEB-INF/views/Ticket/a02_pay.jsp <br>

## <기능구현>
(1) 로그인<br>

(2) 회원가입<br>

(3) 기차표 예매<br>

<b>8. 성과 : 
</b> 
