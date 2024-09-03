
package htproject.t999.a03_Dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import htproject.t999.vo.Member;

public interface A03_MemDao { 
	 //등록
	 @Insert("INSERT INTO Member_info (m_id, m_pwd, m_name, m_age, m_email, m_number)"
	 		+ "VALUES (#{m_id}, #{m_pwd}, #{m_name}, \r\n"
	 		+ "to_date(#{m_ageStr},'YYYY-MM-DD'), #{m_email}, #{m_number})")
	 int insertMem(Member ins);
	 
	  //아이디 중복확인
	 @Select("SELECT COUNT(*) FROM Member_info WHERE m_id = #{m_id}")
	 int checkid(@Param("m_id") String m_id); 
}