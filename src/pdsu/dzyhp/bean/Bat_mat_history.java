package pdsu.dzyhp.bean;

public class Bat_mat_history {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bat_mat_history.hist_id
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    private Integer histId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bat_mat_history.bat_mat_id
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    private String batMatId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bat_mat_history.type
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    private String type;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bat_mat_history.count
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    private Double count;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bat_mat_history.op_time
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    private String opTime;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column bat_mat_history.op_user
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    private Integer opUser;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bat_mat_history.hist_id
     *
     * @return the value of bat_mat_history.hist_id
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public Integer getHistId() {
        return histId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bat_mat_history.hist_id
     *
     * @param histId the value for bat_mat_history.hist_id
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public void setHistId(Integer histId) {
        this.histId = histId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bat_mat_history.bat_mat_id
     *
     * @return the value of bat_mat_history.bat_mat_id
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public String getBatMatId() {
        return batMatId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bat_mat_history.bat_mat_id
     *
     * @param batMatId the value for bat_mat_history.bat_mat_id
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public void setBatMatId(String batMatId) {
        this.batMatId = batMatId == null ? null : batMatId.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bat_mat_history.type
     *
     * @return the value of bat_mat_history.type
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public String getType() {
        return type;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bat_mat_history.type
     *
     * @param type the value for bat_mat_history.type
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bat_mat_history.count
     *
     * @return the value of bat_mat_history.count
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public Double getCount() {
        return count;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bat_mat_history.count
     *
     * @param count the value for bat_mat_history.count
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public void setCount(Double count) {
        this.count = count;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bat_mat_history.op_time
     *
     * @return the value of bat_mat_history.op_time
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public String getOpTime() {
        return opTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bat_mat_history.op_time
     *
     * @param opTime the value for bat_mat_history.op_time
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public void setOpTime(String opTime) {
        this.opTime = opTime == null ? null : opTime.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column bat_mat_history.op_user
     *
     * @return the value of bat_mat_history.op_user
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public Integer getOpUser() {
        return opUser;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column bat_mat_history.op_user
     *
     * @param opUser the value for bat_mat_history.op_user
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public void setOpUser(Integer opUser) {
        this.opUser = opUser;
    }
}