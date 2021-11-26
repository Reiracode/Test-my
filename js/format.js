// include-千分位
function number_format(n) {
  n += "";
  var arr = n.split(".");
  var re = /(\d{1,3})(?=(\d{3})+$)/g;
  return arr[0].replace(re, "$1,") + (arr.length == 2 ? "." + arr[1] : "");
}
//去千分位號
function RemoveComma(n) {
  return n.replace(/[,]+/g, "");
}

//login true or false

const domainName = window.location.href;
const loc = domainName.indexOf(":", 6);
const allurl = domainName.slice(0, loc) + ":8080";

// function now() {
var url = location.href;
if (url.indexOf("/") != -1) {
  //在此直接將各自的參數資料切割放進ary中
  var ary = url.split("/");
  var add = ary[ary.length - 1].split("?");
  // console.log(add[0])//project_cloversky_allitems.html#page-3
}

function process_color() {
  if (add[0].indexOf("step") != -1) {
    var step = add[0].split("_");
    var step = step[step.length - 1];
    console.log(step.substr(4, 1));

    var now_step = step.substr(4, 1);
    for (var i = now_step - 1; i >= 0; i--) {
      console.log(i);
      // $('.process2 a div').eq(i).css({'backgroundColor':'#d08080','opacity':'1'});
      $(".process3 li").eq(i).css({ backgroundColor: "#d08080", opacity: "1" });
    }

    // switch (step.substr(4, 1)) {
    //     case "1":
    //         console.log("this1")
    //         $('.process3 div').eq(0).css('backgroundColor', '#DEAF3B')
    //         break;

    //     case "2":
    //         console.log("this2")
    //         $('.process3 div').eq(0).css('backgroundColor', '#DEAF3B')
    //         $('.process3 div').eq(1).css('backgroundColor', '#DEAF3B')
    //         $('.process3 span').eq(0).css('backgroundColor', '#DEAF3B')

    //         break;

    //     case "3":
    //         console.log("this3")
    //         $('.process3 div').eq(0).css('backgroundColor', '#DEAF3B')
    //         $('.process3 div').eq(1).css('backgroundColor', '#DEAF3B')
    //         $('.process3 div').eq(2).css('backgroundColor', '#DEAF3B')
    //         $('.process3 span').eq(1).css('backgroundColor', '#DEAF3B')

    //         break;

    //     default:
    //         break;
    // }
  }
}

// login_status
var login_status = function () {
  return $.ajax({
    url: allurl + "/reirasys_api/is_login.php",
    type: "GET",
    dataType: "json",
  }).then(function (data) {
    console.log(data);
    return data;
  });
};

function getLogin_format() {
  $.ajax({
    url: allurl + "/reirasys_api/is_login.php",
    type: "get",
    dataType: "json",
    success: function (data) {
      console.log(data.success);
      // return data.success
      return "data.success";
    },
  });
}

function getLogin_status() {
  // 追加処理
  // Ajaxで送信
  return $.ajax({
    url: allurl + "/reirasys_api/is_login.php",
    type: "get",
    dataType: "json",
    success: function (data) {
      data.success;
    },
  });
}

//form input all trim
function formTrim(formValueall) {
  var formValues = formValueall;
  data = {};
  formValues.forEach(function (el) {
    data[el.name] = el.value.replace(/ /g, "");
  });
  // console.log(data)
  return data;
}

// allitem.html
function current_page() {
  let url = location.href;
  if (url.indexOf("/") != -1) {
    //split在此直接將各自的參數資料切割放進ary中
    var ary = url.split("/");
    // console.log(ary)
    var ustring = ary[ary.length - 1];
    var q_string;
    if (ustring.indexOf("?") != -1 || ustring.indexOf("#") != -1) {
      var ary1 = ustring.split("?");
      //console.log(ary1)//["project_cloversky_allitems.html#page-3"]
      // array
      if (ary1.length > 1) {
        ustring = ary1[0];
        if (ary1[1].indexOf("=") != -1) {
          // 第二層id=12
          q_string = ary1[1].split("=");
        }
      } else {
        // var ary1 = ary1.toString().split('#');
        var ary1 = ary1[0].split("#");
        //console.log(ary1)//["project_cloversky_allitems.html#page-3"]
        ustring = ary1[0];
        if (ary1[1].indexOf("=") != -1) {
          // 第二層id=12
          q_string = ary1[1].split("=");
        } else {
          q_string = ary1[1];
        }
      }
    } else {
      //第一層form_test2_next2.html
      ustring = ustring;
      q_string = "";
    }
  }

  return [ustring, q_string];
}

function site_map() {
  // 取得/  ==>form_test2_next2.html#page-2
  var url = location.href;
  if (url.indexOf("/") != -1) {
    var ary = url.split("/");
    var add = ary[ary.length - 1].split("?");
    console.log(add[0]);
  }
  var url = add[0];
  var si;
  //!-1==>false not found
  if (url.indexOf("#")) {
    //#page-2
    var si = url.indexOf("#");
    var s2 = url.substring(si, url.length);
    console.log("s2" + s2);
  } else if (url.indexOf("?")) {
    //?id=lo
    var si = url.indexOf("?");

    var add = ary[ary.length - 1].split("?");
  } else {
    si = 1;
  }
  var str = url.substring(si - 1, url.length);
  console.log("str:" + str);
  var myUrl = new Object();
  myUrl.main = add[0];
  // myUrl.key = 'Mustang';
  // myUrl.val = 1969;
}

function sayHi() {
  // console.log("reutrn")
  return "sayihi";
}
