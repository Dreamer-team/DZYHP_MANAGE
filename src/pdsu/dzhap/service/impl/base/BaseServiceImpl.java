package pdsu.dzhap.service.impl.base;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;

import pdsu.dzhap.constant.SystemConstant;
import pdsu.dzhap.service.base.BaseService;
import pdsu.dzyhap.bean.Base;
import pdsu.dzyhap.dao.BaseMapper;
import pdsu.dzyhap.dto.BaseDto;

@Service
public class BaseServiceImpl  implements BaseService{

	@Autowired
	private BaseMapper baseMapper;
	
	@Override
	public List<Base> findAll(Integer pageSize,Integer pageNum) {
		PageHelper.startPage(pageNum, pageSize);
		List<Base> list = baseMapper.query();
		 for (Base base : list) {
			  if(base.getBaseStat().equals(SystemConstant.USER_STATE2))
			  {
				
				  base.setBaseStatString(SystemConstant.USER_STATE_OPEN);
			  }
			  else {
				  base.setBaseStatString(SystemConstant.USER_STATE_CLOSE);
			    
			  }
		 }
		return list;
	}
	
	
	

	

	@Override
	public Boolean add(Base base) {
	    Random random=new Random();
	    int nextInt = random.nextInt(100);
		base.setBaseId(nextInt);
	    int i = baseMapper.insert(base);
		System.out.println(i+"hhhhhhhpppp");
	    if(i<0) {
			return true;
		}
		return false;
	}



	@Override
	public Boolean delete(Integer baseId) {
		
		  int i=0;
		try {
			i = baseMapper.deleteByPrimaryKey(baseId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		  if(i<0) {
			  return true;
		  }
		return false;
	}



	@Override
	public Boolean updte(Base base) {
		int i=0;
		try {
			 i = baseMapper.updateByPrimaryKey(base);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(i<0) {
			return true;
		}
		return false;
	}



	@Override
	public Base selectOneById(Integer baseId) {
		return baseMapper.selectOne(baseId);
	}



	@Override
	public List<BaseDto> selectBybaseNameAndStat(String baseName, String stat) {
		String statStr;
		if("2".equals(stat)) {
			statStr="0";
		}else {
			statStr=stat;
		}
		System.out.println(statStr+"     pppppppppp");
		List<Base> list = baseMapper.selectBybaseNameAndStat(baseName,statStr);
		List<BaseDto> listDto=new ArrayList<BaseDto>();
		 for (Base base : list) {
		    baseName=base.getBaseName();
			String baseType=base.getBaseType();
			String foundSrc=base.getFoundSrc();
			Integer deptId=base.getDept().getDeptId();
			String foundType=base.getFound_type().getFoundType();
			String name=base.getUsers().getName();
			String foundProj=base.getFoundProj();
			String foundDept=base.getDept().getDeptName();		
			String foundBudget=base.getFoundBudget();
			String remark=base.getRemark();
		    String foundStat=base.getFoundStat();
		    String baseStat;
			  if(base.getBaseStat().equals(SystemConstant.USER_STATE2))
			  {
				  base.setBaseStatString(SystemConstant.USER_STATE_OPEN);
				  baseStat=base.getBaseStatString();	
			  }
			  else {
				  base.setBaseStatString(SystemConstant.USER_STATE_CLOSE);    
				  baseStat=base.getBaseStatString();	
			  }
			BaseDto baseDto = new BaseDto(baseName, baseType,
				        foundType, deptId, name, foundSrc, 
				        foundBudget, foundProj, foundDept, 
				        foundStat,baseStat, remark);
			  System.out.println(baseDto);
			  listDto.add(baseDto);
		 }
		 
		return listDto;
	}
	
	
	
	
	

}
