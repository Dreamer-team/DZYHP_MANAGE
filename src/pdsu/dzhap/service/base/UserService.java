package pdsu.dzhap.service.base;

import java.util.List;

import pdsu.dzyhap.bean.Users;

public interface UserService {
	
	void UserAdd(Users user); 
	
	Users findById(String userId);
	
	List<Users> findAll(Integer pageNum,Integer pageSize);

	Boolean updateUser(Users user);
	
	Boolean deleteByIdUser(String userId);
	
}
