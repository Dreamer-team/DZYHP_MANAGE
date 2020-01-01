package pdsu.dzyhp.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import pdsu.dzyhp.bean.Found_type;
import pdsu.dzyhp.bean.Users;
import pdsu.dzyhp.dao.Found_typeMapper;

public class Demo {
	public static void main(String[] args) {
	ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
	Found_typeMapper UsersMapper = context.getBean(Found_typeMapper.class);
   List<Found_type> list = UsersMapper.selectAll();
   	for (Found_type users : list) {
		System.out.println(users.getFoundType()+"....");
	}	
 }

}
