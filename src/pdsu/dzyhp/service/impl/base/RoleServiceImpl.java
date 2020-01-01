package pdsu.dzyhp.service.impl.base;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pdsu.dzyhp.bean.Roles;
import pdsu.dzyhp.dao.RolesMapper;
import pdsu.dzyhp.dao.UsersMapper;
import pdsu.dzyhp.service.base.RoleService;

@Service
@Transactional
public class RoleServiceImpl implements RoleService{

	@Autowired
	private RolesMapper rolesMapper;
	
	@Autowired
	
	private UsersMapper usersMapper;
	
	
	@Override
	public List<Roles> findAll(String roleName) {
		
		return rolesMapper.selectAll(roleName);
	}

	@Override
	public Boolean deleteByIdUser(Integer roleId) {
		//此处需要把user_role表中关联roleId的数据全清空
		int deleteByPrimaryKey = rolesMapper.deleteByPrimaryKey(roleId);
		if(deleteByPrimaryKey>0) {
			return true;
		}else {
			return false;
		}
	}
	
	@Override
	public void roleAdd(Roles role) {
		try {
			Random random=new Random();
			int roleId = random.nextInt(1000);
			role.setRoleId(roleId);
			int insert = rolesMapper.insert(role);
		} catch (Exception e) {
			new RuntimeException("添加角色失败");
		}
		
	}

	
}
