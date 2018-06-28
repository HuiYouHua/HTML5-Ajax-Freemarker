<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="produce.css" rel="stylesheet">
</head>

<body>
<div class="header">123</div>
${user.id}-------${user.name}------${user.group!}  <#-- !后为空就不输出  -->
<#--${user.group.name!}--><#-- 按照以上的方式加! freemarker仅仅只会判断group.name是不是空值 -->
${(user.group.name)!"1234"} 

${(a.b)!"没有a.b元素"}

<#--
!:指定缺失变量的默认值 
??:判断某个变量是否存在,返回boolean值 
-->
<#if (a.b)??> <#--if后不用加$-->
    不为空
<#else>
    为空
</#if>


<#list ["星期一","星期二","星期三"] + ["星期四","星期五","星期六","星期天"] as x>
	${x}   ${x_index}
</#list>

</body>
</html>