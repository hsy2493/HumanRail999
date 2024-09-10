--DROP TABLE Tarin_info;
--DELETE FROM Member_info;

--회원정보
SELECT * FROM Member_info;
CREATE TABLE Member_info(
  m_id varchar2(100) primary key,--아이디(pk)
  m_pwd varchar2(100),--비밀번호
  m_name varchar2(100),--이름
  m_age DATE,--생년월일 
  m_email varchar2(100),--이메일
  m_number varchar2(100)--전화번호
);
SELECT * FROM Member_info;
/*
  public class Member{
  private String m_id;
  private String m_authority;
  private String m_pwd;
  private String m_name;
  private Date m_age;
  private String m_email;
  private String m_number;
*/

--DROP TABLE Train_info;
--DROP TABLE Ticket_info;
INSERT INTO Member_info values('himan','1234','홍길동',to_date('2024-07-04', 'YYYY-MM-DD'),'himan@naver.com','010-1234-5678');
INSERT INTO Member_info values('human0619','0619','김휴먼',to_date('2024-06-19', 'YYYY-MM-DD'),'human0619@naver.com','010-1111-0619');
INSERT INTO Member_info values('Tarin999','9999','이구호',to_date('2024-09-09', 'YYYY-MM-DD'),'Tarin999@naver.com','010-9999-9999');
INSERT INTO Member_info values('h777','7777','황서영',to_date('2024-07-07', 'YYYY-MM-DD'),'h777@naver.com','010-7777-7777');
DELETE FROM Member_info values('tchang66','1234','김태형',to_date('2024-06-06', 'YYYY-MM-DD'),'tchang66@naver.com','010-6666-6666');

SELECT *FROM Ticket_info;
--열차정보
SELECT * FROM Train_info;
CREATE TABLE Train_info(
  t_num NUMBER primary key,--열차번호(pk)
  t_type varchar2(100),--열차종류
  t_depart varchar2(100),--승차역
  t_arrive varchar2(100),--하차역
  t_dtime varchar2(100),--출발시간
  t_atime varchar2(100),--도착시간
  t_station varchar2(100) --탑승지
);
/*
SELECT * 
FROM Train_info
WHERE t_depart LIKE '%'||#{t_depart}||'%'
AND t_arrive LIKE '%'||#{t_arrive}||'%';
*/

/*
public calss Train{
  private int t_num;
  private String t_type;
  private String t_depart;
  private String t_arrive;
  private String t_dtime;
  private String t_atime;
  private String t_station;
); 
*/
ALTER TABLE Member_info

INSERT INTO Train_info VALUES (1, 'KTX', '서울역', '부산역', '08:00', '11:30', '서울',30000); 
INSERT INTO Train_info VALUES (2, '무궁화호', '대전역', '광주역', '09:30', '11:30', '대전',12800);
INSERT INTO Train_info VALUES (4, '새마을호', '부산역', '대구역', '10:30', '12:20', '부산', 15000);
INSERT INTO Train_info VALUES (7, 'ITX', '수원역', '천안역', '14:30', '16:30', '수원', 7200);
INSERT INTO Train_info VALUES (10, 'ITX', '청량리역', '춘천역', '15:30', '18:00', '청량리',10000);
SELECT * FROM Train_info;

--예매표 정보 
SELECT * FROM Ticket_info;
CREATE TABLE Ticket_info (
  ticket_id VARCHAR2(100) PRIMARY KEY,  -- 예매표 아이디(pk)
  m_id VARCHAR2(100) REFERENCES Member_info(m_id),  -- 회원 아이디 (외래키)
  t_type VARCHAR2(100),             -- 열차 종류
  t_num NUMBER REFERENCES Train_info(t_num),  -- 열차 번호 (외래키)
  s_number VARCHAR2(100),           -- 좌석번호
  depart_date DATE,                 -- 탑승 날짜
  t_dtime VARCHAR2(100),            -- 출발 시간
  t_atime VARCHAR2(100),            -- 도착 시간
  t_depart VARCHAR2(100),           -- 승차 역
  t_arrive VARCHAR2(100),           -- 하차 역
  boarding_num VARCHAR2(100)        -- 승차 홈
);
SELECT *FROM Ticket_info;

DROP TABLE Ticket_info;
/*
public class Ticket{
  private String ticket_id;
  private String m_id;
  private String t_type;         
  private int t_num;
  private String s_number;
  private Date depart_date;
  private String t_dtime;
  private String t_atime;
  private String t_depart;
  private String t_arrive;
  private String boarding_num;
} 
 
*/
DELETE FROM TRAIN_INFO;
INSERT INTO Ticket_info VALUES ('TICKET001', 'himan', 'KTX', 1, 'A12', TO_DATE('2024-07-05', 'YYYY-MM-DD'), '08:00', '11:30', '서울역', '부산역', 'h1');
INSERT INTO Ticket_info VALUES ('TICKET002', 'human0619', '무궁화호', 2, 'B05', TO_DATE('2024-07-06', 'YYYY-MM-DD'), '09:30', '11:30', '대전역', '광주역', 'h2');
INSERT INTO Ticket_info (ticket_id, m_id, t_type, t_num, s_number, depart_date, t_dtime, t_atime, t_depart, t_arrive, boarding_num)
VALUES ('TICKET003', 'Tarin999', '새마을호', 4, 'C10', TO_DATE('2024-07-07', 'YYYY-MM-DD'), '10:30', '12:20', '부산역', '대구역', 'h3');

INSERT INTO Ticket_info (ticket_id, m_id, t_type, t_num, s_number, depart_date, t_dtime, t_atime, t_depart, t_arrive, boarding_num)
VALUES ('TICKET004', 'h777', 'ITX', 7, 'D20', TO_DATE('2024-07-08', 'YYYY-MM-DD'), '14:30', '16:30', '수원역', '천안역', 'h4');

INSERT INTO Ticket_info (ticket_id, m_id, t_type, t_num, s_number, depart_date, t_dtime, t_atime, t_depart, t_arrive, boarding_num)
VALUES ('TICKET005', 'himan', 'ITX', 10, 'E15', TO_DATE('2024-07-09', 'YYYY-MM-DD'), '15:30', '18:00', '청량리역', '춘천역', 'h5');

SELECT *FROM Ticket_info;

SELECT * FROM Train_info
             WHERE t_depart LIKE '%%' 
             AND t_arrive LIKE '%%';
             
            ALTER TABLE Train_info ADD t_price varchar2(100);
            
           SELECT * FROM Train_info;
           UPDATE TRAIN_INFO SET t_price = 7200
           WHERE t_num = 10;
           COMMIT;
           
          SELECT COUNT(*) FROM Member_info WHERE m_id = 'himan';