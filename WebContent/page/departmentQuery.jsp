<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>

<link href="${ctx}/page/Css/layout.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/page/Css/cb.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/page/Css/n.css" rel="stylesheet" type="text/css" />
<style>
.biankuangs {
	border: solid #A6D2FF 1px;
	border-top: 0px;
}

#xueke, #item_text2, #item_text1, #itemtypes2, #item_text3 { /**/
	display: none;
}
</style>
<script>




</script>
</head>

<body>
	<table width="100%" height="25" border="0" align="center"
		cellpadding="0" cellspacing="0" style="margin-bottom: 4px;">
		<tr>
			<td width="17" background="${ctx}/page/Images/bj4.gif"><img
				src="${ctx}/page/Picture/r.gif" width="16" height="16" /></td>
			<td width="466" background="${ctx}/page/Images/bj4.gif">张宇(学院申报者):你好！
				当前操作菜单：部门表</td>
			<td width="162" align="center" background="${ctx}/page/Images/bj4.gif"></td>
		</tr>
	</table>
	<table width="100%" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>
			<td width="1%" align="left" background="${ctx}/page/Images/b2.jpg"><img
				src="${ctx}/page/Picture/b1.jpg" width="10" height="26" /></td>
			<td width="68%" background="${ctx}/page/Images/b2.jpg"><table
					width="124" border="0" align="left" cellpadding="0" cellspacing="0">
					<tr>
						<td width="20" align="left"><img src="${ctx}/page/Picture/tz.gif"
							width="10" height="16" /></td>
						<td width="104" align="left" class="biao">部门表</td></tr>
						<tr>
				</table><br />

		</tr>
	</table>
	<form action="deptsearch.do">
		<tr>
			<td colspan="8">
			按名称查询:<input type="text" name="deptName" /> &nbsp;&nbsp;&nbsp; 
				按类型查询:<select name="deptType">
					<option value="">--请选择--
						<option value="1">实验室
							<option value="2">非实验室
			</select> &nbsp;&nbsp;&nbsp; 
			
			<!-- 
			按备注查询:<input type="text" name="deptRemark" /> &nbsp;&nbsp;&nbsp; 
			 -->
			
			<input type="submit" value="查询"/>
					
				
				</td>
		</tr>
	<table width="100%" border="1" align="center" id="tb" cellpadding="0"
		cellspacing="0" bgcolor="#AEDEF4" style="border: 1px solid #AEDEF4">
		<tr>
			<th width="20" height="25" align="center" bgcolor="#EFFBFE">选择</th>
			<th align="center" bgcolor="#EFFBFE">ID</th>
			<th align="center" bgcolor="#EFFBFE">名称</th>
			<th align="center" bgcolor="#EFFBFE">类型</th>
			<th align="center" bgcolor="#EFFBFE">备注</th>
			<th align="center" bgcolor="#EFFBFE">操作</th>


		</tr>
		<tr>
			<c:forEach items="${list1}" var="dept">
				<tr>
					<td style="text-align: center;"><input type="checkbox"
						name="choice" id="${dept.deptId}"></td>
					<td>${dept.deptId}</td>
					<td>${dept.deptName}</td>
					<td>${dept.deptType}</td>
					<td>${dept.deptRemark }</td>
					<td><a href="#" onclick="dodeptDelete(${dept.deptId})">删除</a>
				</tr>

			</c:forEach>
		</tr>
			
		<!-- 上图标 -->
<!-- 
<ul id="menu">
			<li><input type="" name="in"> <a href="#">
						<button id="name">按部门查询</button>
				</a></li>
			<li><input type="" name="in"> <a href="#">
						<button id="name">按账号查询</button>
				</a></li>

			<li><select name="zhuangtai" id="zhuangtai">
					<option value="">请选择...</option>
					<option value="1">开启</option>
					<option value="2">关闭</option>
			</select> <a href="#">
					<button id="condition">按状态查询</button>
			</a></li>
		</ul>
		</form>
 -->
		
		<style type="text/css">
#menu {
	float: right;
}
</style>

		<!-- <style type="text/css">
#menu li a {
display:block; /* 将链接设为块级元素 */
padding:8px 20px; /* 设置内边距 */
color:#000; /* 设置文字颜色 */
text-decoration:none; /* 去掉下划线 */
}
</style> -->

		<!-- 下一页页脚 -->
		
		
	</table>

	
	
	
	
	
	
	

	<table width="100%" border="0" align="center" cellpadding="0"
		cellspacing="0">
		<tr>

			<td width="1%" align="left" background="${ctx}/page/Images/b2.jpg"><img
				src="${ctx}/page/Picture/b2.jpg" width="10" height="26" /></td>
			<td width="68%" background="${ctx}/page/Images/b2.jpg"><table width="124"
					border="0" align="left" cellpadding="0" cellspacing="0">
					</td>
					<tr>
				</table>

				</div>
					</form>	
</body>
</html>
