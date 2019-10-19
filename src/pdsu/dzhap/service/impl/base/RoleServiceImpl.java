package pdsu.dzhap.service.impl.base;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pdsu.dzhap.service.base.RoleService;
import pdsu.dzyhap.bean.Roles;
import pdsu.dzyhap.dao.RolesMapper;

@Service
@Transactional
public class RoleServiceImpl implements RoleService{

	@Autowired
	private RolesMapper rolesMapper;
	
	@Override
	public List<Roles> findAll() {
		
		return rolesMapper.selectAll();
	}

}
