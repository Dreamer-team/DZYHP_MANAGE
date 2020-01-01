package pdsu.dzyhp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageInfo;

import pdsu.dzyhp.bean.Base;
import pdsu.dzyhp.bean.Dept;
import pdsu.dzyhp.bean.Found_type;
import pdsu.dzyhp.bean.Users;
import pdsu.dzyhp.dto.BaseDto;
import pdsu.dzyhp.service.base.BaseService;
import pdsu.dzyhp.service.base.DeptService;
import pdsu.dzyhp.service.base.FundTypeService;
import pdsu.dzyhp.service.base.UserService;


@Controller
public class BaseController {
  
	@Autowired
	private BaseService baseService;
	
	@Autowired
	private DeptService deptService;
	
	@Autowired
	private UserService userService;
	
	@Autowired 
	private  FundTypeService foundTypeService;
	
	
	/**
	 * 展示全部仓库页面
	 * @param mav
	 * @return
	 */
	@RequestMapping("setwarehourse.do")
	public ModelAndView setwarehourse(ModelAndView mav,@RequestParam(defaultValue="1",value="pageNum",required=true)Integer pageNum,@RequestParam(defaultValue="3",value="pageSize",required=true)Integer pageSize) {
	    List<Base> list1	=baseService.findAll(pageSize,pageNum);
	    PageInfo<Base> list=new PageInfo<Base>(list1);
	    mav.setViewName("setwarehourse");
		mav.addObject("list", list);
		return  mav;
	}
	
	
	/**
	 * 进入添加仓库界面,把相应数据展示在添加仓库界面
	 * @param mav
	 * @return
	 */
	@RequestMapping("warehouseAdd.do")
	public ModelAndView warehouseAdd(ModelAndView mav,@RequestParam(defaultValue="1",value="pageNum",required=true)Integer pageNum,@RequestParam(defaultValue="3",value="pageSize",required=true)Integer pageSize) {
		List<Dept> list = deptService.findAll(pageNum,pageSize);
		 List<Found_type> listFoundType=  foundTypeService.findAll();
		 List<Users> userList=userService.findAll();
	     mav.addObject("listFoundType", listFoundType);
	     mav.addObject("userList", userList);
	     mav.setViewName("warehouseAdd");
	     mav.addObject("list", list);
		 return  mav;
	}
	
	
	/**
	 * 添加仓库
	 * @param base
	 * @param model
	 * @return
	 */
	@RequestMapping("baseAdd.do")
	public String baseAdd(Base base,Model model) {
//			System.out.println(base);
			Boolean baseFlag=baseService.add(base);
			if(baseFlag) {
				 return "redirect:setwarehourse.do";
			}else {
				model.addAttribute("msg", "添加失败");
				return "error";
			}
	}
	
	
	/**
	 * 删除仓库
	 * @param baseIds
	 * @param model
	 * @return
	 */
	@RequestMapping("deleteBase.do")
	public String deleteBase(String [] baseIds, Model model) {
		try {
			for(int i=0;i<baseIds.length;i++) {
				Integer baseId=Integer.parseInt(baseIds[i]);
				baseService.delete(baseId);
			}
			 return "redirect:setwarehourse.do";
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("msg", "添加失败"+e.getMessage());
			return "error";
			
		}
		
		
	}
	
	
	
	/**
	 * 查询仓库信息,为更新做准备
	 * @param baseId
	 * @param model
	 * @return
	 */
    @RequestMapping("baseUpdate.do")
	public ModelAndView updateBase(String baseId, ModelAndView model) {
    	Integer baseIds=Integer.parseInt(baseId);
    	Base selectOneById = baseService.selectOneById(baseIds);
    	
    	model.addObject("base", selectOneById);
    	model.setViewName("warehouseModify");
	    return model;
	}
	
    
        
     /**
      * 查询页面
      * @return
      */
    	@RequestMapping("seek.do")
    	public String seek() {
    		
    	return "seek";
    }
	
    	
    	
    	/**
    	 * 通过仓库名字和状态查询
    	 * @param baseName
    	 * @param stat
    	 * @return
    	 */
    	@RequestMapping("selectBybaseNameAndStat")
    	@ResponseBody
    	public List<BaseDto> selectBybaseNameAndStat(String baseName,String stat) {
    	List<BaseDto>	list =baseService.selectBybaseNameAndStat( baseName,stat);
    	return list;
    }
    	
    	
    	
    	@RequestMapping("updateBase.do")
    	public String updateBase(String stat,String foundStat,String remark) {
    		
    		System.out.println(stat+"...."+foundStat+remark);
    		
    		
    	 return "";
    }
	
    
    
    
	
	
	
	
	
}
