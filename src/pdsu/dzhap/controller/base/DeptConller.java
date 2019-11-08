package pdsu.dzhap.controller.base;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pdsu.dzhap.service.base.DeptService;
import pdsu.dzyhap.bean.Dept;

/**
 * 
 * @author 星儿
 *
 * 
 * @describe 处理器类：专门用于部门栏目相关的请求
 * 
 * @date 2019年11月3日 下午5:13:08
 * 
 * @version 2.5
 * 
 * @param (参数)
 * 
 * @return
 * 
 * @throws Exception
 *
 * 
 */
@Controller

public class DeptConller {

	@Autowired
	private DeptService deptService;

//跳转到添加的页面
	@RequestMapping("departmentAdd.do")
	public ModelAndView departmentAdd() {
		// ModelAndView返回到指定的页面
		ModelAndView mav = new ModelAndView();
		// 通过setViewName()方法跳转到指定的页面
		mav.setViewName("departmentAdd");
		return mav;
	}

	/**
	 * 添加
	 * 
	 * @param dept
	 * @return
	 */
	@RequestMapping("departmentAddDept.do")
	public String departmentA(Dept dept) {
		// 调用add方法实现向数据库里面添加数据
		deptService.add(dept);
		System.out.println(dept);
       //通过重定向跳转到的方法跳转到dept页面
		return "redirect:dept.do";
	}



	/***
	 * 删除
	 * 
	 * @param dept
	 * @param model
	 * @return
	 */

	@RequestMapping("deptelete.do")
	public String deptDelete(Dept dept) {
		// dept.getDeptId()获取id删除该条记录
		deptService.deleteByIddept(dept.getDeptId());
		return "redirect:dept.do";
	}

	/**
	 * 查询
	 * 
	 * @return
	 */

	@RequestMapping(value = "/departmentQuery.do", method = RequestMethod.GET)
	public ModelAndView departmentQuery() {
		// ModelAndView返回到指定的页面
		ModelAndView mav = new ModelAndView();
		mav.setViewName("departmentQuery");
		return mav;
	}

	/**
	 * 
	 * @param model
	 * @param deptId
	 * @param deptName
	 * @param deptType
	 * @param deptRemark
	 * @return
	 * @RequestParam(value = " deptId", required = false, defaultValue = "0")
	 *                     防止这个参数没有传递给controller，抛出参数绑定异常。
	 */
	@RequestMapping(value = "/deptsearch.do", method = RequestMethod.GET)
	public String departmentQueryTe(Model model,
			@RequestParam(value = " deptId", required = false, defaultValue = "0") Integer deptId,
			@RequestParam(value = "deptName", required = false) String deptName,
			@RequestParam(value = "deptType", required = false) String deptType,
			@RequestParam(value = "deptRemark", required = false) String deptRemark) {

		List<Dept> searchDept = deptService.SearchDept(deptId, deptName, deptType, deptRemark);
		System.out.println(searchDept.size() + "........");
		// 往前台传数据
		model.addAttribute("list1", searchDept);
		return "departmentQuery";
	}

	/**
	 * 选择一个id进行修改
	 * 
	 * @param id
	 * @return departmentModify.do
	 */
	@RequestMapping("deptSelect.do")
	@ResponseBody
	public ModelAndView userSelect(Integer deptId, ModelAndView mav) {
		Dept dept = deptService.findById(deptId);
		System.out.println(deptId + "..............");
		mav.setViewName("departmentModify");
		mav.addObject("dept", dept);
		return mav;
	}

	/**
	 * 更新用户
	 * 
	 * @param user
	 * @param model
	 * @return
	 */

	@RequestMapping("deptUpdate.do")
	public String userUpdate(Dept dept, Model model) {
		System.out.println(dept + "lllllllll");

		int deptmodify = deptService.Deptmodify(dept);
		System.out.println(deptmodify + ".........");
		System.out.println("哈哈哈哈哈哈哈");

		if (deptmodify < 0) {
			return "forward:dept.do";
		} else {
			model.addAttribute("msg", "更新失败");
			return "error";
		}

	}

}
