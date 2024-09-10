package htproject.t999.a03_Dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;


public interface A04_LoginDao {

	@Select("SELECT COUNT(*) FROM Member_info "
			+ "WHERE m_id = #{m_id} "
			+ "AND m_pwd = #{m_pwd}")
    boolean login(@Param("m_id") String m_id,
    		      @Param("m_pwd") String m_pwd);
}   