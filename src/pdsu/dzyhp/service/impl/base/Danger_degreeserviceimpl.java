package pdsu.dzyhp.service.impl.base;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pdsu.dzyhp.bean.Danger_degree;
import pdsu.dzyhp.dao.Danger_degreeMapper;
import pdsu.dzyhp.service.base.Danger_degreeservice;
@Service
@Transactional
public class Danger_degreeserviceimpl implements Danger_degreeservice {
@Autowired 
Danger_degreeMapper  danger_degreeMapper;
	@Override
	public List<Danger_degree> findAll() {
		// TODO Auto-generated method stub
		return danger_degreeMapper.selectAll();
	}

	@Override
	public Danger_degree findById(Integer degreeId) {
		// TODO Auto-generated method stub
		return danger_degreeMapper.selectByPrimaryKey(degreeId);
	}

}
