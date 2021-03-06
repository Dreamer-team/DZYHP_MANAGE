package pdsu.dzyhp.bean;

public class Mat_cate {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column mat_cate.cate_id
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    private Integer cateId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column mat_cate.Cate_id_manual
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    private String cateIdManual;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column mat_cate.Cate_name
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    private String cateName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column mat_cate.Is_danger
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    private String isDanger;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column mat_cate.degree_id
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    private Integer degreeId;
    
    Danger_degree danger_degree;
    

    public Mat_cate() {
		super();
	}

	public Mat_cate(Integer cateId, String cateIdManual, String cateName, String isDanger, Integer degreeId,
			Danger_degree danger_degree) {
		super();
		this.cateId = cateId;
		this.cateIdManual = cateIdManual;
		this.cateName = cateName;
		this.isDanger = isDanger;
		this.degreeId = degreeId;
		this.danger_degree = danger_degree;
	}

	public Danger_degree getDanger_degree() {
		return danger_degree;
	}

	public void setDanger_degree(Danger_degree danger_degree) {
		this.danger_degree = danger_degree;
	}

	/**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column mat_cate.cate_id
     *
     * @return the value of mat_cate.cate_id
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public Integer getCateId() {
        return cateId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column mat_cate.cate_id
     *
     * @param cateId the value for mat_cate.cate_id
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public void setCateId(Integer cateId) {
        this.cateId = cateId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column mat_cate.Cate_id_manual
     *
     * @return the value of mat_cate.Cate_id_manual
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public String getCateIdManual() {
        return cateIdManual;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column mat_cate.Cate_id_manual
     *
     * @param cateIdManual the value for mat_cate.Cate_id_manual
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public void setCateIdManual(String cateIdManual) {
        this.cateIdManual = cateIdManual == null ? null : cateIdManual.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column mat_cate.Cate_name
     *
     * @return the value of mat_cate.Cate_name
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public String getCateName() {
        return cateName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column mat_cate.Cate_name
     *
     * @param cateName the value for mat_cate.Cate_name
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public void setCateName(String cateName) {
        this.cateName = cateName == null ? null : cateName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column mat_cate.Is_danger
     *
     * @return the value of mat_cate.Is_danger
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public String getIsDanger() {
        return isDanger;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column mat_cate.Is_danger
     *
     * @param isDanger the value for mat_cate.Is_danger
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public void setIsDanger(String isDanger) {
        this.isDanger = isDanger == null ? null : isDanger.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column mat_cate.degree_id
     *
     * @return the value of mat_cate.degree_id
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public Integer getDegreeId() {
        return degreeId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column mat_cate.degree_id
     *
     * @param degreeId the value for mat_cate.degree_id
     *
     * @mbggenerated Tue Oct 08 21:15:41 GMT+08:00 2019
     */
    public void setDegreeId(Integer degreeId) {
        this.degreeId = degreeId;
    }
}