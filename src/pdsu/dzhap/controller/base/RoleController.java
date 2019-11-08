package pdsu.dzhap.controller.base;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import pdsu.dzhap.service.base.RoleService;
import pdsu.dzyhap.bean.Roles;

/**
 * 角色管理
 * @author Administrator
 *
 */
@Controller
public class RoleController {

	@Autowired
	private RoleService roleService;
	
	   /**
	    * 展示所有角色
	    * @param mav
	    * @return
	    */
	   @RequestMapping("partManage.do")
		public ModelAndView partManage(ModelAndView mav,String roleName) {
		   System.out.println(roleName);
	     List<Roles> list = roleService.findAll(roleName) ;
		 mav.setViewName("partManage");
		 mav.addObject("list", list);
			return mav;
	      }
	   
	   
	 
	   
	   
	  /**
	       * 转跳页面
	   * @param mav
	   * @return
	   */
	  @RequestMapping(" partInformation.do")
	  public ModelAndView partInformation(ModelAndView mav) {
	       mav.setViewName("partInformation");
		   return mav;
	  }
	  
	 
	
	  /**
		 * 添加用户
		 * @param user
		 * @return
		 */
	  @RequestMapping("roleAdd.do")
	  public String roleAdd(Roles role) {
			roleService.roleAdd(role);
			 return "redirect:partManage.do";
		}
		
	  
	  
	   
	  /**
	   * 删除角色
	   * @param role
	   * @param model
	   * @return
	   */
	  @RequestMapping("roleDelete.do")
		public String userDelete(Roles role,Model model)
		{
			Boolean updateUser = roleService.deleteByIdUser(role.getRoleId());
			if(updateUser) {
				return "redirect:touser.do";
			}else {
				model.addAttribute("msg", "删除失败");
				return "error";
			}
		}
	   
	   
	
	
}
