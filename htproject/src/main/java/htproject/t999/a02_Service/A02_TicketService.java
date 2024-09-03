package htproject.t999.a02_Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import htproject.t999.a03_Dao.A02_TicketDao;
import htproject.t999.vo.Train;

@Service
public class A02_TicketService {
	
	@Autowired(required =false)
	private A02_TicketDao dao;

	public List<Train> ticketInfo(Train sch){
		return dao.ticketInfo(sch);
	}

}
