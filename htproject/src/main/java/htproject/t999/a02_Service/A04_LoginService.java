package htproject.t999.a02_Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import htproject.t999.a03_Dao.A04_LoginDao;

@Service
public class A04_LoginService {
    @Autowired(required=false)
    private A04_LoginDao dao;
    
    public boolean login(String m_id, String m_pwd) {
        return (dao != null && dao.login(m_id, m_pwd));
    }
}