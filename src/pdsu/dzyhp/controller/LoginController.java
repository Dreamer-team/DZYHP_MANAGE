package pdsu.dzyhp.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pdsu.dzyhp.bean.Users;
import pdsu.dzyhp.service.base.IndexService;
import pdsu.dzyhp.utils.UserContext;

@Controller
public class LoginController {
   
	@Autowired
	private IndexService indexService;
	
	
	/**
	 * 登录
	 * @param user
	 * @param model
	 * @return888
	 */
	@RequestMapping("login.do")
	public String Login(Users user,Model model) {
						Boolean login_flag = this.indexService.login(user);
						if(login_flag) {
							UserContext.putCurrent(user);//把user存到session里边
							model.addAttribute("msg", "登录成功");
							return "index";
						}else {
							model.addAttribute("msg", "登录失败");
							return "error";
						}   
	}	
}
