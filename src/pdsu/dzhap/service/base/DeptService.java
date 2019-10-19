package pdsu.dzhap.service.base;

import java.util.List;

import pdsu.dzyhap.bean.Dept;


public interface DeptService {

	List<Dept> findAll();
	
	Dept findById(Integer deptId);
}
