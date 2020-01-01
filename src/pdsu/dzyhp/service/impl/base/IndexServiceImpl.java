package pdsu.dzyhp.service.impl.base;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;

import pdsu.dzyhp.bean.Users;
import pdsu.dzyhp.dao.UsersMapper;
import pdsu.dzyhp.service.base.IndexService;

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
