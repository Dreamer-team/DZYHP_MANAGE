package pdsu.dzhap.service.impl.base;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import pdsu.dzhap.service.base.IndexService;
import pdsu.dzyhap.bean.Users;
import pdsu.dzyhap.dao.UsersMapper;

@Service
@Transactional
public class IndexServiceImpl implements IndexService{
   
	@Autowired
	private UsersMapper usersMapper;
	
	@Override
	public Boolean login(Users user) {
          Users login_user= usersMapper.login(user);	
          if(login_user!=null) {
        	 return true;
          }
		return false;
	}

}
