<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  <table width="99%" height="25" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-bottom:4px;">
    <tr>
      <td width="17" background="${ctx}/page/Images/bj4.gif"><img src="${ctx}/page/Picture/r.gif" width="16" height="16" /></td>
      <td width="466" background="${ctx}/page/mages/bj4.gif">张宇(学院申报者):你好！ 当前操作菜单：角色管理界面
      </td>
      <td width="162" align="center" background="${ctx}/page/Images/bj4.gif"></td>
    </tr>
  </table>
  <table width="99%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="1%" align="left" background="${ctx}/page/Images/b2.jpg"><img src="${ctx}/page/Picture/b1.jpg" width="10" height="26" /></td>
      <td width="68%" background="${ctx}/page/Images/b2.jpg">
        <table width="124" border="0" align="left" cellpadding="0" cellspacing="0">
          <tr>
            <td width="20" align="left"><img src="${ctx}/page/Picture/tz.gif" width="10" height="16" /></td>
            <td width="104" align="left" class="biao">列表</td>
          <tr>
        </table>
    </tr>
  </table>


  <table width="99%" border="1" align="center" id="tb" cellpadding="3" cellspacing="1" bgcolor="#AEDEF4"
    style="border:1px solid #AEDEF4">

    <tr>
      <th width="20" height="25" align="center" bgcolor="#EFFBFE">选择</th>
      <th align="center" bgcolor="#EFFBFE">ID</th>
      <th align="center" bgcolor="#EFFBFE">角色名称</th>
      <th align="center" bgcolor="#EFFBFE">备注</th>
      <th align="center" bgcolor="#EFFBFE">操作</th>
      <th align="center" bgcolor="#EFFBFE">状态</th>
    </tr>

       <c:forEach items="${list }" var="role">
       <tr>
         <td style="text-align:center;"><input type="checkbox" name = "choice" id = "first"></td>
             <td>${role.roleId }</td>
             <td>${role.roleName }</td>
             <td>${role.remark }</td>
             <td>${role.stat }</td>
            <td align="center">
                  <a href="#" onclick="doDelete(${role.roleId})">删除</a>
            </td>
    </tr>
          
       </c:forEach>

    <div>
      <ul id="menu">
        <li>
          <a href="partInformation.do">
            <button>新建</button>
          </a>
        </li>
        <li>
          <a href="">
            <button>刷新</button>
          </a>
        </li>
      </ul>
    </div>
    <!-- 搜索框 -->
    <div align="right">
      <form  action="partManage.do" method="post">
        <input type="text" name="roleName" />
        <input type="submit" value="搜索"  />
      </form>
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
        padding: 1px 5px;
        /* 设置内边距 */
      }
    </style>
  </table>


  <table width="99%" border="1" align="center" cellpadding="3" cellspacing="1" bgcolor="#AEDEF4"
    style="border:1px solid #AEDEF4">
    <tr>
      <td height="25" bgcolor="#FFFFFF">&nbsp;</td>
      <td colspan="14" bgcolor="#EFFBFE">&nbsp;

        <style type="text/css">
          .pagination-bar {
            font-size: 0px;
            padding: 5px 0px;
            text-align: center;
          }

          .pagination-bar a {
            display: inline-block;
            padding: 5px 5px;
            text-decoration: none;
            min-width: 20px;
            font-size: 10px;
          }

          .pagination-bar a:not(.disabled) {
            background-color: #FFF;
            color: #666;
            border: 1px solid #BBBBBB;
          }

          .pagination-bar a.disabled {
            background-color: #666;
            color: #FFF;
            border: 1px solid #444;
          }

          .page-prev {
            border-radius: 15px 0px 0px 15px;
          }

          .page-next {
            border-radius: 0px 15px 15px 0px
          }

          .pagination-bar span:not(.active) {
            display: inline-block;
            padding: 5px 7.5px;
            font-size: 16px;
          }
        </style>
        
        </form>
      </td>
    </tr>
  </table>
</body>

</html>