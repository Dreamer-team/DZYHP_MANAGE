package pdsu.dzyhp.service.impl.base;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.PageHelper;

import pdsu.dzyhp.bean.Mat_cate;
import pdsu.dzyhp.dao.Mat_cateMapper;
import pdsu.dzyhp.service.base.Mat_cateservice;
@Service
@Transactional
public class Mat_cateserviceimpl implements Mat_cateservice {
	@Autowired
	Mat_cateMapper mat_cateMapper;
	@Override
	public List<Mat_cate> findAll(Integer pageNum,Integer pageSize) {
		// TODO Auto-generated method stub
		//PageHelper.startPage(1, 3);
		PageHelper.startPage(pageNum, pageSize);
		return mat_cateMapper.selectAll();
	}

	@Override
	public Mat_cate findById(Integer deptId) {
		// TODO Auto-generated method stub
		return mat_cateMapper.selectByPrimaryKey(deptId);
	}

	@Override
	public void deleteByIdUser(Integer cateId) {
		// TODO Auto-generated method stub
		mat_cateMapper.deleteByPrimaryKey(cateId);
		
	}

	
	
	@Override
	public void add(Mat_cate mat_cate) {
		// TODO Auto-generated method stub
		mat_cateMapper.insert(mat_cate);

	}

	@Override
	public List<Mat_cate> SearchMatcate(Integer cateId, String cateIdManual, String cateName, String isDanger,
			Integer degreeId) {
		// TODO Auto-generated method stub
		return mat_cateMapper.SearchMat_cate(cateId, cateIdManual, cateName, isDanger, degreeId);
	}

	@Override
	public int Mat_catemodify(Mat_cate mat_cate) {
		// TODO Auto-generated method stub
		return mat_cateMapper.updateByPrimaryKey(mat_cate);
	}
	
	

}
