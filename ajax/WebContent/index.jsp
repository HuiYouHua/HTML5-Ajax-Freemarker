<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0">
    <title>Title</title>
    <link href="footer.css" rel="stylesheet">
    <link href="produce.css" rel="stylesheet">
    <script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
    <script src="js/request.js" type="text/javascript"></script>
    <script>
        function produceSelected(index) {
            var labelName = "label-"+index;
            var contentName = "content-"+index;
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
                <img src="images/main_13.png">
                <p>美食推荐</p>
            </li>
            <li class="label-2" onclick="produceSelected(2)">
                <img src="images/main_15.png">
                <p>饮品休闲</p>
            </li>
            <li class="label-3" onclick="produceSelected(3)">
                <img src="images/main_17.png">
                <p>美食推荐</p>
            </li>
            <li class="label-4" onclick="produceSelected(4)">
                <img src="images/main_19.png">
                <p>美食推荐</p>
            </li>
        </ul>
    </div>

    <div id="produce-content">
       
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