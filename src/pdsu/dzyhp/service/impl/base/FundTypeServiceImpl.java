package pdsu.dzyhp.service.impl.base;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pdsu.dzyhp.bean.Found_type;
import pdsu.dzyhp.dao.Found_typeMapper;
import pdsu.dzyhp.service.base.FundTypeService;

@Service
@Transactional
public class FundTypeServiceImpl implements FundTypeService {

	
	@Autowired 
	private  Found_typeMapper found_typeMapper;
	
	@Override
	public List<Found_type> findAll() {
		return found_typeMapper.selectAll();
	}

}
