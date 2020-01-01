function test() {
		var str = document.getElementById("teyear").value;
		//var strz = "^\d{4}-\d{4}$";
		var reg = new RegExp("\^\\d\{4\}-\\d\{4\}\$");
		if(str.match(reg)){
			var strs = new Array();
			strs = str.split("-");
			/* alert(strs[0]); */
			if (strs[0]<strs[1]) {
				document.getElementById("tishi").textContent="格式正确";
				document.getElementById("tishi").style.color="green";
			}else{
				document.getElementById("tishi").textContent="年份顺序错误！";
				document.getElementById("tishi").style.color="red";
			}
			
			
		}else {
			document.getElementById("tishi").textContent="格式错误！";
			document.getElementById("tishi").style.color="red";
		}
		//document.getElementById("tishi").textContent="121212";
	}