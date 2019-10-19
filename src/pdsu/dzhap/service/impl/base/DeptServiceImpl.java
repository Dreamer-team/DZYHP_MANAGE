package pdsu.dzhap.service.impl.base;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pdsu.dzhap.service.base.DeptService;
import pdsu.dzyhap.bean.Dept;
import pdsu.dzyhap.dao.DeptMapper;

@Service
@Transactional
public class DeptServiceImpl implements DeptService {

	@Autowired
	private  DeptMapper deptMapper;
	
	@Override
	public List<Dept> findAll() {
		return deptMapper.selectAll();
	}

	@Override
	public Dept findById(Integer deptId) {
		
		return deptMapper.selectByPrimaryKey(deptId);
	}

}
