<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>

    <!-- Basic -->
    <meta http-equiv="content-type" content="text/html" charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0">

    <!-- Site Metas -->
    <title>HEALTH</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon"/>
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- color -->
    <link id="changeable-colors" rel="stylesheet" href="css/colors/orange.css"/>

    <!-- Modernizer -->
    <script src="js/modernizer.js"></script>
    <script src="js/vue.js"></script>
    <script src="js/jquery.js"></script>

</head>

<body>
<div id="loader">
    <div id="status"></div>
</div>
<div id="site-header">
    <header id="header" class="header-block-top">
        <div class="container">
            <div class="row">
                <div class="main-menu">
                    <!-- navbar -->
                    <nav class="navbar navbar-default" id="mainNav">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                    data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <div class="logo">
                                <a class="navbar-brand js-scroll-trigger logo-header" href="#">
                                    <img src="images/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div id="navbar" class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="active"><a href="#banner">主页</a></li>
                                <li><a href="#menu">每日</a></li>
                                <li><a href="#pricing">营养列表</a></li>
                                <li><a href="#footer">联系我们</a></li>
                            </ul>
                        </div>
                        <!-- end nav-collapse -->
                    </nav>
                    <!-- end navbar -->
                </div>
            </div>
            <!-- end row -->
        </div>
        <!-- end container-fluid -->
    </header>
    <!-- end header -->
</div>
<!-- end site-header -->

<!--首页-->
<div id="banner" class="banner full-screen-mode parallax">
    <div class="container pr">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="banner-static">
                <div class="banner-text">
                    <div class="banner-cell">
                        <h1>您的健康我们帮助</h1>
                        <h2>care for your health</h2>
                        <p>开始您的健康之旅，我们为您提供了多种服务，希望您满意</p>
                        <div class="book-btn">
                            <a href="#reservation" class="table-btn hvr-underline-from-center">开始</a>
                        </div>
                        <a href="#about">
                            <div class="mouse"></div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--健康介绍-->
<div id="about" class="about-main pad-top-100 pad-bottom-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                    <h2 class="block-title">健康</h2>
                    <h3>=情绪稳定+运动适量+饮食合理+科学的休息。。</h3>
                    <p>&nbsp;&nbsp;健康是指一个人在身体、精神和社会等方面都处于良好的状态。
                        健康包括两个方面的内容：一是主要脏器无疾病，身体形态发育良好，体形均匀，人体各系统具有良好的生理功能，有较强的身体活动能力和劳动能力，这是对健康最基本的要求；
                        二是对疾病的抵抗能力较强，能够适应环境变化，各种生理刺激以及致病因素对身体的作用。 </p>
                    <p>&nbsp;&nbsp;合理膳食是指一日三餐所提供的营养必须满足人体的生长、发育和各种生理、体力活动的需要。</p>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                    <div class="about-images">
                        <img class="about-main" src="images/about-main.jpg" alt="About Main Image">
                        <img class="about-inset" src="images/about-inset.jpg" alt="About Inset Image">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--每日推荐轮播台-->
<div id="menu" class="special-menu pad-top-100 parallax">
    <div class="container">
        <div class="row" id="everyday">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                    <h2 class="block-title color-white text-center">每日推荐</h2>
                    <h5 class="title-caption text-center">每时每刻刷新您对食物的认知</h5>
                </div>
                <div class="special-box">
                    <div id="owl-demo">
                        <div class="item item-type-zoom">
                            <div class="item-img">
                                <img v-bind:src="food1" alt="sp-menu">
                            </div>
                        </div>
                        <div class="item item-type-zoom">
                            <div class="item-img">
                                <img v-bind:src="food2" alt="sp-menu">
                            </div>
                        </div>
                        <div class="item item-type-zoom">
                            <div class="item-img">
                                <img v-bind:src="food3" alt="sp-menu">
                            </div>
                        </div>
                        <div class="item item-type-zoom">
                            <div class="item-img">
                                <img v-bind:src="food4" alt="sp-menu">
                            </div>
                        </div>
                        <div class="item item-type-zoom">
                            <div class="item-img">
                                <img v-bind:src="food5" alt="sp-menu">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    var vm = new Vue({
        el: "#everyday",
        data: {
            food1: "/HEALTH/images/menu/menu1.jpg",
            food2: "/HEALTH/images/menu/menu2.jpg",
            food3: "/HEALTH/images/menu/menu3.jpg",
            food4: "/HEALTH/images/menu/menu4.jpg",
            food5: "/HEALTH/images/menu/menu5.jpg",
        },
        mounted: function () {
            var data = new FormData();
            data.append("1", "1");
            $.ajax({
                url: "/HEALTH/ImageAcquisition/broadcast",
                type: "post",
                async: true,
                data: data,
                dataType: 'json',
                processData: false,
                contentType: false,
                success: function (data, textStatus) {
                    vm.food1 = "/HEALTH/images/menu/menu" + data.p1 + ".jpg";
                    vm.food2 = "/HEALTH/images/menu/menu" + data.p2 + ".jpg";
                    vm.food3 = "/HEALTH/images/menu/menu" + data.p3 + ".jpg";
                    vm.food4 = "/HEALTH/images/menu/menu" + data.p4 + ".jpg";
                    vm.food5 = "/HEALTH/images/menu/menu" + data.p5 + ".jpg";
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(textStatus);
                }
            });
        }
    })
</script>

<div class="menu-main pad-top-100 pad-bottom-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                    <h2 class="block-title text-center">
                        推荐菜单
                    </h2>
                    <p class="title-caption text-center">这里有我们为您精心推荐的一些菜单，希望您能满意</p>
                </div>
                <div class="tab-menu">
                    <div class="slider slider-single">
                        <div id="menus">
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 " @click="menu(name1)">
                                <div class="offer-item">
                                    <img v-bind:src="image1" class="img-responsive">
                                    <div>
                                        <h3>{{name1}}</h3>
                                        <p>{{description1}}</p>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 " @click="menu(name2)">
                                <div class="offer-item">
                                    <img v-bind:src="image2" class="img-responsive">
                                    <div>
                                        <h3>{{name2}}</h3>
                                        <p>{{description2}}</p>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->
                        </div>
                    </div>
                </div>
                <!-- end tab-menu -->
            </div>
            <!-- end col -->
        </div>
        <!-- end row -->
    </div>
    <!-- end container -->
</div>
<!-- end menu -->
<script>
    var vmMenu = new Vue({
        el: "#menus",
        data: {
            name1: "",
            name2: "",
            name3: "",
            name4: "",
            description1: "",
            description2: "",
            description3: "",
            description4: "",
            image1: "",
            image2: "",
            image3: "",
            image4: "",
        },
        methods: {
            menu: function (x) {
                window.location.href = '/HEALTH/menu.jsp?name' + '=' + x;
            }
        },
        mounted: function () {
            $.ajax({
                url: "/HEALTH/ImageAcquisition/menu",
                type: "get",
                async: true,
                dataType: 'json',
                processData: false,
                contentType: false,
                success: function (data, textStatus) {
                    vmMenu.name1 = data.obj1.name;
                    vmMenu.name2 = data.obj2.name;
                    vmMenu.name3 = data.obj3.name;
                    vmMenu.name4 = data.obj4.name;
                    vmMenu.description1 = data.obj1.description;
                    vmMenu.description2 = data.obj2.description;
                    vmMenu.description3 = data.obj3.description;
                    vmMenu.description4 = data.obj4.description;
                    vmMenu.image1 = "/HEALTH/images/menu/menu" + data.obj1.image + ".jpg";
                    vmMenu.image2 = "/HEALTH/images/menu/menu" + data.obj2.image + ".jpg";
                    vmMenu.image3 = "/HEALTH/images/menu/menu" + data.obj3.image + ".jpg";
                    vmMenu.image4 = "/HEALTH/images/menu/menu" + data.obj4.image + ".jpg";
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(textStatus);
                }
            });
        }
    });
</script>

<div id="pricing" class="pricing-main pad-top-100 pad-bottom-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <h2 class="block-title text-center">
                    简要每日营养
                </h2>
            </div>
            <div class="panel-pricing-in" id="nutrition">
                <div class="col-md-4 col-sm-4 text-center" @click="foodDetail(name1)">
                    <div class="panel panel-pricing">
                        <div class="panel-heading">
                            <div class="pric-icon">
                                <img v-bind:src="image1" alt=""/>
                            </div>
                            <h3>{{name1}}</h3>
                        </div>
                        <ul class="list-group text-center">
                            <li class="list-group-item">热量（千卡）：{{heat1}}</li>
                            <li class="list-group-item">碳水化合物（克）：{{carbohydrate1}}</li>
                            <li class="list-group-item">脂肪（克）：{{fat1}}</li>
                            <li class="list-group-item">蛋白质（克）：{{protein1}}</li>
                            <li class="list-group-item">纤维素（克）：{{cellulose1}}</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 text-center" @click="foodDetail(name2)">
                    <div class="panel panel-pricing">
                        <div class="panel-heading">
                            <div class="pric-icon">
                                <img v-bind:src="image2" alt=""/>
                            </div>
                            <h3>{{name2}}</h3>
                        </div>
                        <ul class="list-group text-center">
                            <li class="list-group-item">热量（千卡）：{{heat2}}</li>
                            <li class="list-group-item">碳水化合物（克）：{{carbohydrate2}}</li>
                            <li class="list-group-item">脂肪（克）：{{fat2}}</li>
                            <li class="list-group-item">蛋白质（克）：{{protein2}}</li>
                            <li class="list-group-item">纤维素（克）：{{cellulose2}}</li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 text-center" @click="foodDetail(name3)">
                    <div class="panel panel-pricing">
                        <div class="panel-heading">
                            <div class="pric-icon">
                                <img v-bind:src="image3" alt=""/>
                            </div>
                            <h3>{{name3}}</h3>
                        </div>
                        <ul class="list-group text-center">
                            <li class="list-group-item">热量（千卡）：{{heat3}}</li>
                            <li class="list-group-item">碳水化合物（克）：{{carbohydrate3}}</li>
                            <li class="list-group-item">脂肪（克）：{{fat3}}</li>
                            <li class="list-group-item">蛋白质（克）：{{protein3}}</li>
                            <li class="list-group-item">纤维素（克）：{{cellulose3}}</li>
                        </ul>
                    </div>
                </div>
                <!-- /item -->
            </div>
        </div>
        <!-- end row -->
    </div>
    <!-- end container -->
</div>
<!-- end pricing-main -->
<script>
    var vmNutrition = new Vue({
        el: "#nutrition",
        data: {
            name1: "", name2: "", name3: "",
            heat1: "", heat2: "", heat3: "",
            protein1: "", protein2: "", protein3: "",
            fat1: "", fat2: "", fat3: "",
            carbohydrate1: "", carbohydrate2: "", carbohydrate3: "",
            cellulose1: "", cellulose2: "", cellulose3: "",
            image1: "", image2: "", image3: "",
        },
        methods: {
            foodDetail: function (x) {
                window.location.href = '/HEALTH/foodDetail.jsp?name' + '=' + x;
            }
        },
        mounted: function () {
            $.ajax({
                url: "/HEALTH/ImageAcquisition/nutrition",
                type: "get",
                async: true,
                dataType: 'json',
                processData: false,
                contentType: false,
                success: function (data, textStatus) {
                    vmNutrition.name1 = data.obj1.name;
                    vmNutrition.name2 = data.obj2.name;
                    vmNutrition.name3 = data.obj3.name;
                    vmNutrition.heat1 = data.obj1.heat;
                    vmNutrition.heat2 = data.obj2.heat;
                    vmNutrition.heat3 = data.obj3.heat;
                    vmNutrition.protein1 = data.obj1.protein;
                    vmNutrition.protein2 = data.obj2.protein;
                    vmNutrition.protein3 = data.obj3.protein;
                    vmNutrition.fat1 = data.obj1.fat;
                    vmNutrition.fat2 = data.obj2.fat;
                    vmNutrition.fat3 = data.obj3.fat;
                    vmNutrition.carbohydrate1 = data.obj1.carbohydrate;
                    vmNutrition.carbohydrate2 = data.obj2.carbohydrate;
                    vmNutrition.carbohydrate3 = data.obj3.carbohydrate;
                    vmNutrition.cellulose1 = data.obj1.cellulose;
                    vmNutrition.cellulose2 = data.obj2.cellulose;
                    vmNutrition.cellulose3 = data.obj3.cellulose;
                    vmNutrition.image1 = "/HEALTH/images/food/food" + data.obj1.image + ".jpg";
                    vmNutrition.image2 = "/HEALTH/images/food/food" + data.obj2.image + ".jpg";
                    vmNutrition.image3 = "/HEALTH/images/food/food" + data.obj3.image + ".jpg";
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(textStatus);
                }
            });
        }
    })
</script>

<div id="footer" class="footer-main">
    <div class="footer-news pad-top-100 pad-bottom-70 parallax">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                        <h2 class="ft-title color-white text-center">意见箱</h2>
                        <p>请留下您宝贵的意见</p>
                    </div>
                    <form>
                        <input type="email">
                        <a href="#" class="orange-btn"></a>
                    </form>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end footer-news -->
    <div class="footer-box pad-top-70">
        <div class="container">
            <div class="row">
                <div class="footer-in-main">
                    <div class="footer-logo">
                        <div class="text-center">
                            <img src="images/logo.png" alt=""/>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="footer-box-a">
                            <h3>关于我们</h3>
                            <p>我们是四川大学软件学院2017级学生，在空闲时间学习了安卓与数据库知识，开发的这款健康膳食APP</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                        <div class="footer-box-b">
                            <h3>开发人员</h3>
                            <ul>
                                <li><a href="#">余坚</a></li>
                                <li><a href="#">陶航</a></li>
                                <li><a href="#">于广宇</a></li>
                                <li><a href="#">蔡飞扬</a></li>
                            </ul>
                        </div>
                        <!-- end footer-box-b -->
                    </div>
                    <!-- end col -->
                </div>
                <!-- end footer-in-main -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end footer-box -->
</div>
<!-- end footer-main -->

<a href="#" class="scrollup" style="display: none;">Scroll</a>

<section id="color-panel" class="close-color-panel">
    <a class="panel-button gray2"><i class="fa fa-cog fa-spin fa-2x"></i></a>
    <!-- Colors -->
    <div class="segment">
        <h4 class="gray2 normal no-padding">Color Scheme</h4>
        <a title="orange" class="switcher orange-bg"></a>
        <a title="strong-blue" class="switcher strong-blue-bg"></a>
        <a title="moderate-green" class="switcher moderate-green-bg"></a>
        <a title="vivid-yellow" class="switcher vivid-yellow-bg"></a>
    </div>
</section>

<!-- ALL JS FILES -->
<script src="js/all.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- ALL PLUGINS -->
<script src="js/custom.js"></script>
</body>

</html>