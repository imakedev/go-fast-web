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
	font-size: 15px;
}

/* Paragraph and headings */
span {
	padding: 0px 5px 5px 5px;
	font-family: Tahoma, sans-serif;
	color: #000000;
	font-size: 15px;
}

.topic { padding:5px 5px 0px 5px;font-size:16px;font-family:Tahoma,
sans-serif;color:#005DB0; font-weight:bold;}
.detail2 { padding:5px 5px 0px 5px;font-size:15px;font-family:Tahoma,
sans-serif;color:#ff0000; font-weight:bold;}

.more,.more a:link ,.more a:visited ,.more a:active {
font-family:Tahoma, sans-serif; font-size:12px; color:#151b54;
line-height:14px; text-decoration:none;font-weight:bold;}
.more a:hover{ font-family:Tahoma, sans-serif; font-size:12px;
color:#06A800; line-height:14px;

img {
	padding: 5px;
}

.box {
	border: 1px solid #A7C0E0;
	width: 300px;
	height: 250px;
	background-image: url(<%=request.getContextPath()%>/image/widget-bg.png);
	background-repeat: no-repeat;
	background-color: white;
}
</style>
<script>
	var _path='<%=request.getContextPath()%>';

	//alert(_path)
	function goPage(_page) {
		//alert("goPage")
		window.location.href = _path + "/promotion?page=" + _page;
	}
</script>
<meta http-equiv="Page-Enter" content="blendTrans(Duration=1.0)" />
<meta http-equiv="Page-Exit" content="blendTrans(Duration=1.0)" />
<meta http-equiv="Site-Enter" content="blendTrans(Duration=1.0)" />
<meta http-equiv="Site-Exit" content="blendTrans(Duration=1.0)" />
</head>

<body>
<table border="0" width="100%" cellspacing="2" cellpadding="0"
	style="border: #003399 1px solid; background-color: #F3F8FF;">
	<tr valign="top" onclick="goPage('itemdetail&brand=bb&direction=1')">
		<td width="130" align="center" style="padding-left: 2px;padding-top: 2px;"><img
			src="<%=request.getContextPath()%>/image/app1.jpg" width=130px ></img></td>
		<td align="left"><span class="topic">นาทอง สวนอาหาร</span> <br />
		<span class="detail2">ส่วนลด 10%<br />
		</span>
		<span class=detail>
		- เฉพาะค่าอาหาร (ยกเว้นโต๊ะจีน และบุฟเฟ่ต์)</span></td>
		<%-- 
		<td width="55" height="55" align="center"><img src="<%=request.getContextPath()%>/image/10_percent_discount1.gif"  width="50" height="50" /></td>
		 --%>
	</tr>
	<tr>
		<td colspan="3">
		<hr style="color: #000099; width: 98%;" />
		</td>
	</tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="130" align="center" style="padding-left: 2px;padding-top: 2px;"><img
			src="<%=request.getContextPath()%>/image/app2.jpg" width="130px" /></td>
		<td align="left"><span class="topic">นางกวัก ร้านอาหาร</span> <br />
		<span class="detail2">ส่วนลด 10 % สำหรับค่าอาหาร<br /></span>
		<span class=detail>
		เพียงนำคูปองไปแสดงที่ร้าน พิเศษสุดๆ เมื่อทานอาหารครบ 2,000 บาท
		รับฟรีพิซซ่า 1 ถาด (ราคา 330 บาท) </span></td>
		<%-- 
		<td width="55" height="75" align="center"><img  width="50" height="50" src="<%=request.getContextPath()%>/image/10_percent_discount2.jpg"></img></td>
		 --%>
	</tr>
	<tr>
		<td colspan="3">
		<hr style="color: #000099; width: 98%;" />
		</td>
	</tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="130" align="center" style="padding-left: 2px;padding-top: 2px;"><img
			src="<%=request.getContextPath()%>/image/app3.jpg" width="130px" /></td>
		<td align="left"><span class="topic">De Facto View </span> <br />
		<span class="detail2">ส่วนลด 5% <br /></span>
		<span class=detail>
		ซื้อสินค้าครบ 300 บาท แถมฟรี เค้ก 1 ชิ้น</span></td>
		<%--  
		<td width="75" height="75" align="center"><img  width="50" height="50" src="<%=request.getContextPath()%>/image/10_percent_discount3.jpg"></img></td>
		 --%>
	</tr>
	<tr>
		<td colspan="3">
		<hr style="color: #000099; width: 98%;" />
		</td>
	</tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="130" align="center" style="padding-left: 2px;padding-top: 2px;"><img
			src="<%=request.getContextPath()%>/image/app4.jpg" width="130px" /></td>
		<td align="left"><span class="topic">เรือนสำราญรีสอร์ท</span> <br />
		<span class="detail2">ส่วนลด 25 %<br /></span>
		<span class=detail>
		ใช้ได้เฉพาะ วันอาทิตย์-พฤหัสบดี (ตั้งแต่เดือน ก.พ. 54- ต.ค. 54)</span></td>
		<%--  
		<td width="75" height="75" align="center"><img  width="50" height="50" src="<%=request.getContextPath()%>/image/10_percent_discount4.png"></img></td>
		 --%>
	</tr>
	<tr>
		<td colspan="3">
		<hr style="color: #000099; width: 98%;" />
		</td>
	</tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="130" align="center" style="padding-left: 2px;padding-top: 2px;"><img
			src="<%=request.getContextPath()%>/image/app5.jpg" width="130px" /></td>
		<td align="left"><span class="topic">กินเส้น ร้านอาหาร</span> <br />
		<span class="detail2">ส่วนลด 10%<br /></span>
		<span class=detail>
		เฉพาะค่าอาหาร เมื่อแสดงคูปองแถมฟรีเปาะเปี๊ยะทอด 1 จาน</span></td>
		<%--  
		<td width="75" height="75" align="center"><img  width="50" height="50" src="<%=request.getContextPath()%>/image/10_percent_discount5.jpg"></img></td>
		 --%>
	</tr>
	<tr>
		<td colspan="3">
		<hr style="color: #000099; width: 98%;" />
		</td>
	</tr>
	<tr valign="top" onclick="goPage('itemdetail')">
		<td width="130" align="center" style="padding-left: 2px;padding-top: 2px;"><img
			src="<%=request.getContextPath()%>/image/app6.jpg" width="130px" /></td>
		<td align="left"><span class="topic">Lee Cafe @ Number 1</span> <br />
		<span class="detail2">ส่วนลด 10 % สำหรับค่าอาหาร<br /></span>
		<span class=detail>
		โปรโมชั่นช่วงเทศกาลปีใหม่ Set 5 ท่าน ราคาเพียง 1,102 บาท และ Set 10
		ท่าน ราคาเพียง 2,011 บาท</span></td>
		<%-- 
		<td width="75" height="75" align="center"><img  width="50" height="50" src="<%=request.getContextPath()%>/image/20_percent_discount6.jpg"></img></td>
		 --%>
	</tr>
	<tr>
		<td colspan="2">
		<hr style="color: #000099; width: 98%;" />
		</td>
	</tr>
	<%-- 
	<tr valign="top">
		<td height="25" colspan="2" align="right"><span class="more">More...</span></td>
	</tr>
	--%>
	<tr>
		<td valign=middle height="30" colspan="3" align="left" bgcolor=#C0C0C0><span
			class="more" valign=center>More...</span></td>
	</tr>
	<tr bgcolor=#C0C0C0>
		<td width=100% colspan=3 height=40 valign=bottom><span class=more>Term
		of user</span> |<span class=more> Help</span> |<span class=more>
		Contact Us</span> <br> <span class=copyright>copyright 2011</span>
		</td>
	</tr>
</table>
</body>
</html>