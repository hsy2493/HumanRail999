package htproject.t999.vo;

import java.util.Date;

public class Member {
	  private String m_id;
	  private String m_pwd;
	  private String m_name;
	  private Date m_age;
	  private String m_ageStr; //생년월일 문자열로 받아오기
	  private String m_email;
	  private String m_number;
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pwd() {
		return m_pwd;
	}
	public void setM_pwd(String m_pwd) {
		this.m_pwd = m_pwd;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public Date getM_age() {
		return m_age;
	}
	public void setM_age(Date m_age) {
		this.m_age = m_age;
	}
	public String getM_ageStr() {
		return m_ageStr;
	}
	public void setM_ageStr(String m_ageStr) {
		this.m_ageStr = m_ageStr;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getM_number() {
		return m_number;
	}
	public void setM_number(String m_number) {
		this.m_number = m_number;
	}
	public Member(String m_id, String m_pwd, String m_name, Date m_age, String m_ageStr, String m_email,
			String m_number) {
		super();
		this.m_id = m_id;
		this.m_pwd = m_pwd;
		this.m_name = m_name;
		this.m_age = m_age;
		this.m_ageStr = m_ageStr;
		this.m_email = m_email;
		this.m_number = m_number;
	}
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}

}
