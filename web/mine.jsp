<%--
  Created by IntelliJ IDEA.
  User: 11214
  Date: 2018/11/7
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>mine</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="author" content="">

<meta content="width=device-width,initial-scale=1" name="viewport">

<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/mine/style.css">
<link rel="stylesheet" type="text/css" href="css/simpletextrotator.css">
<script src="js/jquery.min.js"></script>
<script src="js/vue.js"></script>
</head>
<body>

<div class="loading-screen"></div>

<div id="frontpage">
    <div class="shadow-img"></div>
    <img src="images/front-image.jpg" class="front-img img-responsive" alt="Front-image"><!--IMAGE FOR FRONT SCREEN-->
    <h1>HEALTH</h1><!--PROFILE NAME-->
    <div class="frontclick"><img src="images/click.png" alt="" class="img-responsive"><span class="pulse"></span></div>
</div>

<!--container-->
<div class="container" id="container">
    <div id="content" class="row hidden">
        <div class="col-sm-3">
            <!--namecard-->
            <div id="namecard" class="namecard" style="height: 300px">
                <div class="shadow-img"></div>
                <h1 class="maintitle">HEALTH</h1><!--PROFILE NAME-->
                <h3 class="invert sub-maintitle"><span class="rotate">健康, 膳食, 均衡</span></h3>
                <img id="profile-img" class="profile-img transparent" src="images/health.png" alt="profile-image">
                <!--PROFILE IMAGE-->
            </div><!--/#namecard-->
            <!--menu-->
            <div id="menu-container" style="height: 60px">
                <!--PAGE MENU-->
                <ul class="nav-menu no-padding">
                    <li class="nav-btn" id="resume-btn" title="Resume" data-page="resume">
                        <div class="hover-background"></div>
                        <span>营养小贴士</span><i class="fa fa-file-text fa-fw"></i>
                    </li>
                    <li class="nav-btn folio-btn" data-filter="*" title="Portfolio" data-page="portfolio">
                        <div class="hover-background"></div>
                        <span>三餐推荐</span><i class="fa fa-suitcase fa-fw"></i>
                    </li>
                    <li class="nav-btn" title="Contact" id="contact-link" data-page="contact">
                        <div class="hover-background"></div>
                        <span>联系我们</span><i class="fa fa-paper-plane fa-fw"></i>
                    </li>
                </ul>
            </div><!--#menu-container-->
        </div>
        <div class="col-sm-8 page-segment">
            <ul class="page-container no-padding">
                <li id="resume" class="selected">
                    <div class="title-container">
                        <div class="shadow-img"></div>
                        <h2 class="rotate-out rotated"><span class="invert">营养小贴士</span></h2> <!--RESUME TITLE-->
                    </div>
                    <div class="description">
                        <div class='tabs tabs_animate'>
                            <!--RESUME TAB LISTS-->
                            <ul class='horizontal no-padding'>
                                <li><a href="#tab-1" class="icon-bg icon-skills">
                                    <div>能量配比</div>
                                </a></li>
                                <li><a href="#tab-2" class="icon-bg icon-education">
                                    <div>四季饮食</div>
                                </a></li>
                                <li><a href="#tab-3" class="icon-bg icon-employment">
                                    <div>三餐搭配</div>
                                </a></li>
                            </ul><!--RESUME TAB LISTS ENDS-->

                            <!--RESUME FIRST TAB/SKILL TAB DETAILS-->
                            <div id='tab-1'>
                                <h3 class="title">三餐能量占比</h3><!--SKILLS WITH BAR DISPLAY-->
                                <ul class="skills-list no-padding">
                                    <li class="row">
                                        <div class="col-xs-2">
                                            <div class="fw-mid">早</div>
                                        </div>
                                        <div class="col-xs-9">
                                            <div class="bar">
                                                <div class="percentage" id="bar1" style="width: 30%;"></div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="row">
                                        <div class="col-xs-2">
                                            <div class="fw-mid">中</div>
                                        </div>
                                        <div class="col-xs-9">
                                            <div class="bar">
                                                <div class="percentage" id="bar2" style="width: 40%;"></div>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="row">
                                        <div class="col-xs-2">
                                            <div class="fw-mid">晚</div>
                                        </div>
                                        <div class="col-xs-9">
                                            <div class="bar">
                                                <div class="percentage" id="bar3" style="width: 30%;"></div>
                                            </div>
                                        </div>
                                    </li>
                                </ul><!--SKILLS WITH BAR DISPLAY ENDS-->

                                <!--SKILLS WITH CIRCLE DISPLAY-->
                                <div class="circle-skill-container">
                                    <h3 class="title">标准能量比</h3>
                                    <div class="row">
                                        <div class="col-xs-4 center-align">
                                            <div class="circle-bar" id="line-container1">
                                                <div class="progressbar-text" id="progress-text1">0</div>
                                            </div>
                                            <h5>蛋白质</h5>
                                        </div>
                                        <div class="col-xs-4 center-align">
                                            <div class="circle-bar" id="line-container2">
                                                <div class="progressbar-text" id="progress-text2">0</div>
                                            </div>
                                            <h5>油脂</h5>
                                        </div>
                                        <div class="col-xs-4 center-align">
                                            <div class="circle-bar" id="line-container3">
                                                <div class="progressbar-text" id="progress-text3">0</div>
                                            </div>
                                            <h5>碳水化合物</h5>
                                        </div>
                                    </div>
                                </div><!--SKILLS WITH CIRCLE DISPLAY ENDS-->
                            </div><!--RESUME FIRST TAB/SKILL TAB DETAILS ENDS-->

                            <div id='tab-2'>
                                <h3 class="title">四季饮食</h3>
                                <ul class="education-class">
                                    <li>
                                        <!--EDUCATION LIST ITEM-->
                                        <h4 class="title">春季饮食<i class="fa fa-sort-desc pull-right"></i></h4>
                                        <div class="list-content">
                                            <h5 class="title">春季重点为养肝，饮食要均衡有营养，少吃酸味食物，要多补充水分。<span
                                                    class="list-year"></span></h5>
                                            <p>养脾佳品大红枣，补中益气葡萄干，入脾养血龙眼干，时令食物春之芽，四鲜之首是春韭，菠菜解毒防春燥。</p>
                                            <!--EDUCATION LIST DETAILS-->
                                        </div>
                                    </li>
                                    <li>
                                        <!--EDUCATION LIST ITEM-->
                                        <h4 class="title">夏季饮食<i class="fa fa-sort-desc pull-right"></i></h4>
                                        <div class="list-content current">
                                            <h5 class="title">夏季天气炎热，容易出汗，多吃蔬菜水果<span class="list-year"></span></h5>
                                            <p>要选择清爽开胃同时还养生保健的食物。如，薏米，苦瓜，生姜，黄瓜，绿豆，西瓜。</p><!--EDUCATION LIST DETAILS-->
                                        </div>
                                    </li>
                                    <li>
                                        <!--EDUCATION LIST ITEM-->
                                        <h4 class="title">秋季饮食<i class="fa fa-sort-desc pull-right"></i></h4>
                                        <div class="list-content">
                                            <h5 class="title">秋季容易长脂肪，空气干燥，还要注意不吃或少吃辛辣烧烤食品 <span
                                                    class="list-year"></span></h5>
                                            <p>多吃一些清心润燥的食物，如乌骨鸡、猪肺、银耳、蜂蜜、芝麻、豆浆、藕、核桃、薏苡仁、花生、鸭蛋、菠菜、梨等。</p>
                                            <!--EDUCATION LIST DETAILS-->
                                        </div>
                                    </li>
                                    <li>
                                        <!--EDUCATION LIST ITEM-->
                                        <h4 class="title">冬季饮食<i class="fa fa-sort-desc pull-right"></i></h4>
                                        <div class="list-content">
                                            <h5 class="title">冬季寒冷干燥，容易感冒生病，多吃水果有助补充水分<span class="list-year"></span>
                                            </h5>
                                            <p>多食肉食，枸杞，豆制品，木耳，胡萝卜，大蒜，黄豆芽，香菇，苹果，草莓，山竹。</p><!--EDUCATION LIST DETAILS-->
                                        </div>
                                    </li>
                                </ul>
                            </div><!--RESUME SECOND TAB/EDUCATION TAB DETAILS ENDS-->
                            <!--RESUME THIRD TAB/EMPLYMENT TAB DETAILS ENDS-->
                            <div id='tab-3'>
                                <h3 class="title">三餐搭配建议</h3>
                                <ul class="employment-class tab-cont">
                                    <li>
                                        <!--EMPLOYMENT INDIVIDUAL LIST-->
                                        <h4>早餐搭配<span class="year"></span></h4>
                                        <h5>早餐以清淡营养为主，忌辛辣油腻</h5>
                                        <p>谷物类：面包或者三明治。肉类和蛋类：水煮鸡蛋，鸡肉。富含蛋白质的饮品：热牛奶或者豆浆。</p><!--EMPLOYMENT LIST DETAILS-->
                                    </li>
                                    <li>
                                        <!--EMPLOYMENT INDIVIDUAL LIST-->
                                        <h4>午餐搭配<span class="year"></span></h4>
                                        <h5>低油、低盐、低糖及高纤维</h5>
                                        <p>以五谷为主，配合大量蔬菜、瓜类及水果，适量肉类、蛋类及鱼类食物，并减少油、盐及糖分。忌以碳水化合物为主，忌吃方便食品代替午餐。</p>
                                        <!--EMPLOYMENT LIST DETAILS-->
                                    </li>
                                    <li>
                                        <!--EMPLOYMENT INDIVIDUAL LIST-->
                                        <h4>晚餐搭配<span class="year"></span></h4>
                                        <h5>晚餐要清淡，忌油腻和丰盛，少吃胀气的食物</h5>
                                        <p>要选择脂肪少、易消化的食物，且注意不应吃得过饱。营养过剩会导致脂肪堆积，造成肥胖。</p><!--EMPLOYMENT LIST DETAILS-->
                                    </li>
                                </ul>
                            </div><!--RESUME THIRD TAB/EMPLYMENT TAB DETAILS ENDS-->
                        </div>
                    </div>
                </li>
                <!--/#resume-->
                <!--PORTFOLIO PAGE-->
                <li id="portfolio" class="hidden">
                    <div class="title-container">
                        <div class="shadow-img"></div>
                        <h2 class="rotate-out rotated">三餐推荐</h2> <!--PORTFOLIO TITLE-->
                    </div>

                    <!--PORTFOLIO CATEGORY LIST-->
                    <div class="abs-child">
                        <ul class="button-group filters-button-group">
                            <li class="button is-checked" data-filter="*">推荐菜品</li>
                            <li class="button" data-filter=".photography">早餐</li>
                            <li class="button" data-filter=".commercial">午餐</li>
                            <li class="button" data-filter=".potrait">晚餐</li>
                        </ul><!--/.button-group filters-button-group-->
                    </div>

                    <div class="sec-porfolio description">
                        <div class="row">
                            <div class="folio-container">
                                <ul class="folio-item">
                                    <li class="view view-first photography" @click="menu(name[0])">
                                        <img v-bind:src="breakfast1" style="height: 100%; width: 100%"/>
                                    </li>
                                    <li class="view view-tenth photography" @click="menu(name[1])">
                                        <img v-bind:src="breakfast2" style="height: 100%; width: 100%"/>
                                    </li>
                                    <li class="view view-tenth commercial" @click="menu(name[2])">
                                        <img v-bind:src="lunch1" style="height: 100%; width: 100%"/>
                                    </li>
                                    <li class="view view-second commercial" @click="menu(name[3])">
                                        <img v-bind:src="lunch2" style="height: 100%; width: 100%"/>
                                    </li>
                                    <li class="view view-second commercial" @click="menu(name[4])">
                                        <img v-bind:src="lunch3" style="height: 100%; width: 100%"/>
                                    </li>
                                    <li class="view view-first potrait" @click="menu(name[5])">
                                        <img v-bind:src="dinner1" style="height: 100%; width: 100%"/>
                                    </li>
                                    <li class="view view-tenth potrait" @click="menu(name[6])">
                                        <img v-bind:src="dinner2" style="height: 100%; width: 100%"/>
                                    </li>
                                    <li class="view view-tenth potrait" @click="menu(name[7])">
                                        <img v-bind:src="dinner3" style="height: 100%; width: 100%"/>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>

                <!--CONTACT PAGE-->
                <li id="contact" class="hidden">
                    <div class="title-container">
                        <div class="shadow-img"></div>
                        <h2 class="rotate-out rotated">联系我们</h2><!--CONTACT PAGE TITLE-->
                    </div>
                    <div class="description">
                        <div class="row">
                            <div class="col-sm-5">
                                <h3 class="title">联系方式</h3>
                                <h4 class="sm-title"><span class="address-icon"><i class="fa fa-map-marker"></i></span>四川大学江安校区
                                </h4>
                                <h4 class="sm-title"><span class="address-icon"><i class="fa fa-phone"></i></span>15167510231
                                </h4>
                                <h4 class="sm-title"><span class="address-icon"><i class="fa fa-envelope"></i></span>1121498469@qq.com
                                </h4>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>

<script>
    var vm = new Vue({
        el: "#container",
        data: {
            breakfast1: "", breakfast2: "",
            lunch1: "", lunch2: "", lunch3: "",
            dinner1: "", dinner2: "", dinner3: "",
            name: [],
        },
        methods: {
            menu: function (x) {
                window.location.href = '/HEALTH/menu.jsp?name' + '=' + x;
            }
        },
        mounted: function () {
            $.ajax({
                url: "/HEALTH/Recommend/meal",
                type: "get",
                async: true,
                dataType: 'json',
                processData: false,
                contentType: false,
                success: function (data, textStatus) {
                    vm.breakfast1 = "/HEALTH/images/menu/menu" + data.m1 + ".jpg";
                    vm.breakfast2 = "/HEALTH/images/menu/menu" + data.m2 + ".jpg";
                    vm.lunch1 = "/HEALTH/images/menu/menu" + data.m3 + ".jpg";
                    vm.lunch2 = "/HEALTH/images/menu/menu" + data.m4 + ".jpg";
                    vm.lunch3 = "/HEALTH/images/menu/menu" + data.m5 + ".jpg";
                    vm.dinner1 = "/HEALTH/images/menu/menu" + data.m6 + ".jpg";
                    vm.dinner2 = "/HEALTH/images/menu/menu" + data.m7 + ".jpg";
                    vm.dinner3 = "/HEALTH/images/menu/menu" + data.m8 + ".jpg";
                    vm.name.push(data.n1);
                    vm.name.push(data.n2);
                    vm.name.push(data.n3);
                    vm.name.push(data.n4);
                    vm.name.push(data.n5);
                    vm.name.push(data.n6);
                    vm.name.push(data.n7);
                    vm.name.push(data.n8);
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(textStatus);
                }
            });
        }
    })
</script>

<script type="text/javascript" src="js/jQueryTween-aio-min.js"></script>
<script type="text/javascript" src="js/jquery.tabslet.min.js"></script>
<script type="text/javascript" src="js/progressbar.min.js"></script>
<script type="text/javascript" src="js/jquery.simple-text-rotator.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src='js/isotope.pkgd.min.js'></script>
<script type="text/javascript" src="js/mine/custom.js"></script>
</body>
</html>
