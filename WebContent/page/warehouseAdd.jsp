<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html
    PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

        #xueke,
        #item_text2,
        #item_text1,
        #itemtypes2,
        #item_text3 {
            /**/
            display: none;
        }
        .btn{
            margin-left:45%;
        }
    </style>
    <script>
        function change_itemtypes(name) {
            document.getElementById("itemtypes2").value = "";
            document.getElementById("xueke").value = "";
            if (name == 2) {
                document.getElementById("itemtypes2").style.display = "block";
                document.getElementById("item_text1").style.display = "block";
                //document.getElementById("xueke").style.display="block";
            } else {
                document.getElementById("itemtypes2").style.display = "none";
                document.getElementById("xueke").style.display = "none";
                document.getElementById("item_text1").style.display = "none";
                document.getElementById("item_text2").style.display = "none";
            }

        }

        function change_itemtypes2(name) {
            document.getElementById("types2").value = "";
            document.getElementById("types3").value = "";
            if (name == '1') {
                document.getElementById("item_text2").style.display = "block";

                document.getElementById("item_text3").style.display = "none";

            } else if (name == '3') {

                document.getElementById("item_text2").style.display = "none";
                document.getElementById("item_text3").style.display = "block";
            } else {

                document.getElementById("item_text2").style.display = "none";
                document.getElementById("item_text3").style.display = "none";
            }
        }
    </script>
</head>

<body>
    <table width="100%" height="25" border="0" align="center" cellpadding="0" cellspacing="0"
        style="margin-bottom:4px;">
        <tr>
            <td width="17" background="${ctx}/page/Images/bj4.gif"><img src="${ctx}/page/Picture/r.gif" width="16" height="16" /></td>
            <td width="466" background="Images/bj4.gif">张宇(学院申报者):你好！ 当前操作菜单：增加
            </td>
            <td width="162" align="center" background="${ctx}/page/Images/bj4.gif"></td>
        </tr>
    </table>
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td width="1%" align="left" background="${ctx}/page/Images/b2.jpg"><img src="${ctx}/page/Picture/b1.jpg" width="10" height="26" />
            </td>
            <td width="68%" background="${ctx}/page/Images/b2.jpg">
                <table width="124" border="0" align="left" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="20" align="left"><img src="${ctx}/page/Picture/tz.gif" width="10" height="16" /></td>
                        <td width="104" align="left" class="biao">增加</td>
                    <tr>
                </table>
        </tr>
    </table>






<form action="baseAdd.do" method="post">
    <table width="80%" border="1" align="center" id="tb" cellpadding="0" cellspacing="0" bgcolor="#AEDEF4"
        style="border:1px solid #ffffff">


        <caption style="font-weight: 900 ">仓库表</caption>


        <tr>
            <th align="center" bgcolor="#EFFBFE">仓库名称</th>
            <td><input type="text" name="baseName" size="40"></td>
            <th align="center" bgcolor="#EFFBFE">仓库类别</th>
            <td><input type="text" name="baseType" size="40"></td>
            <th align="center" bgcolor="#EFFBFE">经费类别</th>
            <td>
              
              <select name="found_type.foundTypeId" id="foundTypeId">
                <option value="">请选择...</option>
                 <c:forEach items="${listFoundType }" var="Type">
                 <option value="${ Type.foundTypeId }">${Type.foundType }</option>    
                 </c:forEach>
                
             </select>
            
           </td>
            <th align="center" bgcolor="#EFFBFE">部门编号</th>
            <td><input type="text" name="deptId" size="40"></td>
        </tr>
        <tr>
            <th align="center" bgcolor="#EFFBFE">仓库负责人</th>
            
           <td>
            <select name="users.userId" id="userId">
                <option value="">请选择...</option>
                 <c:forEach items="${ userList }" var="user">
                 <option value="${user.userId }">${user.name }</option>    
                 </c:forEach>
             </select> 
            
           </td>
            <th align="center" bgcolor="#EFFBFE">经费来源</th>
            <td><input type="text" name="foundSrc" size="40"></td>
            <th align="center" bgcolor="#EFFBFE">经费预算</th>
            <td><input type="text" name="foundBudget" size="40"></td>
            <th align="center" bgcolor="#EFFBFE">经费项目</th>
            <td><input type="text" name="foundProj" size="40"></td>
        </tr>
        <tr>
            <th align="center" bgcolor="#EFFBFE">经费主管部门</th>
            <td> <select name="dept.deptId" id="deptId">
                <option value="">请选择...</option>
                 <c:forEach items="${list }" var="dept">
                 <option value="${dept.deptId }">${dept.deptName }</option>    
                 </c:forEach>
                
             </select> </td>
            <th align="center" bgcolor="#EFFBFE">经费状态</th>
            <td>
            <select name="foundStat" id="foundStat">
                <option value="">请选择...</option>
                 
                 <option value="0">关闭</option>  
                 <option value="1">开启</option>      
             </select> 
            </td>
            <th align="center" bgcolor="#EFFBFE">仓库状态</th>
               <td><select name="baseStat" id="baseStat">
                <option value="">请选择...</option>
                 
                 <option value="0">关闭</option>  
                 <option value="1">开启</option>      
                </select> 
             </td>
            <th align="center" bgcolor="#EFFBFE">备注</th>
            <td><input type="text" name="remark" size="40"></td>
        </tr>
    </table>
    <div class="btn">
        <table width="50%" border="1" align="left" id="tb" cellpadding="0" cellspacing="0"
            style="border:1px solid #ffffff">
            <input type="submit" value="保存" style="width:40px; height:40px">
            <input type="button" value="返回" onclick="javascript:history.go(-1);" style="width:40px; height:40px">
        </table>
    </div>

    <style type="text/css">
        #menu li {
            float: left;
            /* 往左浮动 */
        }
    </style>

    <style type="text/css">
        #menu li a {
            display: block;
            /* 将链接设为块级元素 */
            padding: 8px 20px;
            /* 设置内边距 */
            color: #000;
            /* 设置文字颜色 */
            text-decoration: none;
            /* 去掉下划线 */
        }
    </style>



</body>

</html>