package pdsu.dzhap.service.base;

import java.util.List;

import pdsu.dzyhap.bean.Users;

public interface UserService {
	
	void UserAdd(Users user); 
	
	Users findById(String userId);
	
	List<Users> findAll(Integer pageNum,Integer pageSize);
	
	List<Users> query(String deptName,String stat);

	Boolean updateUser(Users user);
	
	Boolean deleteByIdUser(String userId);
	
}
