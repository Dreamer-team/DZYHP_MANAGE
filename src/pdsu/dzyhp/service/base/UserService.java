package pdsu.dzyhp.service.base;

import java.util.List;

import pdsu.dzyhp.bean.Users;

public interface UserService {
	
	void UserAdd(Users user); 
	
	Users findById(String userId);
	
	List<Users> findAll(Integer pageNum,Integer pageSize);
	
	List<Users> findAll();
	
	List<Users> query(String deptName,String stat,String userId);

	Boolean updateUser(Users user);
	
	Boolean deleteByIdUser(String userId);
	
}
