<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<script type="text/javascript" src="js/corner/justcorners.js"></script>
<script type="text/javascript" src="js/corner/corner.js"></script>

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

.detail2 {
	padding: 5px 5px 0px 5px;
	font-size: 13px;
	font-family: Tahoma, sans-serif;
	color: #ff0000;
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
	img
	{
	padding
	:
	5px;
}

.box {
	border: 1px solid #A7C0E0;
	width: 300px;
	height: 250px;
	background-image: url(/image/widget-bg.png);
	background-repeat: no-repeat;
	background-color: white;
}
</style>
<script>
	var _path='/GoFastServtlet';

	//alert(_path)
	function goPage(_page) {
		//alert("goPage")
		//window.location.href = _path + "/listitems?page=" + _page;
		window.location.href = _path + "/listitems?page=items";
	}
</script>
<meta http-equiv="Page-Enter" content="blendTrans(Duration=1.0)">
<meta http-equiv="Page-Exit" content="blendTrans(Duration=1.0)">
<meta http-equiv="Site-Enter" content="blendTrans(Duration=1.0)">
<meta http-equiv="Site-Exit" content="blendTrans(Duration=1.0)">
</head>
<body>
<table
	style="border: 0px solid rgb(0, 51, 153); background-color: rgb(243, 248, 255);"
	border="1" cellpadding="0" cellspacing="2" width="100%">
	<tbody>
		<tr valign="top">
			<td onclick="goPage('itemdetail')" align="center" width="50%"><img
				src="image/category/restraurant.jpg"  class = "corner iradius16" width=90> <br><span class="topic">Restraurant</span></td>

			<td onclick="goPage('itemdetail')" align="center" width="50%"><img
				src="image/category/sport.jpg"  class = "corner iradius16" width=90><br> <span class="topic">Sport</span></td>

		</tr>

		<tr onclick="goPage('itemdetail')" valign="top">
			<td align="center" width="50%"><img src="image/category/home.jpg" class = "corner iradius16"
				width=90> <span class="topic"><br>House
			</span></td>

			<td align="center" width="50%"><img src="image/category/pet.jpg" class = "corner iradius16"
				width=90> <span class="topic"><br>Pet
			</span></td>

		</tr>


		<tr onclick="goPage('itemdetail')" valign="top">
			<td align="center" width="50%"><img src="image/category/hospital.jpg" class = "corner iradius16"
				width=90> <span class="topic"><br>Medical
			</span></td>

			<td align="center" width="50%"><img src="image/category/fasion.jpg" class = "corner iradius16"
				width=90> <span class="topic"><br>Fasion
			</span></td>

		</tr>

		<tr bgcolor="#c0c0c0">
			<td colspan="8" valign="bottom" width="100%" height="40"><span
				class="more">Term of user</span> |<span class="more"> Help</span> |<span
				class="more"> Contact Us</span> <br> <span class="copyright">copyright
			2011</span>
			</td>
		</tr>
	</tbody>
</table>
</body>
</html>
