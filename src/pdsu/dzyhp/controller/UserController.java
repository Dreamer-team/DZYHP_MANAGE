package pdsu.dzyhp.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pdsu.dzyhp.bean.Dept;
import pdsu.dzyhp.bean.Roles;
import pdsu.dzyhp.bean.Users;
import pdsu.dzyhp.dto.UserDto;
import pdsu.dzyhp.service.base.DeptService;
import pdsu.dzyhp.service.base.RoleService;
import pdsu.dzyhp.service.base.UserService;

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
	
	/**
	 * 给用户添加角色
	 * @param mav
	 * @param user
	 * @return
	 */
	@RequestMapping("userRoleAdd.do")
	public ModelAndView userRoleAdd(ModelAndView mav,Users user) {
		List<Roles> list = roleService.findAll("") ;
		String userId = user.getUserId();
		 mav.addObject("userId", userId);
		 mav.setViewName("userRoleAdd");
	     mav.addObject("list", list);
		return mav;
	}
	
	/**
	 * 进入添加用户界面
	 * @param mav
	 * @return
	 */

	@RequestMapping("build.do")
	public ModelAndView build(ModelAndView mav,Integer pageNum,Integer pageSize) {
		List<Dept> list = deptService.findAll(pageNum, pageSize);
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
	
	
	/**
	 * 删除
	 * @param user
	 * @param model
	 * @return
	 */
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
	
	
	
	/**
	 * 查询用户
	 * @param deptName
	 * @param stat
	 * @return
	 */
     @RequestMapping("selectUserOne.do")
     @ResponseBody
	  public List<UserDto> userSeekselectUserByDept(String deptName,String stat,String userId)
		{	
    	  List<Users> list1=userService.query(deptName,stat,userId);
    	  UserDto d=null;
    	  List<UserDto> list=new ArrayList<UserDto> ();
          for(Users u:list1) {
        	   d=new UserDto();
        	   d.setUserId(u.getUserId());
        	   d.setName(u.getName());
        	   d.setTitle(u.getTitle());	    
        	   d.setStatStr(u.getStatStr());
        	  d.setDeptName(u.getDept().getDeptName());
        	 list.add(d);
          }
          return  list;
		}
     
     
     
     /**
      * 进入查询界面
      * @return
      */
     @RequestMapping("userSeek.do")
	  public String userSeek()
		{	
		  return "userSeek";
		}
   
	

}
