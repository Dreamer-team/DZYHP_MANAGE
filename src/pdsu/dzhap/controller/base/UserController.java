package pdsu.dzhap.controller.base;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pdsu.dzhap.service.base.DeptService;
import pdsu.dzhap.service.base.RoleService;
import pdsu.dzhap.service.base.UserService;
import pdsu.dzhap.utils.UserContext;
import pdsu.dzyhap.bean.Dept;
import pdsu.dzyhap.bean.Roles;
import pdsu.dzyhap.bean.Users;

/**
 * 用户操作页面
 * @author Administrator
 *
 */
@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private DeptService deptService;
	

	@Autowired
	private RoleService roleService;
	
	@RequestMapping("userRoleAdd.do")
	public ModelAndView userRoleAdd(ModelAndView mav) {
		
		List<Roles> list = roleService.findAll() ;
		mav.setViewName("userRoleAdd");
	     mav.addObject("list", list);
		return mav;
	}
	
	@RequestMapping("build.do")
	public ModelAndView build(ModelAndView mav) {
		List<Dept> list = deptService.findAll();
		mav.setViewName("build");
	     mav.addObject("list", list);
		return mav;
	}
	
	
	
	
	/**
	 * 选择一个id进行修改
	 * @param id
	 * @return
	 */
	@RequestMapping("userSelect.do")
	@ResponseBody
	public ModelAndView userSelect(String id,ModelAndView mav) {
		Users user = userService.findById(id);
		
//	    System.out.println(id);
		mav.setViewName("userModify");
	    mav.addObject("user", user);
		return mav;
	}
	
	/**
	 * 更新用户
	 * @param user
	 * @param model
	 * @return
	 */
	@RequestMapping("userUpdate.do")
	public String userUpdate(Users user,Model model)
	{
		System.out.println(user);
		Boolean updateUser = userService.updateUser(user);
		if(updateUser) {
			return "redirect:touser.do";
		}else {
			model.addAttribute("msg", "更新失败");
			return "error";
		}
		
	}
	
	@RequestMapping("userDelete.do")
	public String userDelete(Users user,Model model)
	{
		Boolean updateUser = userService.deleteByIdUser(user.getUserId());
		if(updateUser) {
			return "redirect:touser.do";
		}else {
			model.addAttribute("msg", "删除失败");
			return "error";
		}
		
	}
	
	/**
	 * 添加用户
	 * @param user
	 * @return
	 */
	@RequestMapping("userAdd.do")
	public String userAdd(Users user,Integer deptId)
	{
		System.out.println(user.getDept());
		System.out.println( deptId);
		userService.UserAdd(user);
		return "redirect:touser.do";
	}
	
	
	
     @RequestMapping("userSeek.do")
	  public String userSeek()
		{	
    	  Users users = UserContext.getCurrent();
    	  System.out.println(users.getName());
		  return "userSeek";
		}
		
		


	
	

}
