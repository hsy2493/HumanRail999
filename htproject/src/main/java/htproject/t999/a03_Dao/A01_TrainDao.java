package htproject.t999.a03_Dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import htproject.t999.vo.Train;


public interface A01_TrainDao {
    
    @Select("SELECT * FROM Train_info " +
             " WHERE t_depart LIKE '%'||#{t_depart}||'%' " +
             " AND t_arrive LIKE '%'||#{t_arrive}||'%' " +
             " AND t_type LIKE '%'||#{t_type}||'%' ")
    List<Train> getTrainList(Train sch);
    
}