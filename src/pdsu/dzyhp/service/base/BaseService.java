package pdsu.dzyhp.service.base;

import java.util.List;

import pdsu.dzyhp.bean.Base;
import pdsu.dzyhp.dto.BaseDto;

public interface BaseService {
	
	List<Base> findAll(Integer pageSize,Integer pageNum);
	
	Boolean delete(Integer baseId);
	
   
	Boolean add(Base base);
	
	Boolean updte(Base base);
	
	Base selectOneById(Integer baseId);
	
	
	List<BaseDto> selectBybaseNameAndStat(String baseName,String stat);
	

}
