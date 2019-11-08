package pdsu.dzhap.controller.base;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;

import pdsu.dzhap.service.base.DeptService;
import pdsu.dzhap.service.base.Mat_cateservice;
import pdsu.dzhap.service.base.UserService;
import pdsu.dzyhap.bean.Dept;
import pdsu.dzyhap.bean.Mat_cate;
import pdsu.dzyhap.bean.Users;


@Controller
public class IndexController  {
	@Autowired
	private UserService userService;
	
	@Autowired
	DeptService deptService;
	@Autowired
	Mat_cateservice mat_cateservice;
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
	public ModelAndView touser(ModelAndView mav,@RequestParam(defaultValue="1",value="pageNum",required=true)Integer pageNum,@RequestParam(defaultValue="3",value="pageSize",required=true)Integer pageSize) {
		List<Users> list1 = userService.findAll(pageNum,pageSize);
		PageInfo<Users> list=new PageInfo<Users>(list1);
		mav.setViewName("user");
	     mav.addObject("list", list);
		return mav;
	}
	
	/**
	 * 部门管理
	 * @param mav
	 * @param pageNum  
	 * @param pageSize
	 * @return
	 * 
	 *  @RequestParam(defaultValue="0") 的作用：若提交的实参中没有该对应的形参值，
	 *  则该形参取指定的默认值 ,再该中的作用确定分页的每页记录数
	 */

	@RequestMapping("dept.do")
	public ModelAndView dept(ModelAndView mav,@RequestParam(defaultValue="1",value="pageNum",required=true)Integer pageNum,@RequestParam(defaultValue="3",value="pageSize",required=true)Integer pageSize) {
		List<Dept> list1 = deptService.findAll(pageNum,pageSize);
		PageInfo<Dept> list=new PageInfo<Dept>(list1);
		
		mav.setViewName("department");
		mav.addObject("list1", list);
		return mav;
	}
	// classify.do

	/**
	 * 基础分类管理
	 * @param mav
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	
	@RequestMapping("classify.do")
	public ModelAndView classify(ModelAndView mav,@RequestParam(defaultValue="1",value="pageNum",required=true)Integer pageNum,@RequestParam(defaultValue="3",value="pageSize",required=true)Integer pageSize) {
		//查询所有的记录数
		List<Mat_cate> list2 = mat_cateservice.findAll(pageNum,pageSize);
		//使用PageInfo封装分页
		PageInfo<Mat_cate> list=new PageInfo<Mat_cate>(list2);
		System.out.println(list2.size()+"xcfvgbhnjmk,l;x");
		//跳转到classify页面
		mav.setViewName("classify");
		mav.addObject("list2", list);
		return mav;
	}
	
	
	
}
