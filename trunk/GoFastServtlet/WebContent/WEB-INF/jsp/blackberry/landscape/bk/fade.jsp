<%@ page contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"> 
    <head>
        <link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/dojo/1.5.0/dijit/themes/claro/claro.css"
        />
        <style type="text/css">
            body, html { font-family:helvetica,arial,sans-serif; font-size:90%; }
        </style>
        <style type="text/css"> 
            .rotator{ background-color:#fff; border:solid 1px #e5e5e5; width:400px;
            height:100px; overflow:hidden; } .pane{ background-color:#fff; width:400px;
            height:100px; overflow:hidden; } .pane0{ background-color:#fff79e; } .pane1{
            background-color:#ffd4a0; } .pane2{ background-color:#ffa0a0; }
        </style>
    </head>
    
    <body class=" claro ">
        <div dojoType="dojox.widget.AutoRotator" class="rotator" id="myAutoRotator2"
        jsId="myAutoRotatorInstance2" transition="dojox.widget.rotator.slideLeft"
        duration="2500">
            <div class="pane pane0">
                Pane 0
                <br/>
                Pane 1 will slide in from the top
            </div>
            <div class="pane pane1" transition="dojox.widget.rotator.slideDown">
                Pane 1
                <br/>
                Pane 2 will slide in from the left
            </div>
            <div class="pane pane2" transition="dojox.widget.rotator.slideRight">
                Pane 2
                <br/>
                Pane 0 will use the default transition to slide in from the right
            </div>
        </div>
        <button onclick="dojo.publish('myAutoRotator2/rotator/control', ['prev']);">
            Prev
        </button>
        <button onclick="dojo.publish('myAutoRotator2/rotator/control', ['go', 0]);">
            Go 1 (slide left)
        </button>
        <button onclick="dojo.publish('myAutoRotator2/rotator/control', ['go', 1]);">
            Go 2 (slide down)
        </button>
        <button onclick="dojo.publish('myAutoRotator2/rotator/control', ['go', 2]);">
            Go 3 (slide right)
        </button>
        <button onclick="dojo.publish('myAutoRotator2/rotator/control', ['next']);">
            Next
        </button>
    </body>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/dojo/1.5.0/dojo/dojo.xd.js"
    djConfig="parseOnLoad: true">
    </script>
    <script type="text/javascript">
        dojo.require("dojox.widget.AutoRotator");
        dojo.require("dojox.widget.rotator.Slide");
    </script>
    <!-- NOTE: the following script tag is not intended for usage in real
    world!! it is part of the CodeGlass and you should just remove it when
    you use the code -->
    <script type="text/javascript">
        dojo.addOnLoad(function() {
            if (document.pub) {
                document.pub();
            }
        });
    </script>

</html>