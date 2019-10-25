package pdsu.dzhap.service.base;

import java.util.List;

import pdsu.dzyhap.bean.Roles;


public interface RoleService {
   
	List<Roles> findAll();
	
	
	Boolean deleteByIdUser(Integer roleId);

	void roleAdd(Roles role);
	
	
}
