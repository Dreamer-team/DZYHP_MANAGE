package pdsu.dzyhp.dao;

import java.util.List;

import pdsu.dzyhp.bean.Found_type;

public interface Found_typeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table found_type
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    int deleteByPrimaryKey(Integer foundTypeId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table found_type
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    int insert(Found_type record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table found_type
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    Found_type selectByPrimaryKey(Integer foundTypeId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table found_type
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    List<Found_type> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table found_type
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    int updateByPrimaryKey(Found_type record);
}