package pdsu.dzhap.controller.base;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;

import pdsu.dzhap.constant.SystemConstant;
import pdsu.dzhap.service.base.UserService;
import pdsu.dzyhap.bean.Users;


@Controller
public class IndexController  {
	@Autowired
	private UserService userService;
	
   
	/**
	 * 头部管理界面
	 * @return
	 */
	@RequestMapping("top_manager.do")
	public String toTop_manager() {
		return "top_manager";	
	}
	
	/**
	 * 左边功能菜单
	 * @return
	 */
	@RequestMapping("toleft_apply.do")
	public String toleft_apply() {
		return "left_apply";
	}
	
	
	/**
	 * 用户管理
	 * @return
	 */
	@RequestMapping("touser.do")
	public ModelAndView touser(ModelAndView mav,@RequestParam(defaultValue="1",value="pageNum")Integer pageNum,@RequestParam(defaultValue="5",value="pageNum")Integer pageSize) {
		List<Users> list1 = userService.findAll(pageNum,pageSize);
		PageInfo<Users> list=new PageInfo<Users>(list1);
		mav.setViewName("user");
	     mav.addObject("list", list);
		return mav;
	}
	
	
	
}
