# <기차표 예매 사이트(4회차 프로젝트)> 🚂
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
3-1). 기차표 조회 <br>
![image](https://github.com/user-attachments/assets/89c4ee70-74e3-4aa8-a253-ab7c286deab9) <br>
![image](https://github.com/user-attachments/assets/e9c2f633-032e-4f20-8836-ad8867e2b1f3) <br>
<설명> <br>
-열차종류 또는 출발역 또는 도착역 중 한가지 정보 입력 후, 열차표 조회 버튼을 클릭하면 예매표 검색이 가능하다. <br>
- 기차표 예매 : 기차표 조회 - 화면구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/webapp/WEB-INF/views/Ticket/a01_reservation.jsp <br>

3-2. 예매표 선택 <br>
![image](https://github.com/user-attachments/assets/703a25a3-df10-4e9e-b3ae-6cdd7d76a7bf) <br>
![image](https://github.com/user-attachments/assets/3caaa8e9-b92d-4d70-a5eb-39b3486ac4b5) <br>
<설명> <br>
-예매할 기차표 확인 후, 예매하기 버튼을 클릭하면 기차표 예매가 가능하다. <br>
- 기차표 예매 : 예매표 선택 - 화면구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/webapp/WEB-INF/views/Ticket/a01_reservation.jsp <br>

3-3). 선택한 예매표 정보 조회 <br>
![image](https://github.com/user-attachments/assets/bc872893-5029-42e3-ab58-8977ded0cd6d) <br>
<설명> <br>
-예매할 기차표 정보가 조회된다. <br>
- 기차표 예매 : 선택한 정보 조회 - 화면구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/webapp/WEB-INF/views/Ticket/a02_pay.jsp <br>

## <기능구현>
- 프로젝트에 사용된 Tomcat Server (localhost:7080) 정보 <br>
  ![image](https://github.com/user-attachments/assets/5ef71f24-b280-45dc-8a4c-243a86a0d16f) <br>
<br>

(1) 로그인<br>
<설명> <br>
-Database에 저장된 회원정보로 로그인을 시도한다. <br>
![image](https://github.com/user-attachments/assets/d0b0d14e-8868-4508-8fd6-c57fe1141aa9) <br>
-아이디 : h777, 비밀번호 : 7777 로 등록된 회원정보인 경우<br>
  ![image](https://github.com/user-attachments/assets/886a3c70-58c6-422c-8b4f-5f2f6d8abb3d) <br>

- 로그인 Dao - 기능구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/java/htproject/t999/a03_Dao/A04_LoginDao.java <br>
- 로그인 Service - 기능구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/java/htproject/t999/a02_Service/A04_LoginService.java <br>

-Spring mvc패턴에서 Controller의 Mapping 방식 중 Post 방식(PostMapping)을 활용하여, 로그인 유효성 검사를 진행한다. <br>
![image](https://github.com/user-attachments/assets/b832381e-a2a2-4ff7-8f6c-e6096f0c4f69) <br>
- 로그인 Controller - 기능구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/java/htproject/t999/a01_Controller/A04_LoginController.java <br>

- 로그인 실패 <br>
![image](https://github.com/user-attachments/assets/4929466e-8464-4bb5-8dd5-59787a05d978) <br>
<설명> <br>
-로그인 실패 시, model.addAttribute()를 활용하여, Console창에 실패 메세지가 출력되면서, 로그인 페이지에 머문다.
- 로그인 실패 - 기능구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/java/htproject/t999/a01_Controller/A04_LoginController.java <br>

- 로그인 성공<br>
![image](https://github.com/user-attachments/assets/aeb36e09-f0ca-4be9-8f2c-61192d8eb750) <br>
![image](https://github.com/user-attachments/assets/22ae0633-c733-40eb-a407-e27946c361d4) <br>
![image](https://github.com/user-attachments/assets/fb8b86d4-7574-476e-8b0e-8b39e7d3ac33) <br>
<설명> <br>
-로그인 성공 시, model.addAttribute()를 활용하여, Console창에 성공 메세지가 출력되면서, 메인 페이지로 리다이랙션 한다.
- 로그인 실패 - 기능구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/java/htproject/t999/a01_Controller/A04_LoginController.java <br>

(2) 회원가입<br>
2-2). 회원정보 등록 <br>
- 아이디 중복확인 <br>
![image](https://github.com/user-attachments/assets/87614df3-1c79-47d9-bc68-6278ad2f3dc4) <br>
![image](https://github.com/user-attachments/assets/9288c18f-b480-4833-829c-700db1bfa262) <br>

![image](https://github.com/user-attachments/assets/c51667b1-86bd-4865-99a2-8a598bf0c977) <br>
![image](https://github.com/user-attachments/assets/13d076a9-4313-443f-974e-d70b49ce2a1a) <br>
![image](https://github.com/user-attachments/assets/8dd6458b-cfd7-41b8-87d8-9ef0a50df302) <br>
<설명> <br>
-Spring mvc 패턴에서 Dao의 SQL문 중 Select를 활용하여, <br>
Database에 등록된 아이디와 유효성 검사(아이디 중복확인)가 된다.<br>
- 회원정보 등록 : 아이디 중복확인 Dao - 기능구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/java/htproject/t999/a03_Dao/A03_MemDao.java<br>


- 회원정보 입력 <br>
![image](https://github.com/user-attachments/assets/92aa0fb3-5b97-40e5-bd05-1e54b13ba29b) <br>

![image](https://github.com/user-attachments/assets/a80d2a46-5fff-49b0-bbca-0e1229edf302)<br>
![image](https://github.com/user-attachments/assets/c498f74c-4089-460d-95fe-dd54515fcc3f)<br>
![image](https://github.com/user-attachments/assets/cce2a90d-fefd-43a2-8bde-0f74c3f1babc)<br>
<설명><br>
-Spring mvc 패턴에서 Dao의 SQL문 중 Insert를 활용하여, <br>
입력한 회원정보를 Database에 등록된다.<br>
- 회원정보 등록 : 회원정보 입력 Dao - 기능구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/java/htproject/t999/a03_Dao/A03_MemDao.java<br>

(3) 기차표 예매<br>
3-1). 기차표 조회, 3-2). 예매표 선택 <br>
![image](https://github.com/user-attachments/assets/45b57416-7946-4196-9d11-3f2b26dddeae) <br>

![image](https://github.com/user-attachments/assets/eed04f05-34d1-45b2-92d3-2db4d1f0b6d7) <br>
![image](https://github.com/user-attachments/assets/a858680a-01d6-4f03-a2b8-287d99d42c15) <br>
![image](https://github.com/user-attachments/assets/9d4a3ee6-1182-40bc-a832-acb1affe73b1) <br>
<설명> <br>
-Spring mvc 패턴에서 Service의 Model 데이터를 List로 가져오고, 이를 Dao의 SQL문 중 Select를 활용하여, <br>
입력한 기차정보를 Database에서 조회하여 결과물을 가져온다. <br>
-예시로, 열차종류에 '무궁화' 입력 시, 무궁화호 열차정보가 검색결과로 나타난다.<br>
- 기차표 예매 : 기차표 조회 Service - 기능구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/java/htproject/t999/a02_Service/A01_TrainService.java <br>
- 기차표 예매 : 기차표 조회 Dao - 기능구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/java/htproject/t999/a03_Dao/A01_TrainDao.java<br>
3-3). 선택한 예매표 정보 조회 <br>
![image](https://github.com/user-attachments/assets/2d07ce41-425d-4ed1-955c-0b216c46eff9) <br>

![image](https://github.com/user-attachments/assets/9970c08c-d40a-44b8-bb6d-94ae3b3d0814) <br>
![image](https://github.com/user-attachments/assets/4e55239b-d343-4ede-8217-449e6be0661a) <br>
![image](https://github.com/user-attachments/assets/5d383924-56db-4358-89aa-ea9a34becc72) <br>

![image](https://github.com/user-attachments/assets/957e4503-fb44-4b3f-9697-b4da365b14a5) <br>

<설명> <br>
-Back-end에서 Spring mvc 패턴에서 Model과 Front-end에서 forEach문을 활용하여 연동 처리하고, <br>
기차표 조회 페이지(Back)에서 선택한 예매표 정보(Front)를 가져온다.<br>
- 기차표 예매 : 선택한 예매표 정보 조회 Controller - 기능구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/java/htproject/t999/a01_Controller/A02_TicketController.java <br>
- 기차표 예매 : 선택한 예매표 정보 조회 Service - 기능구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/java/htproject/t999/a02_Service/A02_TicketService.java <br>
- 기차표 예매 : 선택한 예매표 정보 조회 Dao - 기능구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/java/htproject/t999/a03_Dao/A02_TicketDao.java <br>
- 기차표 예매 : 선택한 예매표 정보 조회 vo (Model) - 기능구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/java/htproject/t999/vo/Train.java <br>
- 기차표 예매 : 선택한 예매표 정보 조회 view (Front 단) - 기능구현 상세 코드 <br>
https://github.com/hsy2493/HumanRail999/blob/master/htproject/src/main/webapp/WEB-INF/views/Ticket/a02_pay.jsp <br>

<b> 8. 성과 : 
- Spring mvc 패턴에서 SQL문의 등록(Insert)을 활용하여, 회원가입 중 회원정보 등록 기능구현이 가능함. <br>
- Spring mvc 패턴에서 SQL문의 검색(Select)을 활용하여, 기차표 예매 중 예매표 조회 기능구현이 가능함. <br>
- Back-end에서 Spring mvc을, Front-end에서 forEach문을 활용하여 연동처리 후, <br> 
  기차표 예매 중 선택한 예매표 정보를 다른 페이지로 넘겨 해당 정보만 조회 기능구현이 가능함. <br>
- 프로젝트 진행용 Dynamic Web Project 생성이 가능함.<br>
- GitHub에 프로젝트 Updata(commit)이 가능함.<br>
- 프로젝트 파일 BackUp의 중요성을 다시 한 번 더 깨달음. (항상 이중으로 백업하기) <br>
</b> 
