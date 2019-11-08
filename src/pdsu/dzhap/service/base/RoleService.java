package pdsu.dzhap.service.base;

import java.util.List;

import pdsu.dzyhap.bean.Roles;


public interface RoleService {
   
	/**
	 * 查询所有角色
	 * @return
	 */
	List<Roles> findAll(String roleName);
	
	/**
	 * 根据roleId删除信息
	 * @param roleId
	 * @return
	 */
	Boolean deleteByIdUser(Integer roleId);

	/**
	 * 添加角色
	 * @param role
	 */
	void roleAdd(Roles role);
	
	
}
