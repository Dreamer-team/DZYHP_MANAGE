package pdsu.dzyhap.dao;

import java.util.List;
import pdsu.dzyhap.bean.Bat_mat_history;

public interface Bat_mat_historyMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bat_mat_history
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    int deleteByPrimaryKey(Integer histId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bat_mat_history
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    int insert(Bat_mat_history record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bat_mat_history
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    Bat_mat_history selectByPrimaryKey(Integer histId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bat_mat_history
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    List<Bat_mat_history> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table bat_mat_history
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    int updateByPrimaryKey(Bat_mat_history record);
}