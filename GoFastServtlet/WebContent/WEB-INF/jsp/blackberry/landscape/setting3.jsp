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
<script>
var cateId;
var key='<%=request.getParameter("key") %>';
function getSettingCatalogues(){
	 GoFastAjax.getSettingCatalogues({
         callback:function(data){
                 if(data!=null ){ 
                	 var str="";
                     for(var i = 0 ;i< data.length;i++){
                      //  alert(data[i].gfscName)
                    	 str=str+"<div class=\"menutitle\"  onclick=\"SwitchMenu('sub_"+data[i].gfscId+"')\">"+data[i].gfscName+"</div>"+
                    	 		 "<span class=\"submenu\" id=\"sub_"+data[i].gfscId+"\">"+
                    			 "</span>";
                     }
                    var masterdiv= document.getElementById("masterdiv");
                    masterdiv.innerHTML=str;
                 }
         }
	});
}
function getItems(key){
	  GoFastAjax.getFilter(key,{
	                        callback:function(dataFromServer){
	                                if(dataFromServer!=null ){
	                                	var fillters=  dataFromServer[0];
	                                	var settings = dataFromServer[1];
	                                    for(var i = 0 ;i< settings.length;i++){
	                                       alert(settings[i].goFastSettingCate.gfscName)
	                                    }
	                                }
	                        }
	  });
}
function settingChange(obj){
	if(obj.type=='radio'){
		var radios = document.getElementsByName(obj.name);
		// clearCateSetting before
		GoFastAjax.clearCateSetting(key,cateId,{
			 callback:function(dataFromServer){
                if(dataFromServer!=null ){
                			// after clear old select then insert new setting
            				 GoFastAjax.setFilter(key,obj.value,"1");
                }
         }
		});		
	}else{//checkbox 
		// check if checked
		var value = (obj.checked)?"1":"0"; 
		GoFastAjax.setFilter(key,obj.value,value);
	} 
}
</script>
<style type="text/css">
.menutitle{
cursor:pointer;
margin-bottom: 5px;
/*background-color:#ECECFF;*/
background-color:#BFBDBE; 
color:#000000;
width: 480px; 
padding:2px;
text-align:left;
font-weight:bold;
background-image: url(image/glossyback2.gif);
font: bold 14px Tahoma, sans-serif;
/*/*/border:1px solid #000000;/* */
}

.submenu{
margin-bottom: 0.5em;
display: block;
font: normal 13px Tahoma, sans-serif;
color: black;
text-decoration: none;
padding: 2px 0;
padding-left: 10px;
text-align: left;
}
</style>

<script type="text/javascript">

/***********************************************
* Switch Menu script- by Martial B of http://getElementById.com/
* Modified by Dynamic Drive for format & NS4/IE4 compatibility
* Visit http://www.dynamicdrive.com/ for full source code
***********************************************/

var persistmenu="yes" //"yes" or "no". Make sure each SPAN content contains an incrementing ID starting at 1 (id="sub1", id="sub2", etc)
var persisttype="sitewide" //enter "sitewide" for menu to persist across site, "local" for this page only

if (document.getElementById){ //DynamicDrive.com change
document.write('<style type="text/css">\n')
document.write('.submenu{display: none;}\n')
document.write('</style>\n')
}

function SwitchMenu(obj){
	if(document.getElementById){
	var el = document.getElementById(obj);
	var ar = document.getElementById("masterdiv").getElementsByTagName("span"); //DynamicDrive.com change
		if(el.style.display != "block"){ //DynamicDrive.com change
			for (var i=0; i<ar.length; i++){
				if (ar[i].className=="submenu") //DynamicDrive.com change
				ar[i].style.display = "none";
			}
			el.style.display = "block";
			var cateIdSplit = obj.split("_");
			//getFilter(String key,Integer cateId){
			 cateId = cateIdSplit[1];
			 GoFastAjax.getFilter(key,cateId,{
                 callback:function(dataFromServer){
                         if(dataFromServer!=null ){
                         	var fillters=  dataFromServer[0];
                         	var settings = dataFromServer[1];
                         	var str="";
                             for(var i = 0 ;i< settings.length;i++){
                            	var isChecked  = false; 
                            	var isCheckedStr="";
                            	var inputType=(settings[i].goFastSettingCate.gfscType=='1')?
                            			"<input type=\"radio\" name=\"input_"+settings[i].goFastSettingCate.gfscId+"\" OnChange=\"settingChange(this)\" value=\""+settings[i].gfsId+"\" ":
                            			"<input type=\"checkbox\" name=\"input_"+settings[i].goFastSettingCate.gfscId+"\" OnChange=\"settingChange(this)\" value=\""+settings[i].gfsId+"\" ";                            	for(var j=0;j<fillters.length;j++){
                            		if(fillters[j].goFastSetting.gfsId==settings[i].gfsId){
                            			//alert(settings[i].gfsId)
                            			isChecked=true;
                            			break;
                            		} 
                            	} 
                            	if(isChecked)
                        			isCheckedStr="checked=\"checked\"";
                            	if(settings)
                        		str=str+inputType+isCheckedStr+"/>"+settings[i].gfsName+"<br/>";                         		 
                             }
                             el.innerHTML=str;
                         }
                 }
			});
		}else{
			el.style.display = "none";
		}
	}
}

function get_cookie(Name) { 
var search = Name + "="
var returnvalue = "";
if (document.cookie.length > 0) {
offset = document.cookie.indexOf(search)
if (offset != -1) { 
offset += search.length
end = document.cookie.indexOf(";", offset);
if (end == -1) end = document.cookie.length;
returnvalue=unescape(document.cookie.substring(offset, end))
}
}
return returnvalue;
}

function onloadfunction(){
if (persistmenu=="yes"){
var cookiename=(persisttype=="sitewide")? "switchmenu" : window.location.pathname
var cookievalue=get_cookie(cookiename)
if (cookievalue!="")
document.getElementById(cookievalue).style.display="block"
}
}

function savemenustate(){
var inc=1, blockid=""
while (document.getElementById("sub"+inc)){
if (document.getElementById("sub"+inc).style.display=="block"){
blockid="sub"+inc
break
}
inc++
}
var cookiename=(persisttype=="sitewide")? "switchmenu" : window.location.pathname
var cookievalue=(persisttype=="sitewide")? blockid+";path=/" : blockid
document.cookie=cookiename+"="+cookievalue
}

if (window.addEventListener)
window.addEventListener("load", onloadfunction, false)
else if (window.attachEvent)
window.attachEvent("onload", onloadfunction)
else if (document.getElementById)
window.onload=onloadfunction

if (persistmenu=="yes" && document.getElementById)
window.onunload=savemenustate

</script>
</head>
<body>
<table>
	<tr>
		<td width="100%" align="left">
		<div id="masterdiv">

	<div class="menutitle"  onclick="SwitchMenu('sub1')">Distrance</div>
	<span class="submenu" id="sub1">
		<input type="radio"/>&lt; 5 Km.<br/>
		<input type="radio"/>5-10 Km.<br/>
		<input type="radio"/>10-20 Km.<br/>
		<input type="radio"/>20 &gt; Km.<br/>
	</span>

	<div class="menutitle" onclick="SwitchMenu('sub2')">Area</div>
	<span class="submenu" id="sub2">
		<input type="checkbox"/>Sukumvit  <input type="checkbox"/>Sukumvit  <input type="checkbox"/>Sukumvit <input type="checkbox"/>Sukumvit <input type="checkbox"/>Sukumvit <br/>
		<input type="checkbox"/>Sukumvit  <input type="checkbox"/>Sukumvit  <input type="checkbox"/>Sukumvit <input type="checkbox"/>Sukumvit <input type="checkbox"/>Sukumvit <br/>
		<input type="checkbox"/>Sukumvit  <input type="checkbox"/>Sukumvit  <input type="checkbox"/>Sukumvit <input type="checkbox"/>Sukumvit <input type="checkbox"/>Sukumvit <br/>
	</span>

	<div class="menutitle" onclick="SwitchMenu('sub3')">Discount</div>
	<span class="submenu" id="sub3">
		<input type="radio"/>&gt; 30%<br/>
		<input type="radio"/>20-30%<br/>
		<input type="radio"/>10-20%<br/>
		<input type="radio"/>&lt; 10%<br/>
	</span>
	
	<div class="menutitle" onclick="SwitchMenu('sub4')">Price/Unit</div>
	<span class="submenu" id="sub4">
		<input type="radio"/>&lt; 100 Baht.<br/>
		<input type="radio"/>200 - 500 Baht.<br/>
		<input type="radio"/>500 - 1000 Baht.<br/>
		<input type="radio"/>&lt; 1000 Baht.
	</span> 
</div>
		</td>
	</tr>
</table>
<script>
	getSettingCatalogues();
</script></body>
</html>