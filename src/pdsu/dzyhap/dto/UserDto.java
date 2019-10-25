package pdsu.dzyhap.dto;

import pdsu.dzyhap.bean.Dept;

public class UserDto {
	private String userId;
   
    private String name;

    private String  deptName;
    private String title;


    private String statStr;
    
    
    
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getStatStr() {
		return statStr;
	}
	
	public void setStatStr(String statStr) {
		this.statStr = statStr;
	}
	public UserDto() {
		super();
	}
	public UserDto(String userId, String name, String deptName, String title, String statStr) {
		super();
		this.userId = userId;
		this.name = name;
		this.deptName = deptName;
		this.title = title;
		this.statStr = statStr;
	}
	
   
	
	
	
}
