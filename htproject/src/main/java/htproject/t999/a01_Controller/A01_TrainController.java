package htproject.t999.a01_Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import htproject.t999.a02_Service.A01_TrainService;
import htproject.t999.vo.Train;

@Controller
public class A01_TrainController {

    @Autowired(required = false)
    private A01_TrainService service;
    
    @RequestMapping("trainList.do")
    //http://localhost:7080/htproject/trainList.do
    public String trainList(Train sch, Model d) {
     d.addAttribute("tlist", service.getTrainList(sch));
    	return "WEB-INF\\views\\Ticket\\a01_reservation.jsp";
    }
    
}