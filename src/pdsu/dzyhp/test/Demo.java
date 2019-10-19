package pdsu.dzyhp.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import pdsu.dzyhap.bean.Users;
import pdsu.dzyhap.dao.UsersMapper;

public class Demo {
	public static void main(String[] args) {
	ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
	UsersMapper UsersMapper = context.getBean(UsersMapper.class);
   List<Users> list = UsersMapper.selectAll();
   	for (Users users : list) {
		System.out.println(users.getDept().getDeptName());
	}	
 }

}
