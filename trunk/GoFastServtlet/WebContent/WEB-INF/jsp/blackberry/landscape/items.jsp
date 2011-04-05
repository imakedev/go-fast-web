<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Promotion</title> 

<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/corner/justcorners.js"></script>
<script type="text/javascript" src="js/corner/corner.js"></script>
<style>
body {
	color: #000000;
	text-align: left;
	margin: 0;
	font-family: Tahoma, sans-serif;
	font-size: 12px;
}

/* Paragraph and headings */
span {
	padding: 0px 5px 5px 5px;
	font-family: Tahoma, sans-serif;
	color: #000000;
	font-size: 12px;
}
 
.topic {
	padding: 5px 5px 0px 5px;
	font-size: 14px;
	font-family: Tahoma, sans-serif;
	color: #005DB0;
	font-weight: bold;
}

.header-topic {
	padding: 5px 5px 0px 5px;
	font-size: 16px;
	font-family: Tahoma, sans-serif;
	color: #005DB0;
	font-weight: bold;
}

.detail2 {
	padding: 5px 5px 0px 5px;
	font-size: 13px;
	font-family: Tahoma, sans-serif;
	color: #ff0000;
	font-weight: bold;
}

.detail3 {
	padding: 5px 5px 0px 5px;
	font-size: 13px;
	font-family: Tahoma, sans-serif;
	color: #999999;
	font-weight: bold;
}
.button,.button a:link,.button a:visited,.button a:active {
	font-family: Tahoma, sans-serif;
	font-size: 14px;
	color: #151b54;
	line-height: 14px;
	text-decoration: none;
	font-weight: bold;
}
.copyright,.copyright a:link,.copyright a:visited,.copyright a:active {
	font-family: Tahoma, sans-serif;
	font-size: 12px;
	color: #585858;
	line-height: 14px;
	text-decoration: none;
	font-weight: bold;
}

img {
	padding: 5px;
}

a.button { /* Sliding right image */
	background: transparent
		url('<%=request.getContextPath()%>/image/button_right.png') no-repeat
		scroll top right;
	display: block;
	float: left;
	height: 35px; /* CHANGE THIS VALUE ACCORDING TO IMAGE HEIGHT */
	margin-right: 6px;
	padding-right: 20px;
	/* CHENGE THIS VALUE ACCORDING TO RIGHT IMAGE WIDTH */
	/* FONT PROPERTIES */
	text-decoration: none;
	color: #000000;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	font-weight: bold;
}

a.button span { /* Background left image */
	background: transparent
		url('<%=request.getContextPath()%>/image/button_left.png') no-repeat;
	display: block;
	line-height: 22px; /* CHANGE THIS VALUE ACCORDING TO BUTTONG HEIGHT */
	padding: 7px 0 5px 18px;
}

a.button:hover span {
	text-decoration: underline;
}

.more,.more a:link,.more a:visited,.more a:active {
	font-family: Tahoma, sans-serif;
	font-size: 12px;
	color: #151b54;
	line-height: 14px;
	text-decoration: none;
	font-weight: bold;
}

.more a:hover {
	font-family: Tahoma, sans-serif;
	font-size: 12px;
	color: #06A800;
	line-height: 14px;
	img{padding:5px;}
}

 
.myButton {
	-moz-box-shadow:inset 0px 1px 0px 0px #ffffff;
	-webkit-box-shadow:inset 0px 1px 0px 0px #ffffff;
	box-shadow:inset 0px 1px 0px 0px #ffffff;
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ededed), color-stop(1, #dfdfdf) );
	background:-moz-linear-gradient( center top, #ededed 5%, #dfdfdf 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#dfdfdf');
	background-color:#ededed;
	-moz-border-radius:6px;
	-webkit-border-radius:6px;
	border-radius:6px;
	border:1px solid #dcdcdc;
	display:inline-block;
	color:#777777;
	font-family:arial;
	font-size:15px;
	font-weight:bold;
	padding:6px 24px;
	text-decoration:none;
	text-shadow:1px 1px 0px #ffffff;
}.myButton:hover {
	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #dfdfdf), color-stop(1, #ededed) );
	background:-moz-linear-gradient( center top, #dfdfdf 5%, #ededed 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#dfdfdf', endColorstr='#ededed');
	background-color:#dfdfdf;
}.myButton:active {
	position:relative;
	top:1px;
}
</style>
<script type="text/javascript"
        src='<%= request.getContextPath()%>/dwr/interface/GoFastAjax.js'> 
</script>
<script type="text/javascript"
        src='<%= request.getContextPath() %>/dwr/engine.js'> 
</script>
<script type="text/javascript"
        src='<%= request.getContextPath() %>/dwr/util.js'>
</script>
<script>
var lat_value = '<%=request.getParameter("lat")%>';
var long_value = '<%=request.getParameter("long")%>';
var key = '<%=request.getParameter("key")%>';
var cateId = '<%=request.getParameter("cateId")%>';
var searchCriteria={
			 key:key,
			 lat_vale:lat_value,
			 long_value:long_value
	 };
	 
	var pageNo=1;
	var cateName="";
	var oldContent="" ;// oldContent+content;
	var _path='<%=request.getContextPath()%>';
	function listItems(cateId,searchCriteria){
	 var page={
			 pageNo:pageNo,
			 pageSize:2 
	 };
	
 //alert(page)
 var str=""; 
	 //alert(page)
//	 var str="<table border=\"0\" width=\"100%\" cellspacing=\"2\" cellpadding=\"0\">"; 	 
		
	 GoFastAjax.listItems(cateId,searchCriteria,page,{
	                        callback:function(dataFromServer){
	                                if(dataFromServer!=null && dataFromServer.length>0){
									  var dataList = dataFromServer[0];
									  if(dataList!=null && dataList.length>0){
									  var size = dataList.length; 
	                                	for(var i=0; i<size;i++){
	                                		//alert(i)
	                                		str=str+"<tr valign=\"top\" onclick=\"goPage('itemdetail','"+dataList[i].gfiId+"')\">"+
	                            					"	<td width=\"115\" align=\"center\">"+
	                            					"	<img src=\""+_path+""+dataList[i].goFastItemImages[0].gfiiPath+"\""+
	                        				 		"		width=\"110px\"></img></td> "+
	                        						"	<td align=\"left\"><span class=\"topic\">"+dataList[i].gfiName+"</span> <br />"+
	                        						"		<span class=\"detail2\">"+dataList[i].gfiDiscount+"<br />"+
	                        						"		</span> <span class=\"detail\">"+dataList[i].gfiDetail+"</span>"+
	                        						"	</td>"+
	                        						"</tr>"+
	                        						"<tr>"+
	                        						"	<td colspan=\"3\">"+
	                        						"		<hr style=\"color: #000099; width: 98%;\" />"+
	                        						"	</td>"+
	                        						"</tr>";	
	                        						cateName=dataList[i].goFastCate.gfcaName;
	                    					//alert(str)
	                                	} 
									  }
	                                	//str=str+"</table>";
	                                	// alert(str)
	                                	// var contentDiv = document.getElementById("contentDiv");
	                                	// contentDiv.innerHTML=str;
	                                	 document.getElementById("cateNameElement").innerHTML =cateName
	                                	 
	                                	 oldContent = oldContent+str;
	                                	 var contentDiv = document.getElementById("contentDiv");
	                                	 var moreDiv = document.getElementById("moreDiv");
	                                	 var moreImgDiv = document.getElementById("moreImgDiv");   
	                             		contentDiv.innerHTML =  "<table border=\"0\" width=\"100%\" cellspacing=\"2\" cellpadding=\"0\">"+oldContent+"</table>";
	                             		moreDiv.innerHTML='More...';
	                             		moreImgDiv.innerHTML="";
	                             		var moreTd = document.getElementById("moreTd"); 
	                             		moreTd.style.backgroundColor="#C0C0C0";
	                             		pageNo++;
	                                }
	                        }
	 });
	 
	}
	//alert(_path)
	function loadItems(){
		listItems(cateId,searchCriteria);
	}
	function loadingMore(){
		var moreImgDiv = document.getElementById("moreImgDiv"); 
		var moreDiv = document.getElementById("moreDiv");
		var moreTd = document.getElementById("moreTd"); 
		moreTd.style.backgroundColor="#ffffff";
		moreImgDiv.innerHTML="<img src=\""+_path+"/image/loading_icon2.gif\"></img>";
		//moreImgDiv.innerHTML="<img src=\""+_path+"/image/icon_loading.gif\"></img>";		
		moreDiv.innerHTML="";
		//setTimeout("feedMore()",3000);
		setTimeout("loadItems()",3000);
	}
	function goPage(_page,gfiId) {
		//alert("goPage")
		window.location.href = _path + "/promotion?brand=bb&direction=1&page=" + _page+"&gfiId="+gfiId;
	}

	function goBack() {
		//	alert("goPage")
		window.location.href = _path + "/promotion?brand=bb&direction=1&page=listCategory";
//		history.back();
	}
</script> 
</head>

<body>
 

<table border=0 width=100% height=50 style="border: #003399 1px solid; background-color: #F3F8FF;">
	<tr> 
		<td align=left>
			<button class="rounded" onclick=goBack();><span>Back</span></button>
		  </td>
		<td align=left width=60% class=header-topic><div id="cateNameElement"></div></td>
	</tr>  
</table>
<table border="0" width="100%" cellspacing="2" cellpadding="0">
  <tr>
  	<td>
  	<div id="contentDiv">
  	<%--  
   <table border="0" width="100%" cellspacing="2" cellpadding="0">
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="115" align="center"><img
			src="/image/app1.jpg"
			 width=110px></img></td>
		<td align="left"><span class="topic">นาทอง สวนอาหาร</span> <br />
		<span class="detail2">ส่วนลด 10%<br />
		</span> <span class=detail> - เฉพาะค่าอาหาร (ยกเว้นโต๊ะจีน
		และบุฟเฟ่ต์)</span></td>
	</tr>
	<tr>
		<td colspan="3">
		<hr style="color: #000099; width: 98%;" />
		</td>
	</tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="115" align="center"><img
			src="/image/app2.jpg"
			 width=110px /></td>
		<td align="left"><span class="topic">นางกวัก ร้านอาหาร</span> <br />
		<span class="detail2">ส่วนลด 10 % สำหรับค่าอาหาร<br />
		</span> <span class=detail> เพียงนำคูปองไปแสดงที่ร้าน พิเศษสุดๆ
		เมื่อทานอาหารครบ 2,000 บาท รับฟรีพิซซ่า 1 ถาด (ราคา 330 บาท) </span></td>
	</tr>
	<tr>
		<td colspan="3">
		<hr style="color: #000099; width: 98%;" />
		</td>
	</tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="115" align="center"><img
			src="/image/app3.jpg"
			 width=110px /></td>
		<td align="left"><span class="topic">De Facto View </span> <br />
		<span class="detail2">ส่วนลด 5% <br />
		</span> <span class=detail> ซื้อสินค้าครบ 300 บาท แถมฟรี เค้ก 1 ชิ้น</span></td>
	</tr>
	<tr>
		<td colspan="3">
		<hr style="color: #000099; width: 98%;" />
		</td>
	</tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="115" align="center"><img
			src="/image/app4.jpg"
			 width=110px /></td>
		<td align="left"><span class="topic">เรือนสำราญรีสอร์ท</span> <br />
		<span class="detail2">ส่วนลด 25 %<br />
		</span> <span class=detail> ใช้ได้เฉพาะ วันอาทิตย์-พฤหัสบดี
		(ตั้งแต่เดือน ก.พ. 54- ต.ค. 54)</span></td>
	</tr>
	<tr>
		<td colspan="3">
		<hr style="color: #000099; width: 98%;" />
		</td>
	</tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="115" align="center"><img
			src="/image/app5.jpg"
			 width=110px /></td>
		<td align="left"><span class="topic">กินเส้น ร้านอาหาร</span> <br />
		<span class="detail2">ส่วนลด 10%<br />
		</span> <span class=detail> เฉพาะค่าอาหาร
		เมื่อแสดงคูปองแถมฟรีเปาะเปี๊ยะทอด 1 จาน</span></td>
	</tr>
	<tr>
		<td colspan="3">
		<hr style="color: #000099; width: 98%;" />
		</td>
	</tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="115" align="center"><img
			src="/image/app6.jpg"
			 width=110px /></td>
		<td align="left"><span class="topic">Lee Cafe @ Number 1</span> <br />
		<span class="detail2">ส่วนลด 10 % สำหรับค่าอาหาร<br />
		</span> <span class=detail> โปรโมชั่นช่วงเทศกาลปีใหม่ Set 5 ท่าน
		ราคาเพียง 1,102 บาท และ Set 10 ท่าน ราคาเพียง 2,011 บาท</span></td>
	</tr>
	<tr>
		<td colspan="2">
		<hr style="color: #000099; width: 98%;" />
		</td>
	</tr>
	
</table>
--%>
</div>
</td>
</tr>
	<tr>
		<td valign=middle height="30" colspan="3" align="left" bgcolor=#FFFFFF><span
			class="detail3" valign=center>Distance : 5-10 Km. , Area : Thong lor</span></td>
	</tr>	
	<tr>
		<td id="moreTd" valign=middle height="30" colspan="3" align="left" bgcolor=#C0C0C0><span id="moreDiv"
			class="more" valign=center  onclick="loadingMore();">More...</span><div id="moreImgDiv" align="center"></div></td>
	</tr>
	<tr bgcolor=#C0C0C0>
		<td width=100% colspan=3 height=40 valign=bottom><span class=more>Term
		of use</span> |<span class=more> Help</span> |<span class=more>
		Contact Us</span> <br/> <span class=copyright>copyright 2011</span>
		</td>
	</tr>
</table>
<script>

listItems(cateId,searchCriteria)
</script>
</body>
</html>