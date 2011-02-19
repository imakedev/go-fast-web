<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
	<meta http-equiv="Content-type" content="text/html; charset=UTF-8"> 	<title>Moving Boxes</title>
	 
	<link rel="stylesheet" href="css/blackberry/style.css" type="text/css" media="screen" charset="utf-8">

	<script src="js/blackberry/jquery-1.3.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/blackberry/slider.js" type="text/javascript" charset="utf-8"></script>
</head>
  

<body>
<table border="0"> 
 <tr>
<td align="center">
<div id="wrapper" align="center">
	<%--
		<img src="image/movingboxes.png" alt="moving boxes" />
     --%>
        <div id="slider">    
<%--
            <img class="scrollButtons left" src="image/leftarrow.png">
             --%>
  
			<div style="overflow: hidden;" class="scroll">
	
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
</body>

</html>