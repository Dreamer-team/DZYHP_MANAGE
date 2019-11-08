package pdsu.dzhap.service.base;
import java.util.List;


import pdsu.dzyhap.bean.Mat_cate;
public interface Mat_cateservice {

	List<Mat_cate> findAll(Integer pageNum,Integer pageSize);
	
	Mat_cate findById(Integer deptId);
/**
 * 删除
 * @param cateId
 */
   void  deleteByIdUser(Integer cateId);
   
   
   public void add(Mat_cate mat_cate);
   
   
   List<Mat_cate> SearchMatcate( Integer cateId,String cateIdManual,
		   String cateName,String isDanger,Integer degreeId);
   
   /**
	 * 修改
	 * 
	 * @param dept
	 */
	int  Mat_catemodify(Mat_cate mat_cate);
	
}
