<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>Title</title>
    <link href="footer.css" rel="stylesheet">
    <link href="produce.css" rel="stylesheet">
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script>
    	$(function() {
    		$('#produce-content .content:first-child').addClass('selected');
            $('#produce-content .content:gt(0)').css("display","none");
    	});
    	
        function produceSelected(index) {
            var labelName = "label-"+index;
            var contentName = "content-"+(index-1);
            $("#produce-label li").removeClass("selected");
            $("#produce-label" + " ." + labelName).addClass("selected");
            $("#produce-content .content").css("display","none");
            $("#produce-content" + " ." + contentName).css("display","block");
        }
    </script>
</head>
<body>
    <h1>Index</h1>

    <div id="produce-label">
        <ul>
            <li class="selected label-1" onclick="produceSelected(1)">
                <img src=${ content.produceContents[0].labelImageUrl }>
                <p>${ content.produceContents[0].labelTitle }</p>
            </li>
            <li class="label-2" onclick="produceSelected(2)">
                <img src=${ content.produceContents[1].labelImageUrl }>
                <p>${ content.produceContents[1].labelTitle }</p>
            </li>
            <li class="label-3" onclick="produceSelected(3)">
                <img src=${ content.produceContents[2].labelImageUrl }>
                <p>${ content.produceContents[2].labelTitle }</p>
            </li>
            <li class="label-4" onclick="produceSelected(4)">
                <img src=${ content.produceContents[3].labelImageUrl }>
                <p>${ content.produceContents[3].labelTitle }</p>
            </li>
        </ul>
    </div>


    <div id="produce-content">
    	
    	<#list content.produceContents as produceContents>
        <div class="content content-${produceContents_index}">
        	<#list produceContents.produces as produce>
            <div class="area">
                <a href="#">
                    <img src=${produce.produceImageUrl}>
                    <div>
                        <p>${produce.produceTitle}</p>
                        <p>${produce.produceDescription}</p>
                    </div>
                </a>
            </div>
            </#list>
        </div>
        </#list>
        
      
           
    </div>
    <div style="width: 100%; height: 40px; background-color: #335fff; clear: both;"></div>
    <div style="width: 100%; background-color: #335fff"><input type="button" class="button" value="点我"></div>


    <div class="footer-blank"></div>
    <footer>
        <ul>
            <li>
                <a href="index.html">
                    <img src="./images/main_70.png"><p>首页</p>
                </a>
            </li>
            <li>
                <a href="list.html">
                    <img src="./images/main_72.png"><p>产品列表</p>
                </a>
            </li>
            <li>
                <a href="mine.html">
                    <img src="./images/main_74.png"><p>我的</p>
                </a>
            </li>
        </ul>
    </footer>
</body>
</html>