<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Item Detail</title>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>

<script type="text/javascript" src="js/fadeslideshow.js">

/***********************************************
* Ultimate Fade In Slideshow v2.0- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for this script and 100s more
***********************************************/

</script>
<script type="text/javascript"
        src='<%= request.getContextPath()%>/dwr/interface/GoFastAjax.js'> 
</script>
<script type="text/javascript"
        src='<%= request.getContextPath() %>/dwr/engine.js'> 
</script>
<script type="text/javascript"
        src='<%= request.getContextPath() %>/dwr/util.js'>
</script>
<script type="text/javascript">
var cateId;	
var gfiId = '<%=request.getParameter("gfiId")%>';
var _path='<%=request.getContextPath()%>';
//alert(_path)
function getItems(gfiId){
	  GoFastAjax.getItems(gfiId,{
	                        callback:function(dataFromServer){
	                                if(dataFromServer!=null ){ 
	                                	var nameDiv = document.getElementById("nameDiv");
	                                	var discountDiv = document.getElementById("discountDiv");
	                                	var detailDiv = document.getElementById("detailDiv");
	    								cateId = dataFromServer.goFastCate.gfcaId;                         	 
	                                	nameDiv.innerHTML=dataFromServer.gfiName;
	                                	discountDiv.innerHTML=dataFromServer.gfiDiscount;
	                                	detailDiv.innerHTML=dataFromServer.gfiDetail;
	                                	var goFastItemImages=dataFromServer.goFastItemImages;
	                                	if(goFastItemImages!=null && goFastItemImages.length>0){
	                                		var size=goFastItemImages.length;
	                                		var images =new Array(size);
	                                		/*
	                                		alert(size)
	                                		
	                                		var imagesTest=new Array(4);
	                                		var imagesElement1=new Array(1);
	                                		var imagesElement2=new Array(1);
	                                		var imagesElement3=new Array(1);
	                                		var imagesElement4=new Array(1);
	                                		var elementTest=new Array(1);
	                                		elementTest[0]="http://i29.tinypic.com/xp3hns.jpg";
	                                		var elementTest2=new Array(1);
	                                		elementTest2[0]="http://i30.tinypic.com/531q3n.jpg";
	                                		var elementTest3=new Array(1);
	                                		elementTest3[0]="http://i31.tinypic.com/119w28m.jpg";
	                                		var elementTest4=new Array(1);
	                                		elementTest4[0]="http://i30.tinypic.com/531q3n.jpg";
	                                		imagesElement1[0]=elementTest;
	                                		imagesElement2[0]=elementTest2;
	                                		imagesElement3[0]=elementTest3;
	                                		imagesElement4[0]=elementTest4;
	                                		imagesTest[0]=imagesElement1;
	                                		imagesTest[1]=imagesElement2;
	                                		imagesTest[2]=imagesElement3;
	                                		imagesTest[3]=imagesElement4;
	                                		*/
	                                		for(var i=0;i < size;i++){
	                                			//alert(i);
	                                			var elementItem = new Array(1);
	                                			var element = new Array(1);
	                                			//elementItem[0]="http://localhost:8081"+goFastItemImages[i].gfiiPath;//"http://i29.tinypic.com/xp3hns.jpg";
	                                			elementItem[0]=_path+goFastItemImages[i].gfiiPath;
	                                			element[0]=elementItem;
	                                			images[i]=element;
	                                			//alert(images[i]);
	                                		}
	                                		var mygallery2=new fadeSlideShow({
	                                			wrapperid: "fadeshow2", //ID of blank DIV on page to house Slideshow
	                                			//dimensions: [250, 180], //width/height of gallery in pixels. Should reflect dimensions of largest image
	                                			dimensions: [240, 150], //width/height of gallery in pixels. Should reflect dimensions of largest image
	                                			imagearray: images, 
	                                			displaymode: {type:'manual', pause:2500, cycles:0, wraparound:false},
	                                			persist: false, //remember last viewed slide and recall within same session?
	                                			fadeduration: 500, //transition duration (milliseconds)
	                                			descreveal: "always",
	                                			togglerid: "fadeshow2toggler"
	                                		});
	                                	} 
	                                }
	                        }
	 });
	 
	}
/*
var mygallery=new fadeSlideShow({
	wrapperid: "fadeshow1", //ID of blank DIV on page to house Slideshow
	dimensions: [250, 180], //width/height of gallery in pixels. Should reflect dimensions of largest image
	imagearray: [
		["http://i26.tinypic.com/11l7ls0.jpg", "", "", "Nothing beats relaxing next to the pool when the weather is hot."],
		["http://i29.tinypic.com/xp3hns.jpg", "http://en.wikipedia.org/wiki/Cave", "_new", "Some day I'd like to explore these caves!"],
		["http://i30.tinypic.com/531q3n.jpg"],
		["http://i31.tinypic.com/119w28m.jpg", "", "", "What a beautiful scene with everything changing colors."] //<--no trailing comma after very last image element!
	],
	displaymode: {type:'auto', pause:2500, cycles:0, wraparound:false},
	persist: false, //remember last viewed slide and recall within same session?
	fadeduration: 500, //transition duration (milliseconds)
	descreveal: "ondemand",
	togglerid: ""
})
*/ 



</script>
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

.topic { padding:5px 5px 0px 5px;font-size:18px;font-family:Tahoma,
sans-serif;color:#005DB0; font-weight:bold;}
.detail { padding:5px 5px 0px 5px;font-size:13px;font-family:Tahoma,
sans-serif;color:#ff0000; font-weight:bold;}
.detail2 { padding:5px 5px 0px 5px;font-size:16px;font-family:Tahoma,
sans-serif;color:#ff0000; font-weight:bold;}
.detail3 { padding:5px 5px 0px 5px;font-size:12px;font-family:Tahoma,
sans-serif;color:#747170;}

.more,.more a:link ,.more a:visited ,.more a:active {
font-family:Tahoma, sans-serif; font-size:12px; color:#151b54;
line-height:14px; text-decoration:none;font-weight:bold;}
.more a:hover{ font-family:Tahoma, sans-serif; font-size:12px;
color:#06A800; line-height:14px;}

.button,.button a:link,.button a:visited,.button a:active {
	font-family: Tahoma, sans-serif;
	font-size: 14px;
	color: #151b54;
	line-height: 14px;
	text-decoration: none;
	font-weight: bold;
}

 
.copyright,.copyright a:link ,.copyright a:visited ,.copyright a:active {
font-family:Tahoma, sans-serif; font-size:12px; color:#585858;
line-height:14px; text-decoration:none;font-weight:bold;}

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
<script>
	
	//alert(_path)
	function goBack() {
		//	alert("goPage")
		window.location.href = _path + "/promotion";
	}
	function goPage(_page) {
		//alert("goPage")
		window.location.href = _path + "/promotion?page=" + _page+"&lat=1&long=2&key=99&cateId="+cateId+"&gfiId="+gfiId;
	} 
</script>

	<link rel="stylesheet" href="css/iphone_img_style.css" type="text/css" media="screen" charset="utf-8"/>
	<script src="js/jquery-1.3.1.min.js" type="text/javascript" charset="utf-8"></script>
	<!-- 
	<script src="js/iphone_slider.js" type="text/javascript" charset="utf-8"></script>
	 --> 
</head>

<body >
<table border="0" width="100%" cellspacing="2" cellpadding="0"
	style="border: #003399 1px solid; background-color: #F3F8FF;">
	<tr valign="top">
		<td>
		<table border="0"> 
		<tr>
			<td align="left" width="100%" colspan="3">
			<table width="100%">
				<tr>				
					<td><button class="rounded"  onclick="goPage('items&brand=bb&direction=1')" ><span>Back</span></button>
			</td>
			<td align="center"><span class="topic" id="nameDiv">Nronguwanu Restaurant</span></td>
			<td align="right"><button class="rounded"  onclick="goPage('map&brand=bb&direction=1')" ><span>Map</span></button></td>
				</tr>
			</table> 
			</td>
		</tr>
		<tr>
			<td valign="top" width="50%"> 
<div id="fadeshow2"></div> 
<div id="fadeshow2toggler" style="width:240px; text-align:center;">
<a href="#" class="prev"><img src="http://i31.tinypic.com/302rn5v.png" style="border-width:0" /></a>
<span class="status" style="margin:0 50px; font-weight:bold"></span>
<a href="#" class="next"><img src="http://i30.tinypic.com/lzkux.png" style="border-width:0" /></a>
</div>
				</td>
				<td  colspan="2" valign="top"  width="50%">
				<span class="detail2" id="discountDiv"> Discount 10 %</span><br/>
				<span class="detail3" id="detailDiv">Expires Mar 22, 2011
Limit 2 per person. Limit 1 per visit. Not valid towards delivery. Tax and gratuity not included. Not valid with other offers<br/><br/><br/>
				Klong Ton Nua, Wattana, Bangkok <br/>027147938,<br/></span>
				</td>
			</tr>  
		</table>
		</td>
		<td></td>
	</tr>
</table> 
<table border="0" width="100%">
	<tbody> 
		<tr bgcolor=#C0C0C0>
			<td width=100% colspan=3 height=30>
			<span class=more>Term of use</span> |<span class=more>
Help</span> |<span class=more> Contact Us</span> <br/>
        <span class=copyright>copyright 2011</span></td>
		</tr>

	</tbody>
</table>
<script>

getItems(gfiId)
</script>

</body>
</html>
