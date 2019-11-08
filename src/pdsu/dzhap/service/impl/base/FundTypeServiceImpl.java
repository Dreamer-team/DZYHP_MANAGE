package pdsu.dzhap.service.impl.base;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pdsu.dzhap.service.base.FundTypeService;
import pdsu.dzyhap.bean.Found_type;
import pdsu.dzyhap.dao.Found_typeMapper;

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
