package htproject.t999.a03_Dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import htproject.t999.vo.Train;

public interface A02_TicketDao {
	@Select("select * from Train_info where t_type =#{t_type}")
	List<Train> ticketInfo(Train sch);
}
