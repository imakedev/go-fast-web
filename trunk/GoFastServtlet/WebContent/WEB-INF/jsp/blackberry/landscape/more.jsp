<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 

<script type="text/javascript">
	var _path='<%=request.getContextPath()%>';
	var oldContent ="";
	var indexMore=0;
	function loadingMore(){
		var moreDiv = document.getElementById("moreDiv"); 
		moreDiv.innerHTML="<img src=\""+_path+"/image/icon_loading.gif\"></img>";
		setTimeout("feedMore()",3000);
	}
	function feedMore() {
		var moreDiv = document.getElementById("moreDiv"); 
		var contentDiv = document.getElementById("contentDiv");
		//var oldStr =;
		//alert("content old=" + oldStr);
		var content= "";
		var index = indexMore;
		for ( var i = index; i < index+10; i++) {
			content = content + '<tr>' + '<td>' + i + '</td>' + '<td>name' + i
					+ '</td>' + '</tr>';
			indexMore++;
		}
		oldContent = oldContent+content;
		//alert(oldStr);
		contentDiv.innerHTML =  "<table align=\"center\" border=\"1\">"+oldContent+"</table>";
		moreDiv.innerHTML='more...';
	}
</script>
<title>More...</title>
</head>
<body>
	<table align="center">
		<tr>
			<td>
				<div id="contentDiv">
					 
				</div></td>
		</tr>
	</table>
	<table align="center">
		<tr>
			<td> 
					<table align="center" border="1">
						<tr>
							<td colspan="2" align="center" onclick="loadingMore();"><div id="moreDiv">more...</div></td>
						</tr>
					</table>
			</td>
		</tr>
	</table>
</body>
</html>