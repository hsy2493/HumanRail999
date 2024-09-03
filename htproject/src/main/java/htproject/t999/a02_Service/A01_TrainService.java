package htproject.t999.a02_Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import htproject.t999.a03_Dao.A01_TrainDao;
import htproject.t999.vo.Train;

@Service
public class A01_TrainService {
    
    @Autowired(required = false)
    private A01_TrainDao dao;
    
    public List<Train> getTrainList(Train sch){
    	
    	if(sch.getT_depart()==null) sch.setT_depart("");
    	if(sch.getT_type()==null) sch.setT_type("");
    	if(sch.getT_arrive()==null) sch.setT_arrive("");
    	
    	return dao.getTrainList(sch);
    }
    
}