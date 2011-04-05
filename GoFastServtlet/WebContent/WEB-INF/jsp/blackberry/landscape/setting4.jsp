<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>

<script type="text/javascript" src="js/ddaccordion.js">

/***********************************************
* Accordion Content script- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* Visit http://www.dynamicDrive.com for hundreds of DHTML scripts
* This notice must stay intact for legal use
***********************************************/

</script>


<script type="text/javascript">


ddaccordion.init({
	headerclass: "submenuheader", //Shared CSS class name of headers group
	contentclass: "submenu", //Shared CSS class name of contents group
	revealtype: "click", //Reveal content when user clicks or onmouseover the header? Valid value: "click", "clickgo", or "mouseover"
	mouseoverdelay: 200, //if revealtype="mouseover", set delay in milliseconds before header expands onMouseover
	collapseprev: true, //Collapse previous content (so only one open at any time)? true/false 
	defaultexpanded: [], //index of content(s) open by default [index1, index2, etc] [] denotes no content
	onemustopen: false, //Specify whether at least one header should be open always (so never all headers closed)
	animatedefault: false, //Should contents open by default be animated into view?
	persiststate: true, //persist state of opened contents within browser session?
	toggleclass: ["", ""], //Two CSS classes to be applied to the header when it's collapsed and expanded, respectively ["class1", "class2"]
	togglehtml: ["suffix", "<img src='image/plus.gif' class='statusicon' />", "<img src='image/minus.gif' class='statusicon' />"], //Additional HTML added to the header when it's collapsed and expanded, respectively  ["position", "html1", "html2"] (see docs)
	animatespeed: "fast", //speed of animation: integer in milliseconds (ie: 200), or keywords "fast", "normal", or "slow"
	oninit:function(headers, expandedindices){ //custom code to run when headers have initalized
		//do nothing
	},
	onopenclose:function(header, index, state, isuseractivated){ //custom code to run whenever a header is opened or closed
		//do nothing
	}
})


</script>


<style type="text/css">

.glossymenu{
margin: 5px 0;
padding: 0;
/*width: 170px;*/
width: 100%px;
/*width of menu*/
border: 1px solid #9A9A9A;
border-bottom-width: 0;
}

.glossymenu a.menuitem{
background: black url(image/glossyback.gif) repeat-x bottom left;
font: bold 14px "Lucida Grande", "Trebuchet MS", Verdana, Helvetica, sans-serif;
color: white;
display: block;
position: relative; /*To help in the anchoring of the ".statusicon" icon image*/
width: auto;
padding: 4px 0;
padding-left: 10px;
text-decoration: none;
text-align: left;
}


.glossymenu a.menuitem:visited, .glossymenu .menuitem:active{
color: white;
}

.glossymenu a.menuitem .statusicon{ /*CSS for icon image that gets dynamically added to headers*/
position: absolute;
top: 5px;
right: 5px;
border: none;
}

.glossymenu a.menuitem:hover{
background-image: url(image/glossyback2.gif);
}

.glossymenu div.submenu{ /*DIV that contains each sub menu*/
background: white;
}

.glossymenu div.submenu ul{ /*UL of each sub menu*/
list-style-type: none;
margin: 0;
padding: 0;
}

.glossymenu div.submenu ul li{
border-bottom: 1px solid blue;
}

.glossymenu div.submenu ul li a{
display: block;
font: normal 13px "Lucida Grande", "Trebuchet MS", Verdana, Helvetica, sans-serif;
color: black;
text-decoration: none;
padding: 2px 0;
padding-left: 10px;
text-align: left;
}

.glossymenu div.submenu ul li a:hover{
background: #DFDCCB;
colorz: white;
}

</style>

</head>
<body>
<table width="100%">
	<tr>
		<td width="100%" align="center">
		 
<div class="glossymenu"> 
<a class="menuitem submenuheader" href="http://www.dynamicdrive.com/style/" >CSS Examples</a>
<div class="submenu">
	<ul>
	<li><a href="http://www.dynamicdrive.com/style/csslibrary/category/C1/">Horizontal CSS Menus</a></li>
	<li><a href="http://www.dynamicdrive.com/style/csslibrary/category/C2/">Vertical CSS Menus</a></li>
	<li><a href="http://www.dynamicdrive.com/style/csslibrary/category/C4/">Image CSS</a></li>
	<li><a href="http://www.dynamicdrive.com/style/csslibrary/category/C6/">Form CSS</a></li>
	<li><a href="http://www.dynamicdrive.com/style/csslibrary/category/C5/">DIVs and containers</a></li>
	<li><a href="http://www.dynamicdrive.com/style/csslibrary/category/C7/">Links & Buttons</a></li>
	<li><a href="http://www.dynamicdrive.com/style/csslibrary/category/C8/">Other</a></li>
	<li><a href="http://www.dynamicdrive.com/style/csslibrary/all/">Browse All</a></li>
	</ul>
</div> 
<a class="menuitem submenuheader" href="http://www.dynamicdrive.com/style/" >CSS Examples2</a>
<div class="submenu">
	<ul>
	<li><a href="http://www.cssdrive.com">CSS Gallery</a></li>
	<li><a href="http://www.cssdrive.com/index.php/menudesigns/">Menu Gallery</a></li>
	<li><a href="http://www.cssdrive.com/index.php/news/">Web Design News</a></li>
	<li><a href="http://www.cssdrive.com/index.php/examples/">CSS Examples</a></li>
	<li><a href="http://www.cssdrive.com/index.php/main/csscompressor/">CSS Compressor</a></li>
	<li><a href="http://www.dynamicdrive.com/forums/forumdisplay.php?f=6">CSS Forums</a></li>
	</ul>
</div>
<a class="menuitem submenuheader" href="http://www.dynamicdrive.com/style/" >CSS Examples3</a>
<div class="submenu">
	<ul>
	<li><a href="http://www.cssdrive.com">CSS Gallery</a></li>
	<li><a href="http://www.cssdrive.com/index.php/menudesigns/">Menu Gallery</a></li>
	<li><a href="http://www.cssdrive.com/index.php/news/">Web Design News</a></li>
	<li><a href="http://www.cssdrive.com/index.php/examples/">CSS Examples</a></li>
	<li><a href="http://www.cssdrive.com/index.php/main/csscompressor/">CSS Compressor</a></li>
	<li><a href="http://www.dynamicdrive.com/forums/forumdisplay.php?f=6">CSS Forums</a></li>
	</ul>
</div>
<a class="menuitem submenuheader" href="http://www.dynamicdrive.com/style/" >CSS Examples4</a>
<div class="submenu">
	<ul>
	<li><a href="http://www.cssdrive.com">CSS Gallery</a></li>
	<li><a href="http://www.cssdrive.com/index.php/menudesigns/">Menu Gallery</a></li>
	<li><a href="http://www.cssdrive.com/index.php/news/">Web Design News</a></li>
	<li><a href="http://www.cssdrive.com/index.php/examples/">CSS Examples</a></li>
	<li><a href="http://www.cssdrive.com/index.php/main/csscompressor/">CSS Compressor</a></li>
	<li><a href="http://www.dynamicdrive.com/forums/forumdisplay.php?f=6">CSS Forums</a></li>
	</ul>
</div>
		</td>
	</tr>
</table>
</body>
</html>