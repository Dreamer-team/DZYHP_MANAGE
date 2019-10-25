<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
 
<link  href="${ctx}/page/Css/layout.css" rel="stylesheet" type="text/css" />
<link href="${ctx}/page/Css/cb.css" rel="stylesheet" type="text/css"   />
<link  href="${ctx}/page/Css/n.css" rel="stylesheet" type="text/css" />
<link  href="${ctx}/page/Css/index.css"  rel="stylesheet" type="text/css">
 
  <script src="${ctx}/page/Css/jquery-3.3.1.min.js"></script>
 <script src="${ctx}/page/Css/xlPaging.js"></script>
  
   
<style>
.biankuangs{ border:solid #A6D2FF 1px; border-top:0px;   }
#xueke,#item_text2,#item_text1,#itemtypes2,#item_text3{ /**/display:none;}
</style>  
<script>
function change_itemtypes(name){
    document.getElementById("itemtypes2").value="";
    document.getElementById("xueke").value="";
    if(name==2){
        document.getElementById("itemtypes2").style.display="block";
        document.getElementById("item_text1").style.display="block";
        //document.getElementById("xueke").style.display="block";
    }else{
        document.getElementById("itemtypes2").style.display="none"; 
        document.getElementById("xueke").style.display="none"; 
        document.getElementById("item_text1").style.display="none"; 
        document.getElementById("item_text2").style.display="none"; 
    }
    
}

function change_itemtypes2(name){
    document.getElementById("types2").value="";
    document.getElementById("types3").value="";
    if(name=='1'){
       document.getElementById("item_text2").style.display="block"; 
       
       document.getElementById("item_text3").style.display="none"; 
       
    }else if(name=='3'){
 
        document.getElementById("item_text2").style.display="none";
        document.getElementById("item_text3").style.display="block";    
    }else{
 
        document.getElementById("item_text2").style.display="none";
        document.getElementById("item_text3").style.display="none"; 
    }
}


function doDelete(sid) {
	/*如果这里弹出的对话框,用户点击是确定,就马上去请求Servlet
	如何知道用户点击的是确定
	如何在js的方法中请求Servlet
	*/
    var flag=confirm("是否确定删除?");
  if(flag)
	 {
  //表明点了确定,访问servlet,在当前标签页打开超链接
	//window.location.href="DeleteServlet?sid="+sid;	 	
	  location.href="userDelete.do?userId="+sid;	
	 }
}


function doRole(sid) {	 	
	  location.href="userRoleAdd.do?userId="+sid;	

}


function doNextpage(sid) {	 	
	  location.href="touser.do?pageNum="+sid;	
}

function doEndpage(sid) {	 	
	  location.href="touser.do?pageNum="+sid;	
}

function doPrepage(sid) {	 	
	  location.href="touser.do?pageNum="+sid;	
}

</script>
</head>

<body>
<table width="100%" height="25" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-bottom:4px;">
      <tr>
        <td width="17" background="${ctx}/page/Images/bj4.gif"><img src="${ctx}/page/Picture/r.gif" width="16" height="16" /></td>
        <td width="466" background="${ctx}/page/Images/bj4.gif">${sessionScope.user.name }:你好！  当前操作菜单：用户管理界面      
        </td>
        <td width="162" align="center" background="${ctx}/page/Images/bj4.gif"></td>    
      </tr>
    </table>
      <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td width="1%" align="left" background="${ctx}/page/Images/b2.jpg"><img src="${ctx}/page/Picture/b1.jpg" width="10" height="26"/></td>
            <td width="68%" background="${ctx}/page/Images/b2.jpg"><table width="124" border="0" align="left" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="20" align="left"><img src="${ctx}/page/Picture/tz.gif" width="10" height="16"/></td>
                    <td width="104" align="left" class="biao">列表</td> 
                    <tr>
      </table>
  </tr>
</table>


  <table width="100%" border="1" align="center" id="tb" cellpadding="0" cellspacing="0" bgcolor="#AEDEF4" style="border:1px solid #AEDEF4">
    <tr>
      <th width="20" height="25" align="center" bgcolor="#EFFBFE"></th>
      <th align="center" bgcolor="#EFFBFE">ID</th>
      <th align="center" bgcolor="#EFFBFE">用户名</th>
      <th align="center" bgcolor="#EFFBFE">所属部门</th>
      <th align="center" bgcolor="#EFFBFE">职称</th>
      <th align="center" bgcolor="#EFFBFE">状态</th>
      <th align="center" bgcolor="#EFFBFE">操作</th>
    </tr>
      
<c:forEach items="${list.list}" var="users">
        <tr>
          <td style="text-align:center;"><input type="checkbox" name="choice" id="${users.userId}"></td>
             <td>${users.userId}</td>
            <td>${users.name}</td>
            <td> ${users.dept.deptName}</td>
            <td>${users.title}</td>
            <td>${users.statStr}</td>
            <td> <a href="#"  onclick="doRole(${users.userId})">添加角色</a>
        	<a href="#" onclick="doDelete(${users.userId})">删除</a>
          </td>    
    </tr>
    
</c:forEach>
    
  
       
            
    
<ul id="menu">
    <li>
        <a href="build.do">
            <img width="30" height="30" src="${ctx}/page/picture1/xinjian.jpg">
            <p> 新建</p>
        </a>
    </li>
    <li>
        <a href="touser.do">
            <img width="30" height="30" src="${ctx}/page/picture1/shuaxin.jpg">
            <p>刷新</p>
        </a>
    </li>
    <li>
        <a id="alter">
            <img width="30" height="30" src="${ctx}/page/picture1/xiugai.jpg" >
            <p>修改</p>
        </a>
    </li>
    <li>
        <a href="userSeek.do">
            <img width="30" height="30" src="${ctx}/page/picture1/zonghechaxun.jpg" > 
            <p>查询</p>
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

</table>

  <table width="50%" border="1" align="left" id="tb" cellpadding="0" cellspacing="0"style="border:1px solid #AEDEF4">
    <td>总共${list.pages }页</td>
    <td>共${list.total}条数据</td>
    <td>每页显示${list.pageSize }条数据</td>
		<c:if test="${list.isFirstPage==false && list.isLastPage==false}">
		    <td><a href="touser.do">首页</a></td>	
		      <td><a href="#" onclick="doNextpage(${ list.prePage})">上一页</a> </td>`
		      <td><a href="#" onclick="doNextpage(${list.nextPage})">下一页</a> </td>
		     <td><a href="#" onclick="doEndpage(${list.lastPage})">尾页</a></td>
             <td>    <span>当前第${ list.pageNum}页</span></td> 
		</c:if> 
		   
		   <c:if test="${list.isFirstPage }">
		     <td><a href="touser.do">首页</a></td>	`
		      <td><a href="#" onclick="doNextpage(${list.nextPage})">下一页</a> </td>
		   <td>   <a href="#" onclick="doEndpage(${list.lastPage})">尾页</a> </td> 
            <td>  <span>当前第${ list.pageNum}页</span></td> 
		   </c:if> 
		   
		<c:if test="${list.isLastPage}">
		     <td><a href="touser.do">首页</a></td>
		     <td> <a href="#" onclick="doEndpage(${list.lastPage})">尾页</a></td> 
            <td>  <span>当前第${ list.pageNum}页</span> </td> 
		</c:if>    
    </table>
  
  
  
  
  
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td width="68%" background="${ctx}/page/Images/b2.jpg"><table width="124" border="0" align="left" cellpadding="0" cellspacing="0"></td> 
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
                
                window.location.href = "userSelect.do?id="+ele[value].id;
            } else {
                alert("请至少选择一个");
                return;
            }
        }
    </script>
</body>
</html>
