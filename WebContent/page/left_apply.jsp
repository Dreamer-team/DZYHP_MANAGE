<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<HTML>
<HEAD>
<TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<STYLE type=text/css>
.np
	{
	font-family: Webdings;
	font-size:13px;
	color:#ffffff;
	cursor:hand;
	}
A:link { COLOR: #000000; FONT-SIZE: 12px; TEXT-DECORATION: none}
A:visited { COLOR: #000000; FONT-SIZE: 12px; TEXT-DECORATION: none}
A:hover { COLOR: #4DC5E3; FONT-SIZE: 12px; TEXT-DECORATION: none}
BODY {	FONT-SIZE: 12px; scrollbar-face-color:#F0F0E5; scrollbar-shadow-color:#000000; scrollbar-highlight-color:#000000; scrollbar-3dlight-color:#F0F0E5; scrollbar-darkshadow-color:#F0F0E5; scrollbar-track-color:#F0F0E5; scrollbar-arrow-color:#000000}
body{ margin:0px; padding:0px;}
TD {	FONT-SIZE: 12px; line-height: 150%}
.leftnav{ background-color:#BFE1FD;background-image:url(Images/ico.gif); background-repeat:no-repeat; background-position:10px; padding-left:28px; height:25px; line-height:25px; border:solid 1px #FFFFFF; cursor:pointer;}
</style>

<SCRIPT language=javascript>
function switchSysBar(){
	if (switchPoint.innerText==3){
		switchPoint.innerText=4
		document.all("mnuList").style.display="none"
		top.content.cols="12,*"
	}
	else{
		switchPoint.innerText=3
		document.all("mnuList").style.display=""				
		top.content.cols="148,*"		
	}
}
　　var leftm=function(params){
　　//执行的语句
　　}
</SCRIPT>
<base target="main" />
</HEAD>
<base target="main">
<BODY leftMargin="0" topMargin="0" marginheight="0" marginwidth="0" bgcolor="#FFFFFF">
<SCRIPT>
function showitem(id,linkname)
{
	return ("<span><a href='"+id+"' target=main>"+linkname+"</a></span><br>")
}

function switchoutlookBar(number)
{
	var i = outlookbar.opentitle;
	outlookbar.opentitle=number;
	var id1,id2,id1b,id2b
	if (number!=i && outlooksmoothstat==0){
	if (number!=-1)
		{
			if (i==-1)
				{
				id2="blankdiv";
				id2b="blankdiv";}
			else{
				id2="outlookdiv"+i;
				id2b="outlookdivin"+i;
				document.all("outlooktitle"+i).style.border="1px none navy";
				document.all("outlooktitle"+i).style.background="#4DC5E3";
				document.all("outlooktitle"+i).style.color="#ffffff";
				document.all("outlooktitle"+i).style.textalign="center";
				}
			id1="outlookdiv"+number
			id1b="outlookdivin"+number
			document.all("outlooktitle"+number).style.border="1px none white";
			document.all("outlooktitle"+number).style.background="#4DC5E3"; //title
			document.all("outlooktitle"+number).style.color="#ffffff";
			document.all("outlooktitle"+number).style.textalign="center";
			smoothout(id1,id2,id1b,id2b,0);
		}
	else
		{
			document.all("blankdiv").style.display="";
			document.all("blankdiv").sryle.height="100%";
			document.all("outlookdiv"+i).style.display="none";
			document.all("outlookdiv"+i).style.height="0%";
			document.all("outlooktitle"+i).style.border="1px none navy";
			document.all("outlooktitle"+i).style.background="#4DC5E3";
			document.all("outlooktitle"+i).style.color="#ffffff";
			document.all("outlooktitle"+i).style.textalign="center";
		}
	}
			
}

function smoothout(id1,id2,id1b,id2b,stat)
{
	if(stat==0){
		tempinnertext1=document.all(id1b).innerHTML;
		tempinnertext2=document.all(id2b).innerHTML;
		document.all(id1b).innerHTML="";
		document.all(id2b).innerHTML="";
		outlooksmoothstat=1;
		document.all(id1b).style.overflow="hidden";
		document.all(id2b).style.overflow="hidden";
		document.all(id1).style.height="0%";
		document.all(id1).style.display="";
		setTimeout("smoothout('"+id1+"','"+id2+"','"+id1b+"','"+id2b+"',"+outlookbar.inc+")",outlookbar.timedalay);
	}
	else
	{
		stat+=outlookbar.inc;
		if (stat>100)
			stat=100;
		document.all(id1).style.height=stat+"%";
		document.all(id2).style.height=(100-stat)+"%";
		if (stat<100) 
			setTimeout("smoothout('"+id1+"','"+id2+"','"+id1b+"','"+id2b+"',"+stat+")",outlookbar.timedalay);
		else
			{
			document.all(id1b).innerHTML=tempinnertext1;
			document.all(id2b).innerHTML=tempinnertext2;
			outlooksmoothstat=0;
			document.all(id1b).style.overflow="auto";
			document.all(id2).style.display="none";
			}
	}
}

function getOutLine()
{
	outline="<table "+outlookbar.otherclass+">";
	for (i=0;i<(outlookbar.titlelist.length);i++)
		{
			outline+="<tr><td linkname=outlooktitle"+i+" id=outlooktitle"+i+" ";		
			if (i!=outlookbar.opentitle) 
				outline+=" nowrap align=center style='cursor:hand;background-color:#4DC5E3;color:#ffffff;height:5;border:1 none navy' ";
			else
				outline+=" nowrap align=center style='cursor:hand;background-color:#4DC5E3;color:white;height:5;border:1 none white' ";
			outline+=outlookbar.titlelist[i].otherclass
			outline+=" onclick='switchoutlookBar("+i+")'><span class=smallFont>";
			outline+=outlookbar.titlelist[i].title+"</span></td></tr>";
			outline+="<tr><td linkname=outlookdiv"+i+" valign=top align=center id=outlookdiv"+i+" style='width:100%"
			if (i!=outlookbar.opentitle) 
				outline+=";display:none;height:0%;";
			else
				outline+=";display:;height:100%;";
			outline+="'><div linkname=outlookdivin"+i+" id=outlookdivin"+i+" style='overflow:auto;width:100%;height:100%'>";
			for (j=0;j<outlookbar.itemlist[i].length;j++)
				outline+=showitem(outlookbar.itemlist[i][j].key,outlookbar.itemlist[i][j].title);
			outline+="</div></td></tr>"
		}
	
	outline+="</table>"
	return outline

}

function show()
{
	var outline;
	outline="<div id=outLookBarDiv linkname=outLookBarDiv style='width=100%;height:100%'>"
	outline+=outlookbar.getOutLine();
	outline+="</div>"
	document.write(outline);
}

function theitem(intitle,instate,inkey)
{
	this.state=instate;
	this.otherclass=" nowrap ";
	this.key=inkey;
	this.title=intitle;
}

function addtitle(intitle)
{
	outlookbar.itemlist[outlookbar.titlelist.length]=new Array();
	outlookbar.titlelist[outlookbar.titlelist.length]=new theitem(intitle,1,0);
	return(outlookbar.titlelist.length-1);
}

function additem(intitle,parentid,inkey)
{
	if (parentid>=0 && parentid<=outlookbar.titlelist.length)
	{
		outlookbar.itemlist[parentid][outlookbar.itemlist[parentid].length]=new theitem(intitle,2,inkey);
		outlookbar.itemlist[parentid][outlookbar.itemlist[parentid].length-1].otherclass=" nowrap align=left style='height:5' ";
		return(outlookbar.itemlist[parentid].length-1);
	}
	else
		additem=-1;
}

function outlook()
{
	this.titlelist=new Array();
	this.itemlist=new Array();
	this.divstyle="style='height:100%;width:100%;overflow:auto' align=center";
	this.otherclass="border=0 cellspacing='0' cellpadding='0' style='height:100%;width:100%'valign=middle align=center ";
	this.addtitle=addtitle;
	this.additem=additem;
	this.starttitle=-1;
	this.show=show;
	this.getOutLine=getOutLine;
	this.opentitle=this.starttitle;
	this.reflesh=outreflesh;
	this.timedelay=50;
	this.inc=10;
	
}

function outreflesh()
{
	document.all("outLookBarDiv").innerHTML=outlookbar.getOutLine();
}

function locatefold(foldlinkname)
{
	for (var i=0;i<outlookbar.titlelist.length;i++)
		if(foldlinkname==outlookbar.titlelist[i].title)
			{
				 outlookbar.starttitle=i;
				 outlookbar.opentitle=i;
			}
	
}

var outlookbar=new outlook();
var tempinnertext1,tempinnertext2,outlooksmoothstat
outlooksmoothstat = 0;

</SCRIPT>
 <!-- 导航栏部分 -->
<style>
*{margin:0;padding:0}
a{text-decoration:none}
#conter{width:1000px;margin:auto}
#help-left{width:200px;font-family:'microsoft YaHei';float:left}
.menu{border-left:1px solid #ccc;border-right:1px solid #ccc}
.menu:last-child{border-bottom:1px solid #ccc}
.menu summary{height:35px;line-height:25px;text-indent:10px;outline:0;font-size:14px;font-weight:700;border-top:1px solid #ddd;background:-webkit-gradient(linear,left top,left bottom,color-stop(0,#1E90FF),color-stop(1,#6495ED));cursor:pointer}
.menu summary::-webkit-details-marker{display:none}
.menu summary:before{content:"+";display:inline-block;width:16px;height:16px;margin-right:10px;font-size:18px;font-weight:700}
.menu[open] summary:before{content:"-"}
.menu ul{padding:10px 0}
.menu ul li{list-style:none;text-indent:25px;font-size:15px;height:20px;line-height:15px}
.menu ul li a{display:block;color:#666}
.menu ul li a:hover{text-decoration:underline}
</style>
    <!--代码部分begin -->
    <section id="conter">
        <section id="help-left">
            <details class="menu">
                <summary>基础信息管理</summary>  
                <!-- 个人信息 -->
                <ul>
                	<!-- 部门管理 用户管理 角色管理 权限管理 仓库管理 基础分类管理 -->
                    <li><a href="touser.do" target="main">用户管理</a></li>
                     <li><a href="dept.do">部门管理</a></li>
                    <li><a href="partManage.do">角色管理</a></li>
                       <li><a href="classify.do">基础分类管理</a></li>
                    <!-- <li><a href="apply1.html">项目介绍</a></li>  -->
                    <li><a href="setwarehourse.do">仓库管理</a></li>
                                        
                </ul>
            </details>
            <details class="menu">
                <summary>出入库管理</summary>
                <!-- 物品信息管理 -->
                <ul>
                	<!-- 购置计划 购置计划审核  入库申报 入库审核 出库申报 出库审核 -->
                   
                    <li><a href="apply1.html">购置申请</a></li>
                    <li><a href="apply1_shi.html">购置申请表</a></li>
                    <li><a href="jhmana.html">计划管理</a></li>
                    <li><a href="jhexam.html">计划审核</a></li>
                    <li><a href="out.html">出库管理</a></li>
                    <li><a href="in.html">入库管理</a></li>
                </ul>
            </details>
            <details class="menu">
                <summary>综合查询</summary>  

                <!-- 申报导航 -->
                <ul>
                  <!-- 物品信息查询 购置计划查询 入库查询 出库查询 库存盘点  -->
                    
                    <li><a href="applylist.html">物品查询</a></li>
                    <li><a href="buylist.html">采购进度</a></li>
                    <li><a href="moneySty1.html">经费类别</a></li>
                    <li><a href="applylistsoftrw.html">培训查询</a></li>
                    <li><a href="outInformation.html">出库信息查询</a></li>
                    <li><a href="inask.html">入库信息查询</a></li>
                </ul>
            </details>
            
        </section>
        <section id="help-right"></section>
    </section>
    <!--代码部分end -->



</BODY></HTML>
