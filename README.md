# HTML5-Ajax-Freemarker
通过HTML表示静态页面，Ajax和Freemarker做数据交互的一个动态小demo

总共两个项目
ajax这个文件夹是用户ajax作为网络请求的
在request.js文件中造的json数据，前部分直接获取对应DOM标签进行赋值，下面的根据json的数据结构在js中直接造标签内容进行添加，响应的css和js的样式和交互就那样


第二个freemarker是通过freemarker作为模板技术，先手写ftl文件作为模板，其中有数据交互的地方加上标签内容，然后通过java文件获取数据源（对象模型），同时通过FreemarkerUtil生成html文件，需要指定生成目录，这里我生成在桌面ftl文件夹中，可将freemarker直接拖到桌面（里面有响应的css文件和js文件），当然我这里的生成html文件路径是绝对路径，可以改为相对路径。其数据交互模式类似jsp。
![自定义跳转](https://github.com/HuiYouHua/HTML5-Ajax-Freemarker/blob/master/1.png "自定义跳转")
