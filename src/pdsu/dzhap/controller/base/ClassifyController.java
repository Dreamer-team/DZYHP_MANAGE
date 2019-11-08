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
import pdsu.dzhap.service.base.Danger_degreeservice;
import pdsu.dzhap.service.base.Mat_cateservice;
import pdsu.dzyhap.bean.Danger_degree;
import pdsu.dzyhap.bean.Mat_cate;
/**
 * 
 * @author 星儿
 *

 * @describe 描述

 * @date 2019年11月3日 下午5:50:00

 * @version 2.5

 * @param (参数)

 * @return 

 * @throws Exception

 *
 */
@Controller

public class ClassifyController {
	@Autowired
	Mat_cateservice mat_cateservice;
	@Autowired
	Danger_degreeservice danger_degreeservice;
/**
 * 删除
 * @param mat_cate
 * @return
 */

	@RequestMapping("mat_catedelete.do")
	public String deptDelete(Mat_cate mat_cate) {
		mat_cateservice.deleteByIdUser(mat_cate.getCateId());
		return "redirect:classify.do";
	}

/**
 * 添加
 * @param mav
 * @param mat_cate
 * @return
 */

	@RequestMapping("classifyaddl.do")
	public String departmentA(ModelAndView mav, Mat_cate mat_cate) {
		List<Danger_degree> list2 = danger_degreeservice.findAll();
		Integer cateId = mat_cate.getCateId();
		mav.addObject("cateId", cateId);
		mat_cateservice.add(mat_cate);
		mav.addObject("list2", list2);
		System.out.println(mat_cate);

		return "redirect:classify.do";
	}


	@RequestMapping("classifyAdd.do")
	public ModelAndView departmentAdd() {
		ModelAndView mav = new ModelAndView();
		List<Danger_degree> list2 = danger_degreeservice.findAll();

		mav.setViewName("classifyAdd");

		mav.addObject("list2", list2);
		return mav;
	}

	/**
	 * 查询
	 * 
	 * @return
	 */

	@RequestMapping(value = "/classifyQuery.do", method = RequestMethod.GET)
	public ModelAndView departmentQuery() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("classifyQuery");
		return mav;
	}

	@RequestMapping(value = "/mat_catesearch.do", method = RequestMethod.GET)
	public String departmentQueryTe(Model model,
			@RequestParam(value = " cateId", required = false, defaultValue = "0") Integer cateId,
			@RequestParam(value = "cateIdManual", required = false) String cateIdManual,
			@RequestParam(value = "cateName", required = false) String cateName,
			@RequestParam(value = "isDanger", required = false) String isDanger,
			@RequestParam(value = "degreeId", required = false) Integer degreeId) {

		List<Mat_cate> searchMatcate = mat_cateservice.SearchMatcate(cateId, cateIdManual, cateName, isDanger,
				degreeId);

		System.out.println(searchMatcate.size() + "........");
		model.addAttribute("list2", searchMatcate);
		return "classifyQuery";
	}
/**
 *  选择一个id进行修改
 * @param cateId
 * @param mav
 * @return
 */
	@RequestMapping("catematSelect.do")
	@ResponseBody
	public ModelAndView userSelect(Integer cateId, ModelAndView mav) {

		Mat_cate mat_cate = mat_cateservice.findById(cateId);
		System.out.println("111111111111   " + cateId);
		mav.setViewName("classifyModify");
		mav.addObject("mat_cate", mat_cate);
		return mav;
	}

	/**
	 * 更新用户
	 * 
	 * @param user
	 * @param model
	 * @return
	 */

	@RequestMapping("classifymodify.do")
	public String userUpdate(Mat_cate mat_cate, Model model) {
		System.out.println(mat_cate + "lllllllll");

		int mat_catemodify = mat_cateservice.Mat_catemodify(mat_cate);
		System.out.println(mat_catemodify + ".........");
		System.out.println("1111111111111111");

		if (mat_catemodify < 0) {
			return "forward:classify.do";
		} else {
			model.addAttribute("msg", "更新失败");
			return "error";
		}

	}

}
