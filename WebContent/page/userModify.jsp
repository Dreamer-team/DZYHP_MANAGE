<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <td width="466" background="Images/bj4.gif">张宇(学院申报者):你好！  当前操作菜单：用户界面管理     
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
                    <td width="104" align="left" class="biao">修改</td> 
                    <tr>
      </table>
  </tr>
</table>

<form id="user" name="user" method="post" action="userUpdate.do" >
   <table width="50%" border="0" align="center" id="title" name="title" bgcolor="#AEDEF4" cellpadding="0" cellspacing="0" style="border:1px solid #ffffff">
     <caption style="font-size:20px ">用户信息</caption>
     <tr width="35">
         <input type="hidden" value="${user.userId }" name="userId">
         <td align="right" height="40">用户名称:</td>
         <td>${user.name }</td>
         <td  align="right">所属部门:</td>
         <td align="left">
            <div align="left">
               ${user.dept.deptName}
           </div>
         </td> 
     </tr>  
     <tr width="35">
         <td align="right" height="40">职称:</td>
         <td>${user.title }</td>
         <td align="right">用户状态:</td>
         <td align="center">
            <div align="left">
             <select name="stat" id="stat"   >
                <option value="1">开启</option>
                <option value="0">关闭</option>
             </select> 
           </div>
         </td> 
     </tr>      
     <tr width="35">
        <td align="right" height="40">密码:</td>
         <td>****</td>
     </tr>
     <tr width="35" style="background-color:#FFFFFF;">
         <td>&nbsp;</td>
         <td width="34%" height="55" align="right">
           <input name="conserve" type="submit" value="保存" style="width:40px; height:40px">
       </td>
         <td width="24%" height="55" align="left">
            <input name="back" type="button" value="返回" onclick="javascript:history.go(-1);"style="width:40px; height:40px">
        </td>
         <td>&nbsp;</td>
     </tr>    
        
  </table>

 
</body>
</html>
