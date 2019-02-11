<%--
  Created by IntelliJ IDEA.
  User: 11214
  Date: 2018/11/8
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>搜索</title>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link href='css/list/style.css' rel='stylesheet' type='text/css'>
    <script src="js/vue.js"></script>
</head>
<body>

<div id="main">
    <div id="wrapper-header">
        <div id="main-header" class="object">
            <div align="center" style="margin-top: 15px;">
                <input type="text" name="search" id="tip_search_input" autocomplete=off required style="width: 70%">
                <button type="button" class="btn btn-primary" @click="search">搜索</button>
            </div>
        </div>
    </div>

    <div id="wrapper-container">
        <div class="container object">
            <div id="main-container-image">
                <section class="work">
                </section>
            </div>
        </div>

        <div id="wrapper-oldnew">
            <div class="oldnew">
                <div class="wrapper-oldnew-prev">
                    <div id="oldnew-prev" @click="show(-1)"></div>
                </div>
                <div class="wrapper-oldnew-next">
                    <div id="oldnew-next" @click="show(1)"></div>
                </div>
            </div>
        </div>
        <div id="wrapper-copyright">
            <div class="copyright">
            </div>
        </div>
    </div>
</div>
<script>
    var vm = new Vue({
        el: "#main",
        data: {
            page: 0,
            maxPage: 0,
            number: 0,
            names: [],
            images: [],
        },
        methods: {
            search: function () {
                var context = $("#tip_search_input").val();
                if (context == "") return;

                var data = new FormData();
                data.append("value", context);
                $.ajax({
                    url: "/HEALTH/Search/search",
                    type: "post",
                    async: true,
                    data: data,
                    dataType: 'json',
                    processData: false,
                    contentType: false,
                    success: function (data, textStatus) {
                        $.each(data, function (index, obj) {
                            vm.names.push(obj["name"])
                            vm.images.push("/HEALTH/images/food/food" + obj["id"] + ".jpg")
                        })
                        vm.number = vm.names.length;
                        vm.page = 0;
                        vm.maxPage = vm.number / 6 + 1;
                        vm.show(1);
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert(textStatus);
                    }
                });
            },
            show: function (x) {
                if (vm.page == 1 && x == -1) return;
                if (vm.page == vm.maxPage && x == 1) return;
                $("#main-container-image").empty();

                vm.page = vm.page + x;
                var l = (vm.page - 1) * 6;
                var r = vm.page * 6;
                if (r > vm.number) r = vm.number;
                for (var i = l; i < r; i++) {
                    var section = document.createElement("section");
                    section.setAttribute("class", "work");
                    var figure = document.createElement("figure");
                    figure.setAttribute("class", "white");
                    figure.style.height = "250px";
                    var a = document.createElement("a");
                    a.href = '/HEALTH/foodDetail.jsp?name' + '=' + vm.names[i];
                    var img = document.createElement("img");
                    img.setAttribute("src", vm.images[i]);
                    var div = document.createElement("div");
                    div.setAttribute("id", "part-info");
                    div.append(vm.names[i]);

                    a.append(img);
                    figure.append(a);
                    figure.append(div)
                    section.append(figure);
                    $("#main-container-image").append(section);
                }
            },
        }
    })
</script>

<script src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/jquery.scrollTo.min.js"></script>
<script type="text/javascript" src="js/jquery.localScroll.min.js"></script>
<script type="text/javascript" src="js/jquery-animate-css-rotate-scale.js"></script>
<script type="text/javascript" src="js/fastclick.min.js"></script>
<script type="text/javascript" src="js/jquery.animate-colors-min.js"></script>
<script type="text/javascript" src="js/jquery.animate-shadow-min.js"></script>
<script type="text/javascript" src="js/main.js"></script>

</body>
</html>