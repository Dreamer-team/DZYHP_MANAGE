
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
.biankuangs{ border:solid #A6D2FF 1px; border-top:0px; }
#item_text2,#item_text1,#itemtypes2,#item_text3{ /**/display:none;}
</style> 

</head>

<body>
<table width="99%" height="25" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-bottom:4px;">
      <tr>
        <td width="17" background="${ctx}/page/Images/bj4.gif"><img src="${ctx}/page/Picture/r.gif" width="16" height="16" /></td>
        <td width="466" background="${ctx}/page/Images/bj4.gif">张宇(学院申报者):你好！欢迎光临，您上次登录时间是：2015-09-20 23:15:15    
    </td>
        <td width="162" align="center" background="${ctx}/page/Images/bj4.gif">
    
        </td>           
      </tr>
    </table>

<table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td width="1%" align="left" background="${ctx}/page/Images/b2.jpg"><img src="${ctx}/page/Picture/b1.jpg" width="10" height="26" /></td>
            <td width="68%" background="${ctx}/page/Images/b2.jpg"><table width="211" border="0" align="left" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="20" align="left"><img src="${ctx}/page/Picture/tz.gif" width="10" height="16" /></td>
                  <td width="191" align="left" class="biao">部门表-修改</td>
                </tr>
            </table></td>
            <td width="31%" align="right" background="${ctx}/page/Images/b2.jpg"><img src="${ctx}/page/Picture/b3.jpg" width="9" height="26" /></td>
          </tr>
</table>




<form action="deptUpdate.do" method="post"   >
<table width="99%" border="0" align="center" cellpadding="3" cellspacing="1" bgcolor="#AEDEF4"> 
  <tr> 
    <div align="left">
  </tr>
    <tr>
      
      
      <input type="hidden" name="deptId" value="${dept.deptId}"></input>
      <td align="center" bgcolor="#FFF9DF" class="t5"><div align="center">名称</div></td>
      <td align="center" bgcolor="#FFFFFF" class="t5">
        <div align="left">
          <input name="deptName" type="text" id="deptName" size="20"  value="${dept.deptName}" />
        </div></td>
      
      <td align="center" bgcolor="#FFF9DF" class="t5"><div align="center">类型</div></td>
      <td align="center" bgcolor="#FFFFFF" class="t5"><div align="left">
        <!-- <input name="zhiwu" type="text" id="zhiwu" value="讲师" size="20" /> -->
        <select name="deptType" id="deptType"  >
          <option value="">请选择...</option>
          <option value="1">实验室</option>
          <option value="2">非实验室</option>
  
          </select> 
      </div></td>
      
      <td align="center" bgcolor="#FFF9DF" class="t5"><div align="center">备注</div></td>
      <td align="center" bgcolor="#FFFFFF" class="t5">
        <div align="left">
          <input name="deptRemark" type="text" id="deptRemark" size="20"  value="${dept.deptRemark}" />
        </div></td>   
    </tr>
    
  
  </table> 
     <tr width="35" style="background-color:#FFFFFF;">
         <td>&nbsp;</td>
         <td width="34%" height="55" align="right">
           <input name="submit" type="submit" value="保存" style="width:40px; height:40px">
       </td>
         <td width="24%" height="55" align="left">
            <input name="back" type="button" value="返回" onclick="javascript:history.go(-1);"style="width:40px; height:40px">
        </td>
         <td>&nbsp;</td>
     </tr>    
        
 </form>
</body>
</html>
