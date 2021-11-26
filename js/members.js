
var categoryList = login_status();
categoryList.then(function (data) {
    console.log('呼び出し先', data);
    if (data.success == "N") {
        alert("請先登入");
        $(".col2_item").html(data.success);
        window.location.href = "project_cloversky_login.html";
        // $("button#log_out").text("login");
    } else {
        // window.location.href = "project_shopcart_step1.html";
        // $("button#log_out").text("logout");
    }
}).fail(function () {
    console.log('err');
});