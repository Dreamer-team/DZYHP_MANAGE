package pdsu.dzhap.service.base;

import java.util.List;

import pdsu.dzyhap.bean.Base;
import pdsu.dzyhap.dto.BaseDto;
import pdsu.dzyhap.dto.BaseDto;
import pdsu.dzyhap.dto.BaseDto;
import pdsu.dzyhap.dto.BaseDto;
import pdsu.dzyhap.dto.BaseDto;
import pdsu.dzyhap.dto.BaseDto;
import pdsu.dzyhap.dto.BaseDto;
import pdsu.dzyhap.dto.BaseDto;
import pdsu.dzyhap.dto.BaseDto;
import pdsu.dzyhap.dto.BaseDto;
import pdsu.dzyhap.dto.BaseDto;
import pdsu.dzyhap.dto.BaseDto;
import pdsu.dzyhap.dto.BaseDto;
import pdsu.dzyhap.dto.BaseDto;

public interface BaseService {
	
	List<Base> findAll(Integer pageSize,Integer pageNum);
	
	Boolean delete(Integer baseId);
	
   
	Boolean add(Base base);
	
	Boolean updte(Base base);
	
	Base selectOneById(Integer baseId);
	
	
	List<BaseDto> selectBybaseNameAndStat(String baseName,String stat);
	

}
