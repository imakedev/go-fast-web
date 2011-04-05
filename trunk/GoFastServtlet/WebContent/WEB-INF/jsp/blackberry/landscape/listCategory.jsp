<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Promotion</title> 


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
var _path='<%=request.getContextPath()%>';
var oldContent="" ;// oldContent+content;
var pageNo=1;
function getCatalogues(){
 var page={
		 pageNo:pageNo,
		 pageSize:2
 };
 //alert(page)
 var str=""; 
		
 GoFastAjax.listCatalogues(page,{
                        callback:function(dataFromServer){
                                if(dataFromServer!=null && dataFromServer.length>0){
								  var dataList = dataFromServer[0];
								  var size = dataList.length; 
                                	for(var i=0; i<size;i++){
                                		//alert(i)
                                		str=str+"<tr valign=\"top\" onclick=\"goPage('items','"+dataList[i].gfcaId+"')\">"+
                            			"	<td width=\"15%\" align=\"center\" height=\"50px\">"+
                            			"	<img src=\""+_path+""+dataList[i].gfcaIconPath+"\""+
                    			 		"		width=\"50px\" height=\"50px\"></img></td>"+
                    					"	<td align=\"left\"><span class=\"topic\">"+dataList[i].gfcaName+"</span> <br />"+
                    		  			"		<span class=\"detail\">"+dataList[i].gfcaDetail+"</span></td>"+
                    					"	<td width=\"10%\" align=\"right\" valign=middle><img src=\""+_path+"/image/next.png\" width=\"20\" height=\"20\"/></td>"+
                    					"</tr>"+
                    					"<tr>"+
                    					"	<td colspan=\"3\">"+
                    					"		<hr style=\"color: #000099; width: 98%;\" />"+
                    					"	</td>"+
                    					"</tr>";	
                    					//alert(str)
                                	} 
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
</script>
<script>
/*
	var oldContent =//"<table border=\"0\" width=\"100%\" cellspacing=\"2\" cellpadding=\"0\">"+
					"	<tr valign=\"top\" onclick=\"goPage('items')\">"+
					"		<td width=\"15%\" align=\"center\" height=\"50px\"><img"+
					"				src=\""+_path+"/image/category/restaurant-icon.png\""+
		 			"			width=50px height=\"50px\"></img></td>"+
					"		<td align=\"left\"><span class=\"topic\">Restraurant</span> <br />"+
	  				"				<span class=detail>ร้านอาหาร</span></td>"+
					"		<td width=\"10%\"  align=\"right\" valign=middle><img src=image/next.png width=\"20\" height=\"20\"/></td>"+
					"	</tr>"+
					"	<tr>"+
					"		<td colspan=\"3\">"+
					"			<hr style=\"color: #000099; width: 98%;\" />"+
					"		</td>"+
					"	</tr>"+
					"	<tr valign=\"top\" onclick=\"goPage('items')\">"+
					"		<td width=\"15%\" align=\"center\" height=\"50px\"><img"+
					"				src=\""+_path+"/image/category/sport.jpg\""+
		 			"			width=50px height=\"50px\"></img></td>"+
					"		<td align=\"left\"><span class=\"topic\">Sport</span> <br />"+
	  				"				<span class=detail>ร้านอุปกรณ์กีฬา, คลับ, บัตรเข้าชมกีฬา</span></td>"+
					"		<td width=\"10%\"  align=\"right\" valign=middle><img src=image/next.png width=\"20\" height=\"20\"/></td>"+
					"	</tr>"+
					"	<tr>"+
					"		<td colspan=\"3\">"+
					"			<hr style=\"color: #000099; width: 98%;\" />"+
					"		</td>"+
					"	</tr>"+
					"	<tr valign=\"top\" onclick=\"goPage('items')\">"+
					"		<td width=\"15%\" align=\"center\" height=\"50px\"><img"+
					"				src=\""+_path+"/image/category/house-icon.png\""+
		 			"			width=50px height=\"50px\"></img></td>"+
					"		<td align=\"left\"><span class=\"topic\">House</span> <br />"+
	  				"				<span class=detail>อุปกรณ์บ้าน, บ้าน ...</span></td>"+
					"		<td width=\"10%\"  align=\"right\" valign=middle><img src=image/next.png width=\"20\" height=\"20\"/></td>"+
					"	</tr>"+
					"	<tr>"+
					"		<td colspan=\"3\">"+
					"			<hr style=\"color: #000099; width: 98%;\" />"+
					"		</td>"+
					"	</tr>"+
					"	<tr valign=\"top\" onclick=\"goPage('items')\">"+
					"		<td width=\"15%\" align=\"center\" height=\"50px\"><img"+
					"				src=\""+_path+"/image/category/dog-icon.png\""+
		 			"			width=50px height=\"50px\"></img></td>"+
					"		<td align=\"left\"><span class=\"topic\">Pet</span> <br />"+
	  				"				<span class=detail>สัตว์เลี้ยง, บริการสัตว์เลี้ยง ...</span></td>"+
					"		<td width=\"10%\"  align=\"right\" valign=middle><img src=image/next.png width=\"20\" height=\"20\"/></td>"+
					"	</tr>"+
					"	<tr>"+
					"		<td colspan=\"3\">"+
					"			<hr style=\"color: #000099; width: 98%;\" />"+
					"		</td>"+
					"	</tr>"+
					"	<tr valign=\"top\" onclick=\"goPage('items')\">"+
					"		<td width=\"15%\" align=\"center\" height=\"50px\"><img"+
					"				src=\""+_path+"/image/category/hospital.jpg\""+
		 			"			width=50px height=\"50px\"></img></td>"+
					"		<td align=\"left\"><span class=\"topic\">Medical</span> <br />"+
	  				"				<span class=detail>รักษาพยาบาล</span></td>"+
					"		<td width=\"10%\"  align=\"right\" valign=middle><img src=image/next.png width=\"20\" height=\"20\"/></td>"+
					"	</tr>"+
					"	<tr>"+
					"		<td colspan=\"3\">"+
					"			<hr style=\"color: #000099; width: 98%;\" />"+
					"		</td>"+
					"	</tr>"+
					"	<tr valign=\"top\" onclick=\"goPage('items')\">"+
					"		<td width=\"15%\" align=\"center\" height=\"50px\"><img"+
					"				src=\""+_path+"/image/category/fashion-icon.png\""+
		 			"			width=50px height=\"50px\"></img></td>"+
					"		<td align=\"left\"><span class=\"topic\">Fasion</span> <br />"+
	  				"				<span class=detail>เสื้อผ้า</span></td>"+
					"		<td width=\"10%\"  align=\"right\" valign=middle><img src=image/next.png width=\"20\" height=\"20\"/></td>"+
					"	</tr>"+
					"	<tr>"+
					"		<td colspan=\"3\">"+
					"			<hr style=\"color: #000099; width: 98%;\" />"+
					"		</td>"+
					"	</tr>";					 
		//"</table>";
	var indexMore=0;
	*/
	function loadingMore(){
		var moreImgDiv = document.getElementById("moreImgDiv"); 
		var moreDiv = document.getElementById("moreDiv");
		var moreTd = document.getElementById("moreTd"); 
		moreTd.style.backgroundColor="#ffffff";
		moreImgDiv.innerHTML="<img src=\""+_path+"/image/loading_icon2.gif\"></img>";
		//moreImgDiv.innerHTML="<img src=\""+_path+"/image/icon_loading.gif\"></img>";		
		moreDiv.innerHTML="";
		//setTimeout("feedMore()",3000);
		setTimeout("getCatalogues()",3000);
	}
	function setMoreTd(){
		alert("into set more td")
		var moreTd = document.getElementById("moreTd"); 
		alert(moreTd.style.backgroundColor);
		moreTd.style.backgroundColor="#ffffff";
	}
	/*
	function feedMore() {
		var moreDiv = document.getElementById("moreDiv"); 
		var contentDiv = document.getElementById("contentDiv");
		var moreImgDiv = document.getElementById("moreImgDiv");   
		var content= "";
		var index = indexMore;
		for ( var i = index; i < index+7; i++) {
			content = content + "	<tr valign=\"top\" onclick=\"goPage('items')\">"+
			"		<td width=\"15%\" align=\"center\" height=\"50px\"><img"+
			"				src=\""+_path+"/image/category/restaurant-icon.png\""+
 			"			width=50px height=\"50px\"></img></td>"+
			"		<td align=\"left\"><span class=\"topic\">Restraurant "+i+"</span> <br />"+
				"				<span class=detail>ร้านอาหาร</span></td>"+
			"		<td width=\"10%\"  align=\"right\" valign=middle><img src=image/next.png width=\"20\" height=\"20\"/></td>"+
			"	</tr>"+
			"	<tr>"+
			"		<td colspan=\"3\">"+
			"			<hr style=\"color: #000099; width: 98%;\" />"+
			"		</td>"+
			"	</tr>"+
			"	<tr valign=\"top\" onclick=\"goPage('items')\">"+
			"		<td width=\"15%\" align=\"center\" height=\"50px\"><img"+
			"				src=\""+_path+"/image/category/sport.jpg\""+
 			"			width=50px height=\"50px\"></img></td>"+
			"		<td align=\"left\"><span class=\"topic\">Sport "+i+"</span> <br />"+
				"				<span class=detail>ร้านอุปกรณ์กีฬา, คลับ, บัตรเข้าชมกีฬา</span></td>"+
			"		<td width=\"10%\"  align=\"right\" valign=middle><img src=image/next.png width=\"20\" height=\"20\"/></td>"+
			"	</tr>"+
			"	<tr>"+
			"		<td colspan=\"3\">"+
			"			<hr style=\"color: #000099; width: 98%;\" />"+
			"		</td>"+
			"	</tr>"+
			"	<tr valign=\"top\" onclick=\"goPage('items')\">"+
			"		<td width=\"15%\" align=\"center\" height=\"50px\"><img"+
			"				src=\""+_path+"/image/category/house-icon.png\""+
 			"			width=50px height=\"50px\"></img></td>"+
			"		<td align=\"left\"><span class=\"topic\">House "+i+"</span> <br />"+
				"				<span class=detail>อุปกรณ์บ้าน, บ้าน ...</span></td>"+
			"		<td width=\"10%\"  align=\"right\" valign=middle><img src=image/next.png width=\"20\" height=\"20\"/></td>"+
			"	</tr>"+
			"	<tr>"+
			"		<td colspan=\"3\">"+
			"			<hr style=\"color: #000099; width: 98%;\" />"+
			"		</td>"+
			"	</tr>"+
			"	<tr valign=\"top\" onclick=\"goPage('items')\">"+
			"		<td width=\"15%\" align=\"center\" height=\"50px\"><img"+
			"				src=\""+_path+"/image/category/dog-icon.png\""+
 			"			width=50px height=\"50px\"></img></td>"+
			"		<td align=\"left\"><span class=\"topic\">Pet "+i+"</span> <br />"+
				"				<span class=detail>สัตว์เลี้ยง, บริการสัตว์เลี้ยง ...</span></td>"+
			"		<td width=\"10%\"  align=\"right\" valign=middle><img src=image/next.png width=\"20\" height=\"20\"/></td>"+
			"	</tr>"+
			"	<tr>"+
			"		<td colspan=\"3\">"+
			"			<hr style=\"color: #000099; width: 98%;\" />"+
			"		</td>"+
			"	</tr>"+
			"	<tr valign=\"top\" onclick=\"goPage('items')\">"+
			"		<td width=\"15%\" align=\"center\" height=\"50px\"><img"+
			"				src=\""+_path+"/image/category/hospital.jpg\""+
 			"			width=50px height=\"50px\"></img></td>"+
			"		<td align=\"left\"><span class=\"topic\">Medical "+i+"</span> <br />"+
				"				<span class=detail>รักษาพยาบาล</span></td>"+
			"		<td width=\"10%\"  align=\"right\" valign=middle><img src=image/next.png width=\"20\" height=\"20\"/></td>"+
			"	</tr>"+
			"	<tr>"+
			"		<td colspan=\"3\">"+
			"			<hr style=\"color: #000099; width: 98%;\" />"+
			"		</td>"+
			"	</tr>"+
			"	<tr valign=\"top\" onclick=\"goPage('items')\">"+
			"		<td width=\"15%\" align=\"center\" height=\"50px\"><img"+
			"				src=\""+_path+"/image/category/fashion-icon.png\""+
 			"			width=50px height=\"50px\"></img></td>"+
			"		<td align=\"left\"><span class=\"topic\">Fasion "+i+"</span> <br />"+
				"				<span class=detail>เสื้อผ้า</span></td>"+
			"		<td width=\"10%\"  align=\"right\" valign=middle><img src=image/next.png width=\"20\" height=\"20\"/></td>"+
			"	</tr>"+
			"	<tr>"+
			"		<td colspan=\"3\">"+
			"			<hr style=\"color: #000099; width: 98%;\" />"+
			"		</td>"+
			"	</tr>";					 
			indexMore++;
		}
		oldContent = oldContent+content;
		contentDiv.innerHTML =  "<table border=\"0\" width=\"100%\" cellspacing=\"2\" cellpadding=\"0\">"+oldContent+"</table>";
		moreDiv.innerHTML='More...';
		moreImgDiv.innerHTML="";
		var moreTd = document.getElementById("moreTd"); 
		moreTd.style.backgroundColor="#C0C0C0";
	}
	*/
	//alert(_path)
	function goPage(_page,_cateId) {
		//alert("goPage")
		window.location.href = _path + "/promotion?brand=bb&direction=1&page=" + _page+"&cateId="+_cateId+"&lat=1&long=2&key=99";
	}

	function goBack() {
		//	alert("goPage")
		window.location.href = _path + "/promotion?brand=bb&direction=1&page=listCategory";
//		history.back();
	}
	
</script> 
</head>

<body>
<table border="0" width="100%" cellspacing="2" cellpadding="0">
  <tr>
  	<td>
  	<div id="contentDiv">
  	<%--
  	 <table border="0" width="100%" cellspacing="2" cellpadding="0">
  		<tr valign="top" onclick="goPage('items')">
		<td width="15%" align="center" height="50px"><img
			src="/image/category/restaurant-icon.png"
			 width=50px height="50px"></img></td>
		<td align="left"><span class="topic">Restraurant</span> <br />
		  <span class=detail>ร้านอาหาร</span></td>
		<td width="10%"  align="right" valign=middle><img src=image/next.png width="20" height="20"/></td>
	</tr>
	<tr>
		<td colspan="3">
		<hr style="color: #000099; width: 98%;" />
		</td>
	</tr>
	<tr valign="top" onclick="goPage('items')">
		<td width="15%" align="center" height="50px"><img
			src="/image/category/sport.jpg"
			 width=50px height="50px"/></td>
		<td align="left"><span class="topic">Sport</span> <br /> 
		<span class=detail>ร้านอุปกรณ์กีฬา, คลับ, บัตรเข้าชมกีฬา</span></td>
		<td  width="10%"  align=right valign=middle><img src=image/next.png width="20" height="20"/></td>
	</tr>
	<tr>
		<td colspan="3">
		<hr style="color: #000099; width: 98%;" />
		</td>
	</tr>
	<tr valign="top" onclick="goPage('items')">
		<td width="15%" align="center" height="50px"><img
			src="/image/category/house-icon.png"
			 width=50px height="50px"/></td>
		<td align="left"><span class="topic">House</span> <br />
		 <span class=detail>อุปกรณ์บ้าน, บ้าน ...</span></td>
		<td width="10%"  align=right valign=middle><img src=image/next.png width="20" height="20"/></td>
	 
	</tr>
	<tr>
		<td colspan="3">
		<hr style="color: #000099; width: 98%;" />
		</td>
	</tr>
	<tr valign="top" onclick="goPage('items')">
		<td width="15%" align="center" height="50px"><img
			src="/image/category/dog-icon.png"
			 width=50px height="50px"/></td>
		<td align="left"><span class="topic">Pet</span> <br />
		  <span class=detail>สัตว์เลี้ยง, บริการสัตว์เลี้ยง ...</span></td>
		<td width="10%" align=right valign=middle><img src=image/next.png width="20" height="20"/></td> 
	</tr>
	<tr>
		<td colspan="3">
		<hr style="color: #000099; width: 98%;" />
		</td>
	</tr>
	<tr valign="top" onclick="goPage('items')">
		<td width="15%" align="center" height="50px"><img
			src="/image/category/hospital.jpg"
			 width=50px height="50px"/></td>
		<td align="left"><span class="topic">Medical</span> <br />
		  <span class=detail>รักษาพยาบาล</span></td>
		<td width="10%" align=right valign=middle><img src=image/next.png width="20" height="20"/></td> 
	</tr>
	<tr>
		<td colspan="3">
		<hr style="color: #000099; width: 98%;" />
		</td>
	</tr>
	<tr valign="top" onclick="goPage('items')">
		<td width="15%" align="center" height="50px"><img
			src="/image/category/fashion-icon.png"
			 width=50px height="50px"/></td>
		<td align="left"><span class="topic">Fasion</span> <br />
		  <span class=detail>เสื้อผ้า</span></td>
		<td width="10%" align=right valign=middle><img src=image/next.png width="20" height="20"/></td>
	 </tr>
	<tr>
		<td colspan="3">
		<hr style="color: #000099; width: 98%;" />
		</td>
	</tr>
  		</table>
  		 --%>
  </div>
  	</td>
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
 var lat = '<%=request.getParameter("lat")%>';
 //alert(lat)
 getCatalogues();
</script>
</body>
</html>