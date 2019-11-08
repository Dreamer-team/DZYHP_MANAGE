<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html
  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>无标题文档</title>

  <link href="${ctx}/page/Css/layout.css" rel="stylesheet" type="text/css" />
  <link href="${ctx}/page/Css/cb.css" rel="stylesheet" type="text/css" />
  <link href="${ctx}/page/Css/n.css" rel="stylesheet" type="text/css" />
  <script src="${ctx}/page/Scripts/jquery.js"></script>
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
    .wapper{
      position: absolute;
      right:0px;
      top:55px;
    }
    #tb{
      margin-top:50px;
    } 
  </style>

</head>

<body>

  <table width="100%" height="25" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-bottom:4px;">
    <tr>
      <td width="17" background="${ctx}/page/Images/bj4.gif"><img src="${ctx}/page/Picture/r.gif" width="16" height="16" /></td>
      <td width="466" background="${ctx}/page/Images/bj4.gif">张宇(学院申报者):你好！ 当前操作菜单：仓库表 </td>
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
            <td width="104" align="left" class="biao">仓库表</td>
          <tr>
        </table>
    </tr>
  </table>

  <form name="Base" method="post" action="">
    <table width="100%" border="1" align="center" id="tb" cellpadding="3" cellspacing="0" bgcolor="#AEDEF4"
      style="border:1px solid #AEDEF4">
      <tr>
        <th align="center" bgcolor="#EFFBFE">选择</th>
        <th align="center" bgcolor="#EFFBFE">仓库名称</th>
        <th align="center" bgcolor="#EFFBFE">仓库类别</th>
        <th align="center" bgcolor="#EFFBFE">经费类别</th>
        <th align="center" bgcolor="#EFFBFE">部门编号</th>
        <th align="center" bgcolor="#EFFBFE">仓库负责人</th>
        <th align="center" bgcolor="#EFFBFE">经费来源</th>
        <th align="center" bgcolor="#EFFBFE">经费预算</th>
        <th align="center" bgcolor="#EFFBFE">经费项目</th>
        <th align="center" bgcolor="#EFFBFE">经费主管部门</th>
        <th align="center" bgcolor="#EFFBFE">经费状态</th>
        <th align="center" bgcolor="#EFFBFE">仓库状态</th>
        <th align="center" bgcolor="#EFFBFE">备注</th>
      </tr>
      
<div class="wapper">
      <ul id="menu">
        <div>
          <input class="nameSeek" type="text">
          <a href="#">
            <input id= "name" type="button" value="按名称查询">
          </a>
        </div>
        <div>
          <select name="itemtypes" id="itemtypes" onchange="change_itemtypes2(this.value)">
            <option value="0">请选择...</option>
            <option value="1">开启</option>
            <option value="2">关闭</option>
          </select>
          <a href="#">
            <input id="condition" type="button" value="按状态查询">
          </a>
        </div>
      </ul>
</div>

      <style type="text/css">
        #menu {
          float: right;
        }
      </style>
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
  </form>

  <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="1%" align="left" background="${ctx}/page/Images/b2.jpg"><img src="${ctx}/page/Picture/b2.jpg" width="10" height="26" /></td>
      <td width="68%" background="${ctx}/page/Images/b2.jpg">
        <table width="124" border="0" align="left" cellpadding="0" cellspacing="0">
      </td>
    </tr>
  </table>
  <script>
    $("#name").click(function () {
      var value = $(".nameSeek").val();
      if (value) {
        $.ajax({
            url: "selectBybaseNameAndStat.do",
            type: "post",
            dataType: "json",
            data: {
            	baseName: value
            },
            success: function (data) {
              var str =
             '<tr><th align="center" bgcolor="#EFFBFE">选择</th><th align="center" bgcolor="#EFFBFE">仓库名称</th><th align="center" bgcolor="#EFFBFE">仓库类别</th><th align="center" bgcolor="#EFFBFE">经费类别</th><th align="center" bgcolor="#EFFBFE">部门编号</th><th align="center" bgcolor="#EFFBFE">仓库负责人</th><th align="center" bgcolor="#EFFBFE">经费来源</th><th align="center" bgcolor="#EFFBFE">经费预算</th><th align="center" bgcolor="#EFFBFE">经费项目</th><th align="center" bgcolor="#EFFBFE">经费主管部门</th><th align="center" bgcolor="#EFFBFE">经费状态</th><th align="center" bgcolor="#EFFBFE">仓库状态</th><th align="center" bgcolor="#EFFBFE">备注</th></tr>';
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
   }
})
$("#condition").click(function(){
        var value = $("#itemtypes").val();
        if(value!=0){
          $.ajax({
            url: "selectBybaseNameAndStat.do",
            type: "post",
            dataType: "json",
            data: {
            	stat: value
            },
            success: function (data) {
              var str =
                '<tr><th align="center" bgcolor="#EFFBFE">选择</th><th align="center" bgcolor="#EFFBFE">仓库名称</th><th align="center" bgcolor="#EFFBFE">仓库类别</th><th align="center" bgcolor="#EFFBFE">经费类别</th><th align="center" bgcolor="#EFFBFE">部门编号</th><th align="center" bgcolor="#EFFBFE">仓库负责人</th><th align="center" bgcolor="#EFFBFE">经费来源</th><th align="center" bgcolor="#EFFBFE">经费预算</th><th align="center" bgcolor="#EFFBFE">经费项目</th><th align="center" bgcolor="#EFFBFE">经费主管部门</th><th align="center" bgcolor="#EFFBFE">经费状态</th><th align="center" bgcolor="#EFFBFE">仓库状态</th><th align="center" bgcolor="#EFFBFE">备注</th></tr>';

              var html = str;
              for (var i = 0; i < data.length; i++) {
                 console.log(data[i]);
                html += '<tr><td style="text-align:center;"><input type="checkbox"></td>';
                for (var k in data[i]) {
                   console.log(data[i][k]);
                  html += '<td>' + data[i][k] + '</td>';
                }
                html += '</tr>';
              }
              $('#tb').html(html);
            }
    })
  }
})
  </script>

</body>
</html>