<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Setting</title>
<script type="text/javascript"
	src='<%=request.getContextPath()%>/dwr/interface/GoFastAjax.js'> 
</script>
<script type="text/javascript"
	src='<%=request.getContextPath()%>/dwr/engine.js'> 
</script>
<script type="text/javascript"
	src='<%=request.getContextPath()%>/dwr/util.js'> 
</script>
<script type="text/javascript">
	function distPlayComponent(comID) {
		var distplayComponent = document.getElementById("distplayComponent");
		var str = "";
		//var distanceStr
		if (comID == 'Distance') {
			str = "<table>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"radio\" name=\"distanceID\"/> &lt; 1 km"
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"radio\" name=\"distanceID\"/> 1-2 km"
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"radio\" name=\"distanceID\"/> 2-5 km"
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"radio\" name=\"distanceID\"/> &gt; 5 km"
					+ "		</td>" + "	</tr>" + "</table>";
		} else if (comID == "Discount") {
			str = "<table>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"radio\" name=\"discountID\"/> &lt; 5 %"
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"radio\" name=\"discountID\"/> 5-10 %"
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"radio\" name=\"discountID\"/> 10-20 %"
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"radio\" name=\"discountID\"/> &gt; 20 %"
					+ "		</td>" + "	</tr>" + "</table>";
		} else if (comID == "Location") {
			str = "<table>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"checkbox\" name=\"locationID\"/> บางเขน"
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"checkbox\" name=\"locationID\"/> จตุจักร "
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"checkbox\" name=\"locationID\"/> ลาดพร้าว"
					+ "		</td>" + "	</tr>" + "</table>";
		} else if (comID == "Area") {
			str = "<table>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"checkbox\" name=\"areaID\"/> Big C ลาดพร้าว"
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"checkbox\" name=\"areaID\"/> เซ็ลทรัล ลาดพร้าว "
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"checkbox\" name=\"areaID\"/> เซ็ลทรัล บางนา"
					+ "		</td>" + "	</tr>" + "</table>";
		} else if (comID == "Price/Unit") {
			str = "<table>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"radio\" name=\"priceUnitID\"/> &lt; 100 บาท"
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"radio\" name=\"priceUnitID\"/> 100 - 200 บาท "
					+ "		</td>"
					+ "	</tr>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"radio\" name=\"priceUnitID\"/> 200 - 500 บาท "
					+ "		</td>"
					+ "	</tr>"
					+ "	<tr>"
					+ "		<td>"
					+ "			<input type=\"radio\" name=\"priceUnitID\"/> &lt; 500 บาท"
					+ "		</td>" + "	</tr>" + "</table>";
		}
		distplayComponent.innerHTML = str;

	}
function callAjax(){
	alert("ss")
	GoFastAjax.callTest({
		 callback:function(dataStatus){
			 alert(dataStatus);
		 }
	}); 
}
</script>
<style>
table.setting {
	width: 100%;
	background-color: #fafafa;
	border: 1px #000000 solid;
	border-collapse: collapse;
	border-spacing: 0px;
}

td.settingTD {
	background-color: #B3ADAE;
	border: 1px #000000 solid;
	font-family: Tahoma, sans-serif;
	font-size: 14px;
	font-weight: bold;
	text-align: center;
	/*color: #404040;*/
}

td.contact {
	border-bottom: 1px #6699CC dotted;
	text-align: left;
	font-family: Verdana, sans-serif, Arial;
	font-weight: normal;
	font-size: .7em;
	color: #404040;
	background-color: #fafafa;
	padding-top: 4px;
	padding-bottom: 4px;
	padding-left: 8px;
	padding-right: 0px;
}
</style>
</head>
<body>
<table border="1" align="center" width="100%" class="setting">
	<tr>
		<td>
		<table border="1" align="center" class="setting">
			<tr>
				<td onclick="distPlayComponent('Distance')" class="settingTD">Distance</td>
				<td onclick="distPlayComponent('Location')" class="settingTD">Location</td>
				<td onclick="distPlayComponent('Area')" class="settingTD">Area</td>
				<td onclick="distPlayComponent('Discount')" class="settingTD">Discount</td>
				<td onclick="distPlayComponent('Price/Unit')" class="settingTD">Price/Unit</td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td>
		<table border="0" align="center" class="setting">
			<tr>
				<td height="1px"></td>
				<td height="1px"></td>
				<td height="1px"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>
				<table border="1" width="100%" align="center" class="setting">
					<tr>
						<td>
						<div id="distplayComponent" />

						</td>
					</tr>
				</table>
				</td>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
</body>
</html>