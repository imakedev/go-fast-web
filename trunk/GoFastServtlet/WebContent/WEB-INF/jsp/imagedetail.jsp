<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Item Detail</title>
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

.topic { padding:5px 5px 0px 5px;font-size:14px;font-family:Tahoma,
sans-serif;color:#005DB0; font-weight:bold;}
.detail2 { padding:5px 5px 0px 5px;font-size:13px;font-family:Tahoma,
sans-serif;color:#ff0000; font-weight:bold;}

.more,.more a:link ,.more a:visited ,.more a:active {
font-family:Tahoma, sans-serif; font-size:12px; color:#151b54;
line-height:14px; text-decoration:none;font-weight:bold;}
.more a:hover{ font-family:Tahoma, sans-serif; font-size:12px;
color:#06A800; line-height:14px;

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
</style>
<script>
	var _path='<%=request.getContextPath()%>';
	//alert(_path)
	function goBack() {
		//	alert("goPage")
		window.location.href = _path + "/listitems";
	}
	function goPage(_page) {
		//alert("goPage")
		window.location.href = _path + "/listitems?page=" + _page;
	} 
</script>
<link rel="stylesheet" href="css/blackberry/style.css" type="text/css" media="screen" charset="utf-8"/>

	<script src="js/blackberry/jquery-1.3.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/blackberry/slider.js" type="text/javascript" charset="utf-8"></script>
<meta http-equiv="Page-Enter" content="blendTrans(Duration=1.0)" />
<meta http-equiv="Page-Exit" content="blendTrans(Duration=1.0)" />
<meta http-equiv="Site-Enter" content="blendTrans(Duration=1.0)" />
<meta http-equiv="Site-Exit" content="blendTrans(Duration=1.0)" />
</head>

<body>
<table  border="1" width="100%" cellspacing="2" cellpadding="0"
	style="border: #003399 1px solid; background-color: #F3F8FF;" align="center">
	<tr valign="top" align="center">
		<td width="100%" align="center">
		<table>
			<tr>
				<td colspan=3 align=center><span class="topic">นางกวัก ร้านอาหาร</span></td>
			</tr>
			<tr>
			<td colspan="3" align="center">
			    <table border="1" align="center"> 
 <tr>
<td align="center">
<div id="wrapper" align="center">
	<%--
		<img src="image/movingboxes.png" alt="moving boxes" />
     --%>
        <div id="slider" align="center">    
<%--
            <img class="scrollButtons left" src="image/leftarrow.png">
             --%>
  
			<div style="overflow: hidden;" class="scroll" align="center">
	
				<div class="scrollContainer">
	  
	                <div class="panel" id="panel_1">
						<div class="inside">
							<img src="image/1.jpg" alt="picture" />
							<%--
							<h2>News Heading</h2>
							<p>A very shot exerpt goes here... <a href="http://flickr.com/photos/ruudvanleeuwen/468309897/">more link</a></p>
							 --%>
						</div>
					</div>

	                <div class="panel" id="panel_2">
						<div class="inside">
							<img src="image/2.jpg" alt="picture" />
							<%--
							<h2>News Heading</h2>
							<p>A very shot exerpt goes here... <a href="http://flickr.com/photos/ruudvanleeuwen/468309897/">more link</a></p>
							 --%>
						</div>
					</div>
				
	                <div class="panel" id="panel_3">
						<div class="inside">
							<img src="image/3.jpg" alt="picture" />
							<%--
							<h2>News Heading</h2>
							<p>A very shot exerpt goes here... <a href="http://flickr.com/photos/ruudvanleeuwen/468309897/">more link</a></p>
							 --%>
						</div>
					</div>
					
					<div class="panel" id="panel_4">
						<div class="inside">
							<img src="image/4.jpg" alt="picture" />
							<%--
							<h2>News Heading</h2>
							<p>A very shot exerpt goes here... <a href="http://flickr.com/photos/emikohime/294092478/">more link</a></p>
							 --%>
						</div>
					</div>  
					  
					<div class="panel" id="panel_5">
						<div class="inside">
							<img src="image/5.jpg" alt="picture" />
							<%-- 
							<h2>News Heading</h2>
							<p>A very shot exerpt goes here... <a href="http://flickr.com/photos/fensterbme/499006584/">more link</a></p>
							 --%>
						</div>
					</div>
				 
                </div>

				<div id="left-shadow"></div>
				<div id="right-shadow"></div>

            </div>
<%-- 
	 		<img class="scrollButtons right" src="image/rightarrow.png">
	--%>		 

        </div>
        
    </div>
</td> 
</tr>
</table> 
			    </td>
			<%--
				<td><img width="140px" height="140px"
			src="<%=request.getContextPath()%>/image/app1.jpg"></img>
				</td>
				<td><img width="140px" height="140px"
			src="<%=request.getContextPath()%>/image/app2.jpg"></img>
				</td>
				<td><img width="140px" height="140px"
			src="<%=request.getContextPath()%>/image/app3.jpg"></img>
				</td>
				 --%>
				<%--
				<td width=80%><span class="detail"> คลองตันเหนือ วัฒนา กรุงเทพฯ <br/>027147938,</span></td>
				 --%>
			</tr>
					
			<tr>
				<td colspan=3 align="left"></td>
			</tr>
			<tr>
				<td colspan=3 align="left"></td>
			</tr>
			<tr>
				<td colspan=3 align="left"></td>
			</tr>
			<tr>
				<td colspan=3 align="left"></td>
			</tr>
			<tr>
				<td colspan=3 align="left"></td>
			</tr>
			<tr>
				<td colspan=3 align="left"></td>
			</tr>
			<tr>
				<td colspan=3 align="left"><span class="detail2">5 photos </span></td>
			</tr>
			
			<tr>
				<td colspan=3><span class="detail">ส่วนลด 10 % เพียงนำคูปองไปแสดงที่ร้าน พิเศษสุดๆ เมื่อทานอาหารครบ 2,000 บาท รับฟรีพิซซ่า 1 ถาด (ราคา 330 บาท)</span></td>
			</tr>

		</table>
		</td>
		

		<%--
10_percent_discount2.jpg
10_percent_discount3.jpg
10_percent_discount4.png
10_percent_discount5.jpg
20_percent_discount6.jpg
 --%>
	</tr>
</table>
<%--
<table  border="1" width="100%">
<tr>
<td>
<br/></td>
</tr>
	<tr valign="top">
		<td width="55" align="center"><img
			src="<%=request.getContextPath()%>/image/app1.jpg"  width=55></img></td>

		<td width="55" align="center"><img
			src="<%=request.getContextPath()%>/image/app2.jpg"  width=55></img></td>

		<td width="55" align="center"><img
			src="<%=request.getContextPath()%>/image/app3.jpg" width=55></img></td>

	</tr>
	<tr>
<td>
<br/></td>
</tr>
</table>
 --%>

<table border="1" width="100%" cellspacing="2" cellpadding="0"
	style="border: #003399 1px solid; background-color: #F3F8FF;"  align="center">
	<%--
<table imagedetail.jspwidth="100%">
 --%>
	<tbody>
		<tr valign="top"  align="center">
			<td align="center">
			<table width="60%"  border="1" cellspacing="0" cellpadding="0" align=center>
				<tbody>
					<tr>
						<td align="center"><a href="#" onclick="goBack()"><img
							src="<%=request.getContextPath()%>/image/back.png" border=0/></a></td>
						<td align=center><a href="#" onclick="goPage('map')"><img
							src="<%=request.getContextPath()%>/image/map.png"  border=0/></a></td>
					</tr>

				</tbody>
			</table>

			<br />
			<br />
			</td>
		</tr>
		<tr bgcolor=#C0C0C0>
			<td width=100% colspan=3 height=30>
			<span class=more>Term of user</span> |<span class=more>
Help</span> |<span class=more> Contact Us</span> <br/>
        <span class=copyright>copyright 2011</span></td>
		</tr>

	</tbody>
</table>


</body>
</html>
