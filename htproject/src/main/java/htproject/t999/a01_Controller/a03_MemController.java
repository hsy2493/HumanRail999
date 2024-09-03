package htproject.t999.a01_Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import htproject.t999.a02_Service.a03_MemService;
import htproject.t999.vo.Member;

@Controller
public class a03_MemController {
	@Autowired(required = false)
	private a03_MemService service;
	
	@RequestMapping("/Member.do")
	public String MemberList() {
		//http://localhost:7080/htproject/Member.do
		return "WEB-INF/views/MemberShip/a02_member_data.jsp";	
	}   
    @RequestMapping("MemInsert.do")
    public String MemInsert(Member ins, Model d) {
        d.addAttribute("mlist", service.insertMem(ins));
        return "WEB-INF/views/MemberShip/a02_member_data.jsp";
    }
    
    @RequestMapping("checkid.do") //아이디 중복확인
    public String checkid(@RequestParam("m_id") String m_id, Model d) {
        d.addAttribute("checkid", service.checkid(m_id));
        return "jsonView";
    }
    
    
}