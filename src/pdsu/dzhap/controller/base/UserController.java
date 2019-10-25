package pdsu.dzhap.controller.base;

import java.util.ArrayList;
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
import pdsu.dzyhap.bean.Dept;
import pdsu.dzyhap.bean.Roles;
import pdsu.dzyhap.bean.Users;
import pdsu.dzyhap.dto.UserDto;

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
	public ModelAndView userRoleAdd(ModelAndView mav,Users user) {
		
		List<Roles> list = roleService.findAll() ;
		String userId = user.getUserId();
		 mav.addObject("userId", userId);
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
		
	    System.out.println(id);
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
	
	
	
     @RequestMapping("selectUserOne.do")
     @ResponseBody
	  public List<UserDto> userSeekselectUserByDept(String deptName,String stat)
		{	
    	  List<Users> list1=userService.query(deptName,stat);
    	  System.out.println(list1.size());
    	  UserDto d=null;
    	  List<UserDto> list=new ArrayList<UserDto> ();
          for(Users u:list1) {
        	   d=new UserDto();
        	   d.setUserId(u.getUserId());
        	   d.setName(u.getName());
        	   d.setTitle(u.getTitle());	    
        	   d.setStatStr(u.getStatStr());
        	  d.setDeptName(u.getDept().getDeptName());
        	 System.out.println("....."+d+".....");
        	 System.out.println(u+".....");
        	 list.add(d);
          }
          System.out.println(list.size()+".....");
    	  
          
          return  list;
		}
     
     
     
     @RequestMapping("userSeek.do")
	  public String userSeek()
		{	
		  return "userSeek";
		}
    
		
		


	
	

}
