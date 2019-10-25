package pdsu.dzyhap.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import pdsu.dzyhap.bean.Users;

public interface UsersMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbggenerated Sun Sep 01 20:17:44 GMT+08:00 2019
     */
    int deleteByPrimaryKey(String userId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbggenerated Sun Sep 01 20:17:44 GMT+08:00 2019
     */
    int insert(Users record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbggenerated Sun Sep 01 20:17:44 GMT+08:00 2019
     */
    Users selectByPrimaryKey(String userId);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbggenerated Sun Sep 01 20:17:44 GMT+08:00 2019
     */
    List<Users> selectAll();

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table users
     *
     * @mbggenerated Sun Sep 01 20:17:44 GMT+08:00 2019
     */
    int updateByPrimaryKey(Users record);
    
    /**
     * 登录
     * @param user
     * @return
     */
	Users login(Users user);

	List<Users> query(@Param("deptName")String deptName,@Param("stat")String stat);

	
}