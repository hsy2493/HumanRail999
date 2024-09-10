package htproject.t999.a01_Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import htproject.t999.a02_Service.A04_LoginService;

@Controller
public class A04_LoginController {
	@Autowired(required = false)
	private A04_LoginService service;
	 
	@GetMapping("/login.do")
	//http://localhost:7080/htproject/login.do
	 public String showLoginPage() { //로그인페이지 전체화면
		 return "WEB-INF\\views\\login\\a01_login_form.jsp";
	 }
	
	 @PostMapping("/login.do") //아이디, 비밀번호가 입력되지 않은 경우
	    public String login(@RequestParam("m_id") String m_id,
	                        @RequestParam("m_pwd") String m_pwd,
	                        Model d) {
	        if (m_id == null || m_pwd == null || m_id.isEmpty() || m_pwd.isEmpty()) {
	            d.addAttribute("error", "아이디와 비밀번호를 입력해주세요.");
	            return "WEB-INF\\views\\login\\a01_login_form.jsp"; //로그인 페이지로 재접속
	            
	        }

	        boolean isValidUser = service.login(m_id, m_pwd);

	        if (isValidUser) { //로그인 성공인 경우        	
	            d.addAttribute("loggedInUser", m_id);	
	            System.out.println("로그인 성공!");
	            return "999\\login\\main.jsp"; //메인페이지로 이동  
	            
	        } else { //로그인 실패인 경우
	            d.addAttribute("error", "입력한 내용을 확인해주세요.");
	            return "WEB-INF\\views\\login\\a01_login_form.jsp";  
	                   //로그인 페이지로 재이동
	        }
	    }
	}