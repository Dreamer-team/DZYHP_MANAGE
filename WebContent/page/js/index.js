function clearsrc() {
	/*alert('123');*/
	document.getElementById('content01').src='';
}
window.onload=function(){
	//alert('12121');
	$.ajax({
		url:"setViewByPower.action",
		type: "post",
		//data:"name="+id,要发送的数据
		dataType:"json",
		error:function(){
			alert('出错！');
		},
		success:function(data){
			for(var i=0;i<data.length;i++){
				if (data[i]=='院系信息管理') {
					//alert('123');
					document.getElementById('jcw').style.display='block';
					document.getElementById('jcw').style.float='left';
					//document.getElementById('jcw').style.paddingRight='20px';
				} else if(data[i]=='院系信息浏览'){
					document.getElementById('jcr').style.display='block';
					document.getElementById('jcr').style.float='left';
					//document.getElementById('jcr').style.paddingRight='20px';
				}else if(data[i]=='学期计划管理'){
					document.getElementById('xqw').style.display='block';
					document.getElementById('xqw').style.float='left';
					//document.getElementById('xqw').style.paddingRight='20px';
				}else if(data[i]=='学期计划浏览'){
					document.getElementById('xqr').style.display='block';
					document.getElementById('xqr').style.float='left';
					//document.getElementById('xqr').style.paddingRight='20px';
				}else if(data[i]=='周工作主题上报'){
					document.getElementById('zsb').style.display='block';
					document.getElementById('zsb').style.float='left';
					//document.getElementById('zsb').style.paddingRight='20px';
				}else if(data[i]=='周工作主题浏览'){
					document.getElementById('zll').style.display='block';
					document.getElementById('zll').style.float='left';
					//document.getElementById('zll').style.paddingRight='20px';
				}else if(data[i]=='教学检查启动'){
					document.getElementById('jqd').style.display='block';
					document.getElementById('jqd').style.float='left';
					//document.getElementById('jqd').style.paddingRight='20px';
				}else if(data[i]=='教学检查管理'){
					document.getElementById('jgl').style.display='block';
					document.getElementById('jgl').style.float='left';
					//document.getElementById('jgl').style.paddingRight='20px';
				}else if(data[i]=='教学检查执行'){
					
					

					
					//alert("123456789");
					document.getElementById('jzx').style.display='block';
					document.getElementById('jzx').style.float='left';
					$.ajax({
						url: "findthiseducheckdate.action",
						type: "post",
						dataType: "JSON",
						error: function(){
							alert("出错!");
						},
						success: function(data){
							
							if(data.length!=0){
								//alert(data[0]);
								var disabletype = data[0];
								if(disabletype==0){
									$('#jzx').removeAttr('href');//去掉a标签中的href属性
									$('#jzx').removeAttr('onclick');  //去掉a标签中的onclick事件
									$('#jzx').click(function(){
										alert("此功能已关闭！");
									});
								}else{
									
								}
							}else{
								$('#jzx').removeAttr('href');//去掉a标签中的href属性
								$('#jzx').removeAttr('onclick');  //去掉a标签中的onclick事件
								$('#jzx').click(function(){
									alert("功能已关闭！");
								});
							}
							
						}
					});
					
			
				
				
				
				}else if(data[i]=='教学检查评价'){
					document.getElementById('jpj').style.display='block';
					document.getElementById('jpj').style.float='left';
					//document.getElementById('jpj').style.paddingRight='20px';
				}else if(data[i]=='考试任务分配'){
					document.getElementById('rfp').style.display='block';
					document.getElementById('rfp').style.float='left';
					//document.getElementById('rfp').style.paddingRight='20px';
				}else if(data[i]=='考试任务详情'){
					document.getElementById('rxq').style.display='block';
					document.getElementById('rxq').style.float='left';
					//document.getElementById('rxq').style.paddingRight='20px';
				}else if(data[i]=='重要事件提醒'){
					document.getElementById('stx').style.display='block';
					document.getElementById('stx').style.float='left';
					//document.getElementById('stx').style.paddingRight='20px';
				}else if(data[i]=='个人信息管理'){
					document.getElementById('ggl').style.display='block';
					document.getElementById('ggl').style.float='left';
					//document.getElementById('ggl').style.paddingRight='20px';
				}
			}
		}
	});
};
