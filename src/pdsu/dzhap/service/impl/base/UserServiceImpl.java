package pdsu.dzhap.service.impl.base;

import java.util.List;
import java.util.Random;

import javax.management.RuntimeErrorException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import pdsu.dzhap.constant.SystemConstant;
import pdsu.dzhap.service.base.DeptService;
import pdsu.dzhap.service.base.UserService;
import pdsu.dzyhap.bean.Dept;
import pdsu.dzyhap.bean.Users;
import pdsu.dzyhap.dao.UsersMapper;
@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UsersMapper usersMapper;
	
	@Autowired
	private DeptService deptService;
	
	@Override
	public void UserAdd(Users user) {
		try {
			
			Random rand=new Random();
			 int userId = rand.nextInt(1000);
			String userid=String.valueOf(userId);
			user.setUserId(userid);
			usersMapper.insert(user);
		} catch (Exception e) {
			new RuntimeException("插入数据失败");
		}

	}

	
	@Override
	public List<Users> findAll(Integer pageNum,Integer pageSize ) {
		List<Users> selectAll=null; 
		try {
			PageHelper.startPage(pageNum, pageSize);
			selectAll= usersMapper.selectAll();
//		    PageInfo<Users> list=new PageInfo<Users>(selectAll);
		   
			for (Users users : selectAll) {
				if(users.getStat().equals(SystemConstant.USER_STATE1)) {
					users.setStatStr(SystemConstant.USER_STATE_CLOSE);
				}else {
					users.setStatStr(SystemConstant.USER_STATE_OPEN);
				}
			}
		} catch (Exception e) {
			new RuntimeException("查询失败"+e.getMessage());
		}
		return selectAll;
	}

	@Override
	public Users findById(String userId) {
		Users user = usersMapper.selectByPrimaryKey(userId);
		System.out.println("当前操作的用户是： "+user);
		if(user.getStat()==SystemConstant.USER_STATE2) {
			user.setStatStr(SystemConstant.USER_STATE_OPEN);
		}else {
			user.setStatStr(SystemConstant.USER_STATE_CLOSE);
		}
		return user;
	}

	@Override
	public Boolean updateUser(Users user) {
		
		 System.out.println(user);
		 int i = usersMapper.updateByPrimaryKey(user);
		 System.out.println("........."+i);
		 if(i<0) {
			 return true;
		 }else {
			 new RuntimeException("更新失败");
				return false; 
		 }
		
	}

	@Override
	public Boolean deleteByIdUser(String userId) {
		System.out.println("被删除的userId为:  "+userId);
		int deleteByPrimaryKey = usersMapper.deleteByPrimaryKey(userId);
		if(deleteByPrimaryKey>0) {
			return false;
		}
	  return true;
	}


	@Override
	public List<Users> query(String deptName,String  stat,String userId) {
		List<Users> list = usersMapper.query(deptName,stat,userId);
		for (Users users : list) {
			if(users.getStat()==SystemConstant.USER_STATE2) {
				users.setStatStr(SystemConstant.USER_STATE_OPEN);
			}else {
				
				users.setStatStr(SystemConstant.USER_STATE_CLOSE);
			}
		}
		return list;
	}


	@Override
	public List<Users> findAll() {
	
		return usersMapper.selectAll();
	}


	
}
