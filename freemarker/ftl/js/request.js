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

        $.post('http://localhost:8080/test/index.jsp',{
            id: "11"
        }, function (data, status) {
            alert("数据: \n" + data + "\n状态： " + status);
        });
    });

});













