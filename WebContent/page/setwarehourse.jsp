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
            display: none;
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
        
        
        
        function doNextpage(sid) {	 	
      	  location.href="setwarehourse.do?pageNum="+sid;	
      }

   
        
        
        
        
    </script>
</head>

<body>
    <table width="100%" height="25" border="0" align="center" cellpadding="0" cellspacing="0"
        style="margin-bottom:4px;">
        <tr>
            <td width="17" background="${ctx}/page/Images/bj4.gif"><img src="${ctx}/page/Picture/r.gif" width="16" height="16" /></td>
            <td width="466" background="${ctx}/page/Images/bj4.gif">张宇(学院申报者):你好！ 当前操作菜单：仓库设置
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
                        <td width="20" align="left"><img src="Picture/tz.gif" width="10" height="16" /></td>
                        <td width="104" align="left" class="biao">仓库设置</td>
                    <tr>
                </table>
        </tr>
    </table>


    <table width="100%" border="1" align="center" id="tb" cellpadding="0" cellspacing="0" bgcolor="#AEDEF4"
        style="border:1px solid #AEDEF4">
        <tr>
            <th width="20" height="25" align="center" bgcolor="#EFFBFE">选择</th>
            <th align="center" bgcolor="#EFFBFE">仓库名称</th>
            <th align="center" bgcolor="#EFFBFE">仓库类别</th>
            <th align="center" bgcolor="#EFFBFE">经费类别</th>
            <th align="center" bgcolor="#EFFBFE">部门名称</th>
            <th align="center" bgcolor="#EFFBFE">仓库负责人</th>
            <th align="center" bgcolor="#EFFBFE">仓库状态</th>
            <th align="center" bgcolor="#EFFBFE">备注</th>

        </tr>

       
       <c:forEach items="${list.list }" var="base">
        <tr>
            <td style="text-align:center;">
           
            <input type="checkbox" name="choice" id="${base.baseId}">
            </td>
            
            <td>${base.baseName }</td>
            <td>${base.baseType }</td>
            <td>${base.found_type.foundType }</td>
            <td>${base.dept.deptName }</td>
            <td>${base.users.name}</td>
            <td>${base.baseStatString}</td>
            <td>${base.remark}</td>
             
        
             
            
        </tr>
       </c:forEach>


        <ul id="menu">

            <li>
                <a href="warehouseAdd.do">
                    <img width="30" height="30" src="${ctx}/page/picture1/zengjia.jpg">
                    <p>增加</p>
                </a>
            </li>
            <li>

                <a  id="delete">
                    <img width="30" height="30" src="${ctx}/page/picture1/shanchu.jpg">
                    <p>删除</p>
                </a>
            </li>
            <li>
                <a id="alter">
                    <img width="30" height="30" src="${ctx}/page/picture1/xiugai.jpg">
                    <p>修改</p>
                </a>
            </li>

            <li>
                <a href="seek.do">
                    <img width="30" height="30" src="${ctx}/page/picture1/zonghechaxun.jpg">
                    <p>综合查询</p>
                </a>
            </li>
            <!-- <li>
                <a href="">
                    <img width="30" height="30" src="./picture1/fu.jpg">
                    <p>复核</p>
                </a>
            </li> -->
            <li>
                <a href="">
                    <img width="30" height="30" src="${ctx}/page/picture1/daochu.jpg">
                    <p>导出Excel</p>
                </a>
            </li>




        </ul>

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

    </table>

<table width="50%" border="1" align="left" id="tb" cellpadding="0" cellspacing="0"style="border:1px solid #AEDEF4">
    <td>总共${list.pages }页</td>
    <td>共${list.total}条数据</td>
    <td>每页显示${list.pageSize }条数据</td>
		<c:if test="${list.isFirstPage==false && list.isLastPage==false}">
		    <td><a href="touser.do">首页</a></td>	
		      <td><a href="#" onclick="doNextpage(${ list.prePage})">上一页</a> </td>`
		      <td><a href="#" onclick="doNextpage(${list.nextPage})">下一页</a> </td>
		     <td><a href="#" onclick="doNextpage(${list.lastPage})">尾页</a></td>
             <td>    <span>当前第${ list.pageNum}页</span></td> 
		</c:if> 
		   
		   <c:if test="${list.isFirstPage }">
		     <td><a href="touser.do">首页</a></td>	`
		      <td><a href="#" onclick="doNextpage(${list.nextPage})">下一页</a> </td>
		   <td>   <a href="#" onclick="doNextpage(${list.lastPage})">尾页</a> </td> 
            <td>  <span>当前第${ list.pageNum}页</span></td> 
		   </c:if> 
		   
		<c:if test="${list.isLastPage}">
		     <td><a href="touser.do">首页</a></td>
		     <td> <a href="#" onclick="doNextpage(${list.lastPage})">尾页</a></td> 
            <td>  <span>当前第${ list.pageNum}页</span> </td> 
		</c:if>    
    </table>


    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>

            <td width="1%" align="left" background="${ctx}/page/Images/b2.jpg"><img src="${ctx}/page/Picture/b2.jpg" width="10" height="26" />
            </td>
            <td width="68%" background="${ctx}/page/Images/b2.jpg">
                <table width="124" border="0" align="left" cellpadding="0" cellspacing="0">
            </td>
        <tr>
    </table>

    </div>


    <script>
        var ele = document.getElementsByName("choice");
        var del = document.getElementById("delete");
        del.onclick = function () {
            var arr = [];
            for (var i = 0; i < ele.length; i++) {
                if (ele[i].checked) {
                    alert(ele[i].id);
                    arr.push(ele[i].id);
                }
            }
             window.location.href = "deleteBase.do?baseIds="+arr;   //数组传值 arr
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
            	 alert(ele[value].id);
                window.location.href = "baseUpdate.do?baseId="+ele[value].id;
            } else {
                alert("请至少选择一个");
                return;
            }
        }
    </script>
</body>

</html>