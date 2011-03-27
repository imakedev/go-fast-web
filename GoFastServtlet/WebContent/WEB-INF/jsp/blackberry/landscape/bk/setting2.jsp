<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  
<%--		 
	<tr>
		<td align="center"  width="100%" > 
		<table border="0" align="center"> 
			<tr>
				<td>
				<div id="distplayComponent" />

				</td>
			</tr>
			</table>  
		</td>
	</tr>
	 --%>
			<!--  
			<tr>
				<td align="center" colspan="2"><span 
					onclick="showhide(menu1distance)">
				<span>&nbsp;</span>
				</span></td>
				<td align="center" colspan="4"><span 
					onclick="showhide(menu1distance)">
				<button class="rounded" style="width: 180px" ><span>&lt; 5 Km.</span></button>
				</span></td>
				 
			</tr>
			<tr>
				<td align="center" colspan="2"><span 
					onclick="showhide(menu1distance)">
				<span>&nbsp;</span>
				</span></td>
				<td align="center" colspan="4"><span 
					onclick="showhide(menu1distance)">
				<button class="rounded" style="width: 180px" ><span>5-10 Km.</span></button>
				</span></td>
				 
			</tr>
			<tr>
				<td align="center" colspan="2"><span 
					onclick="showhide(menu1distance)">
				<span>&nbsp;</span>
				</span></td>
				<td align="center" colspan="4"><span 
					onclick="showhide(menu1distance)">
				<button class="rounded" style="width: 180px" ><span>10-20 Km.</span></button>
				</span></td>
				 
			</tr>
			<tr>
				<td align="center" colspan="2"><span 
					onclick="showhide(menu1distance)">
				<span>&nbsp;</span>
				</span></td>
				<td align="center" colspan="4"><span 
					onclick="showhide(menu1distance)">
				<button class="rounded" style="width: 180px" ><span>20 &gt; Km.</span></button>
				</span></td>
				 
			</tr>
			 -->
			<!-- 
			<tr>
				<td width="50px"></td>
				<td align="center" id="menu1distance" style="display:none">
				<table>	
				<tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>&lt; 5 Km.</span></button>
				</td> </tr> <tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>5-10 Km.</span></button>
				</td> </tr> <tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>10-20 Km.</span></button>
				</td> </tr> <tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>20 &gt; Km.</span></button>
				</td> </tr> 
				</table>
				</td>
			</tr>
			
		 
			<tr>
				<td align="center" colspan="2"><span id="menu2"
					onclick="showhide(menu2area)" >
				<button class="rounded" style="width: 180px" ><span>Area</span></button>
				</span></td>
			</tr>
			<tr>
				<td width="50px"></td>
				<td align="center" id="menu2area" style="display:none">
				<table>	
				<tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>Sukumvit</span></button>
				</td> </tr> <tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>Thonglor</span></button>
				</td> </tr> <tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>Latprao</span></button>
				</td> </tr> <tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>Jatujak</span></button>
				</td> </tr> 
				</table>
				</td>
			</tr> 
	  
			<tr>
				<td align="center" colspan="2"><span id="menu3" onclick="showhide(menu3discount)" >
				<button class="rounded" style="width: 180px" ><span>Discount</span></button>
				</span></td>
			</tr>
			<tr>
				<td width=50px></td>
				<td align="center" id="menu3discount" style="display:none">
				<table>	
				<tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>&gt; 30%</span></button>
				</td> </tr> <tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>20-30%</span></button>
				</td> </tr> <tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>10-20%</span></button>
				</td> </tr> <tr><td>
				<button class="rounded" style="width: 130px" onclick=goBack();><span>&lt; 10%</span></button>
				</td> </tr> 
				</table>
				</td>
			</tr> 
			 -->
		
	 <button class="rounded" onclick="distPlayComponent('Distance')" style="width: 90px" ><span>Distrance</span></button>
				</div></td>
				<td align="center" ><div id="menu2">
				<button class="rounded" onclick="distPlayComponent('Area')" style="width: 90px" ><div>Area</div></button>
				</div></td>
				<td align="center" ><div id="menu3">
				<button class="rounded" onclick="distPlayComponent('Discount')"  style="width: 90px" ><div>Discount</div></button>
				</div></td>
				<td align="center" ><div id="menu4">
				<button class="rounded" onclick="distPlayComponent('Price/Unit')" style="width: 90px" ><div>Price/Unit</div></button>
				</div></td>
</body>
</html>