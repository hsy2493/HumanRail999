package htproject.t999.a01_Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import htproject.t999.a02_Service.A02_TicketService;
import htproject.t999.vo.Train;

@Controller
public class A02_TicketController {

	@Autowired(required = false)
	private A02_TicketService service;
	
	@RequestMapping("reserve.do")//
    public String reserve(Train sch, Model d) {
		d.addAttribute("tInfo",service.ticketInfo(sch));
		
    	return "WEB-INF\\views\\Ticket\\a02_pay.jsp";
    }

}
