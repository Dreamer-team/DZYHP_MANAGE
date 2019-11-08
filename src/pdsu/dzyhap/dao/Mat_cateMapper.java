package pdsu.dzyhap.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import pdsu.dzyhap.bean.Mat_cate;

public interface Mat_cateMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mat_cate
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    int deleteByPrimaryKey(Integer cateId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mat_cate
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    int insert(Mat_cate record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mat_cate
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    Mat_cate selectByPrimaryKey(Integer cateId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mat_cate
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    List<Mat_cate> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table mat_cate
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    int updateByPrimaryKey(Mat_cate record);
    
    
    //模糊查询

    List<Mat_cate> SearchMat_cate(@Param("cateId")Integer cateId,@Param("cateIdManual")String cateIdManual,
    		@Param("cateName") String cateName,@Param("isDanger")String isDanger,@Param("degreeId")Integer degreeId);
    
}