package pdsu.dzyhp.dto;

public class BaseDto {
	
	 private String baseName;
	 
	 private String baseType;
	 
	 private String foundType;
	 
	 private Integer deptId;
	 
	 private String name;
	 
	 private String foundSrc;
	 
	 private String foundBudget;
	
	 private String foundProj;
	 
	 private String foundDept;
	 
	 private String foundStat;
	 
	 private String baseStat;
	 
	 public String getBaseStat() {
		return baseStat;
	}

	public void setBaseStat(String baseStat) {
		this.baseStat = baseStat;
	}

	private String remark;

	public String getBaseName() {
		return baseName;
	}

	public void setBaseName(String baseName) {
		this.baseName = baseName;
	}

	public String getBaseType() {
		return baseType;
	}

	public void setBaseType(String baseType) {
		this.baseType = baseType;
	}

	public String getFoundType() {
		return foundType;
	}

	public void setFoundType(String foundType) {
		this.foundType = foundType;
	}

	public Integer getDeptId() {
		return deptId;
	}

	public void setDeptId(Integer deptId) {
		this.deptId = deptId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFoundSrc() {
		return foundSrc;
	}

	public void setFoundSrc(String foundSrc) {
		this.foundSrc = foundSrc;
	}

	public String getFoundBudget() {
		return foundBudget;
	}

	public void setFoundBudget(String foundBudget) {
		this.foundBudget = foundBudget;
	}

	public String getFoundProj() {
		return foundProj;
	}

	public void setFoundProj(String foundProj) {
		this.foundProj = foundProj;
	}

	public String getFoundDept() {
		return foundDept;
	}

	public void setFoundDept(String foundDept) {
		this.foundDept = foundDept;
	}

	public String getFoundStat() {
		return foundStat;
	}

	public void setFoundStat(String foundStat) {
		this.foundStat = foundStat;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	 
	 public BaseDto() {
		// TODO Auto-generated constructor stub
	}

	public BaseDto(String baseName, String baseType, String foundType, Integer deptId, String name, String foundSrc,
			String foundBudget, String foundProj, String foundDept, String foundStat, String baseStat, String remark) {
		super();
		this.baseName = baseName;
		this.baseType = baseType;
		this.foundType = foundType;
		this.deptId = deptId;
		this.name = name;
		this.foundSrc = foundSrc;
		this.foundBudget = foundBudget;
		this.foundProj = foundProj;
		this.foundDept = foundDept;
		this.foundStat = foundStat;
		this.baseStat = baseStat;
		this.remark = remark;
	}

	@Override
	public String toString() {
		return "BaseDto [baseName=" + baseName + ", baseType=" + baseType + ", foundType=" + foundType + ", deptId="
				+ deptId + ", name=" + name + ", foundSrc=" + foundSrc + ", foundBudget=" + foundBudget + ", foundProj="
				+ foundProj + ", foundDept=" + foundDept + ", foundStat=" + foundStat + ", baseStat=" + baseStat
				+ ", remark=" + remark + "]";
	}
	

	
	 
	 
	 
	 
	

}
