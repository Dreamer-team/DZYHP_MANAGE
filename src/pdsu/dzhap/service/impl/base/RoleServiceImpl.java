package pdsu.dzhap.service.impl.base;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pdsu.dzhap.service.base.RoleService;
import pdsu.dzyhap.bean.Roles;
import pdsu.dzyhap.dao.RolesMapper;
import pdsu.dzyhap.dao.UsersMapper;

@Service
@Transactional
public class RoleServiceImpl implements RoleService{

	@Autowired
	private RolesMapper rolesMapper;
	
	@Autowired
	
	private UsersMapper usersMapper;
	
	
	@Override
	public List<Roles> findAll() {
		
		return rolesMapper.selectAll();
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
