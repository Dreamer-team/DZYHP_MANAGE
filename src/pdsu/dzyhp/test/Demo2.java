package pdsu.dzyhp.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import pdsu.dzyhp.bean.Base;
import pdsu.dzyhp.dao.BaseMapper;

public class Demo2 {

	public static void main(String[] args) {
		ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
		BaseMapper baseMapper = context.getBean(BaseMapper.class);
        Base selectOne = baseMapper.selectOne(1);
		System.out.println(selectOne);
         List<Base> list = baseMapper.selectBybaseNameAndStat("", "0");
	     for (Base base : list) {
			System.out.println(base);
		}
	
		
	}
	
	
}
