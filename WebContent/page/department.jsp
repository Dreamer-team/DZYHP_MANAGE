<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
 
<link  href="${ctx}/page/Css/layout.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/page/Css/cb.css" rel="stylesheet" type="text/css"   />
<link  href="${ctx}/page/Css/n.css" rel="stylesheet" type="text/css" />
<style>
.biankuangs{ border:solid #A6D2FF 1px; border-top:0px;   }
#xueke,#item_text2,#item_text1,#itemtypes2,#item_text3{ /**/display:none;}
</style>  
<script>

function dodeptDelete(sid) {
	/*如果这里弹出的对话框,用户点击是确定,就马上去请求Servlet
	如何知道用户点击的是确定
	如何在js的方法中请求Servlet
	*/
    var flag=confirm("是否确定删除?");
  if(flag)
	 {
  //表明点了确定,访问servlet,在当前标签页打开超链接	
	  location.href="deptelete.do?deptId="+sid;	
	 }
 
}


function doNextpage(sid) {	 	
	  location.href="dept.do?pageNum="+sid;	
}

function doEndpage(sid) {	 	
	  location.href="dept.do?pageNum="+sid;	
}

function doPrepage(sid) {	 	
	  location.href="dept.do?pageNum="+sid;	
}

</script>
</head>

<body>
<table width="100%" height="25" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-bottom:4px;">
      <tr>
        <td width="17" background="${ctx}/page/Images/bj4.gif"><img src="${ctx}/page/Picture/r.gif" width="16" height="16" /></td>
        <td width="466" background="${ctx}/page/Images/bj4.gif">张宇(学院申报者):你好！  当前操作菜单：部门表    
        </td>
        <td width="162" align="center" background="${ctx}/page/Images/bj4.gif"></td>    
      </tr>
    </table>
      <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td width="1%" align="left" background="${ctx}/Images/b2.jpg"><img src="${ctx}/page/Picture/b1.jpg" width="10" height="26"/></td>
            <td width="68%" background="${ctx}/page/Images/b2.jpg"><table width="124" border="0" align="left" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="20" align="left"><img src="${ctx}/page/Picture/tz.gif" width="10" height="6"/></td>
                    <td width="104" align="left" class="biao">部门表</td> 
                    <tr>
      </table>
  </tr>
</table>


    <table width="100%" border="1" align="center" id="tb" cellpadding="0" cellspacing="0" bgcolor="#AEDEF4" style="border:1px solid #AEDEF4">
    <tr>
      <th width="20" height="25" align="center" bgcolor="#EFFBFE">选择</th>
            <th align="center" bgcolor="#EFFBFE">ID</th>
      <th align="center" bgcolor="#EFFBFE">名称</th>
      <th align="center" bgcolor="#EFFBFE">类型</th>
      <th align="center" bgcolor="#EFFBFE">备注</th>
        <th align="center" bgcolor="#EFFBFE">操作</th>
      
    
    </tr>
    <tr>
	<c:forEach items="${list1.list}" var="dept">
 <tr>
				<td style="text-align: center;"><input type="checkbox"
					name="choice" id="${dept.deptId}"></td>
				<td>${dept.deptId} </td>
				<td>${dept.deptName} </td>
				<td>${dept.deptType}</td>
				<td>${dept.deptRemark }</td>
		
        	<td><a href="#" onclick="dodeptDelete(${dept.deptId})">删除</a>
          </td>  
          </td>  
				
					</tr>

</c:forEach>
</tr>
<!-- 上图标 -->
<ul id="menu">
    
    <li>
       <a href="departmentAdd.do">
            <img width="30" height="30" src="${ctx}/page/Picture/2.jpg">
            <p>增加</p>
        </a>
    </li>
       <li>
           <a id="alter">
            <img width="30" height="30" src="${ctx}/page/Picture/3.jpg">
            <p>修改</p>
        </a>
    </li>
    
   
     <li>
        <a href="departmentQuery.do">
            <img width="30" height="30" src="${ctx}/page/Picture/7.jpg">
            <p>综合查询</p>
        </a>
    </li>

</ul>

<style type="text/css">
#menu li { 
float:left; /* 往左浮动 */
}
</style>

<style type="text/css">
#menu li a {
display:block; /* 将链接设为块级元素 */
padding:8px 20px; /* 设置内边距 */
color:#000; /* 设置文字颜色 */
text-decoration:none; /* 去掉下划线 */
}
</style>

<!-- 下一页页脚 -->
</table>
 <table width="100%" border="1" align="center" id="tb" cellpadding="0" cellspacing="0" bgcolor="#AEDEF4" style="border:1px solid #AEDEF4">
    <td>总共${list1.pages }页</td>
    <td>共${list1.total}条数据</td>
    <td>每页显示${list1.pageSize }条数据</td>
		<c:if test="${list1.isFirstPage==false && list1.isLastPage==false}">
		    <td><a href="dept.do">首页</a></td>	
		      <td><a href="#" onclick="doNextpage(${list1.prePage})">上一页</a> </td>`
		      <td><a href="#" onclick="doNextpage(${list1.nextPage})">下一页</a> </td>
		     <td><a href="#" onclick="doEndpage(${list1.lastPage})">尾页</a></td>
             <td>    <span>当前第${list1.pageNum}页</span></td> 
		</c:if>
		   <c:if test="${list1.isFirstPage }">
		     <td><a href="dept.do">首页</a></td>	`
		      <td><a href="#" onclick="doNextpage(${list1.nextPage})">下一页</a> </td>
		   <td>   <a href="#" onclick="doEndpage(${list1.lastPage})">尾页</a> </td> 
            <td>  <span>当前第${ list1.pageNum}页</span></td> 
		   </c:if> 
		   
		<c:if test="${list1.isLastPage}">
		     <td><a href="dept.do">首页</a></td>
		       <td><a href="#" onclick="doNextpage(${list1.prePage})">上一页</a> </td>
		     <td> <a href="#" onclick="doEndpage(${list1.lastPage})">尾页</a></td> 
            <td>  <span>当前第${list1.pageNum}页</span> </td> 
		</c:if>    
    </table>


<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>

            <td width="1%" align="left" background="${ctx}/Images/b2.jpg"><img src="${ctx}/page/Picture/b2.jpg" width="10" height="26"/></td>
            <td width="68%" background="${ctx}/page/Images/b2.jpg"><table width="124" border="0" align="left" cellpadding="0" cellspacing="0">
              </td> 
                    <tr>
      </table>
 
</div>
    <script>
        var ele = document.getElementsByName("choice");
        var list = document.getElementsByClassName("deleteone");
        for (var i = 0; i < list.length; i++) {
            (function (i) {
                list[i].onclick = function () {
                    alert(ele[i].id);
                    window.location.href = "#"; //传值  ele[i].id   
                }
            })(i);
        }
        var a = document.getElementById("alter");
        var value;
        a.onclick = function () {
            var i = 0;
            for (k in ele) {
                if (ele[k].checked) {
                    value = k;
                    i++;
                }
            }
            if (i > 1) {
                alert("不能修改多个");
                return;
            } else if (i === 1) {
                
                window.location.href = "deptSelect.do?deptId="+ele[value].id;
            } else {
                alert("请至少选择一个");
                return;
            }
        }
    </script>

</body>
</html>
