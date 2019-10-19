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
</script>
</head>

<body>
<table width="100%" height="25" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-bottom:4px;">
      <tr>
        <td width="17" background="${ctx}/page/Images/bj4.gif"><img src="${ctx}/page/Picture/r.gif" width="16" height="16" /></td>
        <td width="466" background="${ctx}/page/Images/bj4.gif">张宇(学院申报者):你好！  当前操作菜单：用户管理      
        </td>
        <td width="162" align="center" background="Images/bj4.gif"></td>    
      </tr>
    </table>
      <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td width="1%" align="left" background="${ctx}/page/Images/b2.jpg"><img src="${ctx}/page/Picture/b1.jpg" width="10" height="26"/></td>
            <td width="68%" background="${ctx}/page/Images/b2.jpg"><table width="124" border="0" align="left" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="20" align="left"><img src="${ctx}/page/Picture/tz.gif" width="10" height="16"/></td>
                    <td width="104" align="left" class="biao">添加角色表单</td> 
                    <tr>
      </table>
  </tr>
</table>


  <table width="100%" border="1" align="center" id="tb" cellpadding="0" cellspacing="0" bgcolor="#AEDEF4" style="border:1px solid #AEDEF4">
    <tr>
      <th width="20" height="25" align="center" bgcolor="#EFFBFE"></th>
      <th align="center" bgcolor="#EFFBFE">ID</th>
      <th align="center" bgcolor="#EFFBFE">角色名称</th>
      <th align="center" bgcolor="#EFFBFE">角色描述</th>
    </tr>
    <tr>
       <c:forEach var="role" items="${list }">
        <td style="text-align:center;"><input type="checkbox"  value="${role.roleId }"></td>
        <td>${role.roleId }</td>
        <td>${role.roleName }</td>
        <td>${role.remark }</td>
       </c:forEach>
    </tr>
    
      

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
    <input type="button" value="保存" onclick=""style="width:40px; height:40px" >
    <input type="button" value="返回" onclick="javascript:history.go(-1);"style="width:40px; height:40px">
    </table>




      

</body>
</html>
