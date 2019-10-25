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
  <script src="${ctx}/page/Scripts/jquery.js" type="text/javascript">
<!--

//-->
</script>
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

</head>

<body>
  <table width="100%" height="25" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-bottom:4px;">
    <tr>
      <td width="17" background="${ctx}/page/Images/bj4.gif"><img src="${ctx}/page/Picture/r.gif" width="16" height="16" /></td>
      <td width="466" background="${ctx}/page/Images/bj4.gif">张宇(学院申报者):你好！ 当前操作菜单：用户管理
      </td>
      <td width="162" align="center" background="${ctx}/page/Images/bj4.gif"></td>
    </tr>
  </table>
  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="1%" align="left" background="${ctx}/page/Images/b2.jpg"><img src="${ctx}/page/Picture/b1.jpg" width="10" height="26" /></td>
      <td width="68%" background="${ctx}/page/Images/b2.jpg">
        <table width="124" border="0" align="left" cellpadding="0" cellspacing="0">
          <tr>
            <td width="20" align="left"><img src="${ctx}/page/Picture/tz.gif" width="10" height="16" /></td>
            <td width="104" align="left" class="biao">用户管理--查询</td>
          <tr>
        </table>
    </tr>

  </table>
  </table>


  <!-- 上图标 -->

  <ul id="menu">
    <li>
     <input type="" class="department">
      <a href="#">
        <button id="department">按部门查询</button>
      </a>
    </li>
    <li>
      <input type="" class="account">
      <a href="#">
        <button id="account">按账号查询</button>
      </a>
    </li>

    <li>
      <select name="stat" id="zhuangtai">
        <option value="0">请选择...</option>
        <option value="1">开启</option>
        <option value="2">关闭</option>
      </select>
      <a href="#">
        <button id="condition">按状态查询</button>
      </a>
    </li>
  </ul>

  <style type="text/css">
    #menu {
      float: right;
    }
  </style>




  <table width="100%" border="1" align="center" id="tb" cellpadding="0" cellspacing="0" bgcolor="#AEDEF4"
    style="border:1px solid #AEDEF4">
    <tr>
      <th width="20" height="25" align="center" bgcolor="#EFFBFE"></th>
      <th align="center" bgcolor="#EFFBFE">ID</th>
      <th align="center" bgcolor="#EFFBFE">用户名</th>
      <th align="center" bgcolor="#EFFBFE">所属部门</th>
      <th align="center" bgcolor="#EFFBFE">职称</th>
      <th align="center" bgcolor="#EFFBFE">状态</th>
      <!--  <th align="center" bgcolor="#EFFBFE">操作</th> -->

    </tr>
     
  </table>


  <table width="50%" border="1" align="left" id="tb" cellpadding="0" cellspacing="0" style="border:1px solid #AEDEF4">
    <td>总共2页，共14条数据。每页<select>
        <option value="volvo">1</option>
        <option value="saab">2</option>
        <option value="opel">3</option>
        <option value="audi">4</option>
      </select>条</td>


    <td><a href="user.html">首页</a>
    <td><a href="#" onClick="javascript:history.back(-1);" class="page-prev disabled">&lt;</a>
      <a href="user.html">1</a>
      <a href="user2.html">2</a>
      <a href="user3.html">3</a>
      <a href="user4.html">4</a>
      <a href="user5.html">5</a>
      <a href="user2.html" class="page-next disabled">&gt;</a>
      <a href="user5.html">尾页</a>
      <span>第1页</span></<span>
      <span>共5页</span></<a>
    </td>

  </table>




  </div>


</body>


<script>
    var deval;
    var accval;
    var selval;
    $("#department").click(function () {
    	 deval = $(".department").val();
      $.ajax({
        url: "selectUserOne.do", //url地址
        type: "post",
        dataType: "json",
        data: {
        	deptName: deval
        },
        
        success: function (data) {
        	var str ='<tr><th width="20" height="25" align="center" bgcolor="#EFFBFE"></th><th align="center" bgcolor="#EFFBFE">ID</th><th align="center" bgcolor="#EFFBFE">用户名</th><th align="center" bgcolor="#EFFBFE">所属部门</th><th align="center" bgcolor="#EFFBFE">职称</th><th align="center" bgcolor="#EFFBFE">状态</th></tr>';
            var html = str;
            for (var i = 0; i < data.length; i++) {
              // console.log(data[i]);
              html += '<tr><td style="text-align:center;"><input type="checkbox"></td>';
              for (var k in data[i]) {
                // console.log(data[i][k]);
                html += '<td>' + data[i][k] + '</td>';
              }
              html += '</tr>';
            }
            $('#tb').html(html);
          //console.log(data);
        }
      })
    })
    $("#account").click(function () {
      // alert($(".account").val());
      accval = $(".account").val();
      $.ajax({
        url: "#", //url地址
        type: "post",
        data: {
          value: accval
        },
        dataType: "json",
        success: function (data) {
        	var str ='<tr><th width="20" height="25" align="center" bgcolor="#EFFBFE"></th><th align="center" bgcolor="#EFFBFE">ID</th><th align="center" bgcolor="#EFFBFE">用户名</th><th align="center" bgcolor="#EFFBFE">所属部门</th><th align="center" bgcolor="#EFFBFE">职称</th><th align="center" bgcolor="#EFFBFE">状态</th></tr>';
            var html = str;
            for (var i = 0; i < data.length; i++) {
              // console.log(data[i]);
              html += '<tr><td style="text-align:center;"><input type="checkbox"></td>';
              for (var k in data[i]) {
                // console.log(data[i][k]);
                html += '<td>' + data[i][k] + '</td>';
              }
              html += '</tr>';
            }
            $('#tb').html(html);
        }
      })
    })
    $("#condition").click(function (){
        //  alert($("#zhuangtai").val());
        selval = $("#zhuangtai").val();
        $.ajax({
        url: "selectUserOne.do", //url地址
        type: "post",
        data: {
          stat: selval
        },
        dataType: "json",
        success: function (data) {
        	var str ='<tr><th width="20" height="25" align="center" bgcolor="#EFFBFE"></th><th align="center" bgcolor="#EFFBFE">ID</th><th align="center" bgcolor="#EFFBFE">用户名</th><th align="center" bgcolor="#EFFBFE">所属部门</th><th align="center" bgcolor="#EFFBFE">职称</th><th align="center" bgcolor="#EFFBFE">状态</th></tr>';
            var html = str;
            for (var i = 0; i < data.length; i++) {
              // console.log(data[i]);
              html += '<tr><td style="text-align:center;"><input type="checkbox"></td>';
              for (var k in data[i]) {
                // console.log(data[i][k]);
                html += '<td>' + data[i][k] + '</td>';
              }
              html += '</tr>';
            }
            $('#tb').html(html);
        }
      })
    })
  </script>

</html>