package pdsu.dzhap.service.base;

import java.util.List;

import pdsu.dzyhap.bean.Dept;

/**
 * 
 * @author 星儿
 *
 * 
 * @describe service 部门业务接口
 * 
 * @date 2019年11月3日 下午5:05:50
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
public interface DeptService {

	/**
	 * 查询所有
	 * pageNum ：当前页数
	 *pageSize ：一页大小
	 * @return
	 */
	
	List<Dept> findAll(Integer pageNum, Integer pageSize);

	/**
	 * 按条件查询
	 * 
	 * @param deptId
	 * @param deptName
	 * @param deptType
	 * @param deptRemark
	 * @return
	 */

	List<Dept> SearchDept(Integer deptId, String deptName, String deptType, String deptRemark);

	/*
	 * 根据id查询
	 */
	Dept findById(Integer deptId);

	/**
	 * 添加部门
	 * 
	 * @param dept
	 */
	public void add(Dept dept);

	/**
	 * 删除
	 * 
	 * @param deptId
	 * @return
	 */
	void deleteByIddept(Integer deptId);

	/**
	 * 修改
	 * 
	 * @param dept
	 */
	int Deptmodify(Dept dept);

}
