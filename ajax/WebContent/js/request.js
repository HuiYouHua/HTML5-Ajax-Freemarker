/**
 * Created by uathz990677 on 2018/6/26.
 */


$(function () {

    $(".button").click(function () {
        // $.post('request.php',{
        //     id: "11"
        // }, function (data, status) {
        //     alert("数据: \n" + data + "\n状态： " + status);
        //     $(".button").val("123");
        //
        // });

        $.post('http://localhost:8080/requestAjax/data.jsp',{
            id: "11"
        }, function (data, status) {
            var data1 = {
            		  "content" :[
            			  {
            			  	"labelImageUrl" : "http://localhost:8080/requestAjax/images/main_19.png",
            			  	"labelTitle" : "美食推荐11",
            			  	"produce" : [
            			  		{
            			  		"produceImageUrl" : "http://localhost:8080/requestAjax/images/main_26.png",
            			  		"produceTitle" : "保20和30年中疾险11",
            			  		"produceDescription" : "保终身|百种疾病|可选轻症豁免"
            			  		},
            			  		{
            			  		"produceImageUrl" : "http://localhost:8080/requestAjax/images/main_29.png",
            			  		"produceTitle" : "成人及儿童终身重疾病12",
            			  		"produceDescription" : "150种疾病|身故返保费|赠绿通免"
            			  		}
            			  	]
            			  },
            			  {
            			  	"labelImageUrl" : "http://localhost:8080/requestAjax/images/main_13.png",
            			  	"labelTitle" : "饮品休闲11",
            			  	"produce" : [
            			  		{
            			  		"produceImageUrl" : "http://localhost:8080/requestAjax/images/main_26.png",
            			  		"produceTitle" : "保20和30年中疾险21",
            			  		"produceDescription" : "保终身|百种疾病|可选轻症豁免"
            			  		}
            			  	]
            			  },
            			  {
            			  	"labelImageUrl" : "http://localhost:8080/requestAjax/images/main_15.png",
            			  	"labelTitle" : "酒店住宿11",
            			  	"produce" : [
            			  		{
            			  		"produceImageUrl" : "http://localhost:8080/requestAjax/images/main_26.png",
            			  		"produceTitle" : "保20和30年中疾险31",
            			  		"produceDescription" : "保终身|百种疾病|可选轻症豁免"
            			  		},
            			  		{
            			  		"produceImageUrl" : "http://localhost:8080/requestAjax/images/main_29.png",
            			  		"produceTitle" : "成人及儿童终身重疾病32",
            			  		"produceDescription" : "150种疾病|身故返保费|赠绿通免"
            			  		},
            			  		{
            			  		"produceImageUrl" : "http://localhost:8080/requestAjax/images/main_26.png",
            			  		"produceTitle" : "保20和30年中疾险33",
            			  		"produceDescription" : "保终身|百种疾病|可选轻症豁免"
            			  		}
            			  	]
            			  },
            			  {
            			  	"labelImageUrl" : "http://localhost:8080/requestAjax/images/main_17.png",
            			  	"labelTitle" : "电影优惠11",
            			  	"produce" : [
            			  		{
            			  		"produceImageUrl" : "http://localhost:8080/requestAjax/images/main_26.png",
            			  		"produceTitle" : "保20和30年中疾险41",
            			  		"produceDescription" : "保终身|百种疾病|可选轻症豁免"
            			  		},
            			  		{
            			  		"produceImageUrl" : "http://localhost:8080/requestAjax/images/main_29.png",
            			  		"produceTitle" : "成人及儿童终身重疾病42",
            			  		"produceDescription" : "150种疾病|身故返保费|赠绿通免"
            			  		},
            			  		{
            			  		"produceImageUrl" : "http://localhost:8080/requestAjax/images/main_26.png",
            			  		"produceTitle" : "保20和30年中疾险43",
            			  		"produceDescription" : "保终身|百种疾病|可选轻症豁免"
            			  		},
            			  		{
            			  		"produceImageUrl" : "http://localhost:8080/requestAjax/images/main_29.png",
            			  		"produceTitle" : "成人及儿童终身重疾病44",
            			  		"produceDescription" : "150种疾病|身故返保费|赠绿通免"
            			  		}
            			  	]
            			  }
            			  ]
            			  
            			}
            
            var labelDataSource = data1['content'];
            $('#produce-label li').each(function(i) {
        		$(this).find('p').text(labelDataSource[i]['labelTitle']);
        	});
            
            $('#produce-label li').each(function(i) {
        		$(this).find('img').attr("src", labelDataSource[i]['labelImageUrl']);
        	});
          
            for(var i=0; i<labelDataSource.length; i++) {
            	var produce = labelDataSource[i].produce;

            	$('#produce-content').append('<div class="content content-'+(i+1)+'"></div>');
            	
            	for(var j=0; j<produce.length; j++) {
                	var imageUrl = produce[j].produceTitle;

                	$($('#produce-content .content').get(i)).append('<div class="area"><a href="#"><img src="'+
                			produce[j].produceImageUrl+
                			'"><div><p>'+produce[j].produceTitle+
                			'</p><p>'+produce[j].produceDescription+
                			'</p></div></a> </div>');
                }
            	
            	$('#produce-content .content:first-child').addClass('selected');
            	$('#produce-content .content:gt(0)').css("display","none");
            }
            
            
        });
    });

});













