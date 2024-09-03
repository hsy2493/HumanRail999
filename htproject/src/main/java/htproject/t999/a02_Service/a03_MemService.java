package htproject.t999.a02_Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import htproject.t999.a03_Dao.A03_MemDao;
import htproject.t999.vo.Member;

@Component
public class a03_MemService {
	@Autowired(required=false)
	 private A03_MemDao dao;

    public String insertMem(Member ins) { //등록
    	return dao.insertMem(ins)>0?"등록성공":"등록실패";
    }
    public int checkid(String m_id){ //아이디 중복확인
    	return dao.checkid(m_id);
    	
    }    
        
}

 