package pdsu.dzyhp.service.impl.base;

import java.util.List;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;
import com.sun.org.apache.bcel.internal.generic.RETURN;

import pdsu.dzyhp.bean.Dept;
import pdsu.dzyhp.dao.DeptMapper;
import pdsu.dzyhp.service.base.DeptService;

/**
 * 
 * @author 星儿
 *
 * 
 * @describe 业务接口实现类
 * 
 * @date 2019年11月3日 下午5:12:28
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
@Service
@Transactional
public class DeptServiceImpl implements DeptService {

	@Autowired
	private DeptMapper deptMapper;

	@Override

	public List<Dept> findAll(Integer pageNum, Integer pageSize) {
		// 使用PageHelper分页
		PageHelper.startPage(pageNum, pageSize);
		return deptMapper.selectAll();
	}

	public Dept findById(Integer deptId) {

		return deptMapper.selectByPrimaryKey(deptId);

	}

	public void add(Dept dept) {

		// TODO Auto-generated method stub
		try {
        //随机生成deptid
			Random rand = new Random();

			int deptId = rand.nextInt(1000);

			String deptid = String.valueOf(deptId);

			dept.setDeptId(deptId);

			deptMapper.insert(dept);

		} catch (Exception e) {

			// TODO: handle exception

		}

	}

	@Override
	public int Deptmodify(Dept dept) {
		return deptMapper.updateByPrimaryKey(dept);

	}

	@Override
	public void deleteByIddept(Integer deptId) {
		// TODO Auto-generated method stub
		deptMapper.deleteByPrimaryKey(deptId);
	}

	@Override
	public List<Dept> SearchDept(Integer deptId, String deptName, String deptType, String deptRemark) {
		// TODO Auto-generated method stub

		return deptMapper.SearchDept(deptId, deptName, deptType, deptRemark);
	}

}
