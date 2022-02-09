// include-千分位
function number_format(n) {
  n += "";
  let arr = n.split(".");
  let re = /(\d{1,3})(?=(\d{3})+$)/g;
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

const allitem = !!(allurl == "http://localhost:8080")
  ? allurl + "/reirasys_api/shopitems.php"
  : "https://reiracode.github.io/ajax/allitems.json";

const getProd = async () => {
  const response = await fetch(allitem);
  const json = await response.json();
  return json
  // try {
  //   console.log(json.items);
  //   return json.items;
  // } catch (err) {
  //   //失敗
  //   console.error(error);
  // }
};

const FindApi = async () => {
  const response = await fetch(allitem);
  const json = await response.json();
  return json;
};
//all items
async function searchAPI() {
  return await fetch(`${allitem}`).then((data) => data.json());
}

//products.html filter items
const searchitemurl = allurl + `/reirasys_api/shopitemkey.php`;
async function searchId(id) {
  return await fetch(`${searchitemurl}?id=${id}`).then((data) => data.json());
}  

let url = location.href;
if (url.indexOf("/") != -1) {
  //在此直接將各自的參數資料切割放進ary中
  let ary = url.split("/");
  let add = ary[ary.length - 1].split("?");
  // console.log(add[0])//collections.html#page-3
}

function process_color() {
  if (add[0].indexOf("step") != -1) {
    let step = add[0].split("_");
     step = step[step.length - 1];
    console.log(step.substr(4, 1));

    let now_step = step.substr(4, 1);
    for (let i = now_step - 1; i >= 0; i--) {
      console.log(i);
      // $('.process2 a div').eq(i).css({'backgroundColor':'#d08080','opacity':'1'});
      $(".process3 li").eq(i).css({ backgroundColor: "#d08080", opacity: "1" });
    }
  }
}

// login_status
let login_status = function () {
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
  let formValues = formValueall;
  data = {};
  formValues.forEach(function (el) {
    data[el.name] = el.value.replace(/ /g, "");
  });
  // console.log(data)
  return data;
}

// allitem.html
function current_page() {
  let url = location.href,ustring,ary1;
  if (url.indexOf("/") != -1) {
    //split在此直接將各自的參數資料切割放進ary中
    let ary = url.split("/");
    // console.log(ary)
    ustring = ary[ary.length - 1];
    console.log(ustring);
    let q_string;
    if (ustring.indexOf("?") != -1 || ustring.indexOf("#") != -1) {
      ary1 = ustring.split("?");
      //console.log(ary1)//["collections.html#page-3"]
      // array
      if (ary1.length > 1) {
        ustring = ary1[0];
        if (ary1[1].indexOf("=") != -1) {
          // 第二層id=12
          q_string = ary1[1].split("=");
        }
      } else {
        // let ary1 = ary1.toString().split('#');
        ary1 = ary1[0].split("#");
        //console.log(ary1)//["collections.html#page-3"]
        ustring = ary1[0];
        if (ary1[1].indexOf("=") != -1) {
          // 第二層id=12
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
  // return [ustring, q_string];
  return [ustring];
}

// 建立物件{main: 'collections.html'}
// collections.html?id=de#page-3
// 取得add= ["collections.html", "id=de"];
let myUrl = new Object();
function site_map() {
  let url = location.href;
  let urlstring,querykey;
  if (url.indexOf("/") != -1) {
    let ary = url.split("/");
    urlstring = ary[ary.length - 1].split("?");
  }
  // //["collections.html", "id=ss"];
  if (urlstring.length > 1) {
    if (urlstring[urlstring.length - 1].indexOf("=") != -1) {
      querykey = urlstring[urlstring.length - 1].split("=");
      myUrl.id = querykey[1];
      console.log("id:" + querykey[1]);
    }
  } else {
    myUrl.id = "";
  }
  myUrl.main = urlstring[0];
}
