package pdsu.dzhap.controller.base;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pdsu.dzhap.service.base.IndexService;
import pdsu.dzhap.utils.UserContext;
import pdsu.dzyhap.bean.Users;

@Controller
public class LoginController {
   
	@Autowired
	private IndexService indexService;
	
	
	/**
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping("login.do")
	public String Login(Users user,Model model) {
		Users current = UserContext.getCurrent();
		if(current!=null) {
			return "index";
		}else {
			Boolean login_flag = this.indexService.login(user);
			if(login_flag) {
				UserContext.putCurrent(user);
				model.addAttribute("msg", "登录成功");
				return "index";
			}else {
				model.addAttribute("msg", "登录失败");
				return "error";
			}
		}
		
		
	}
}
