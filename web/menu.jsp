<%--
  Created by IntelliJ IDEA.
  User: 11214
  Date: 2018/11/7
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>

    <!-- Behavioral Meta Data -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="icon" type="image/png" href="img/small-logo-01.png">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,900,900italic,700italic,700,500italic,400italic,500,300italic,300'
          rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
    <script src="js/vue.js"></script>
    <script src="js/jquery.js"></script>
    <style>

        img {
            vertical-align: bottom;
        }

        a {
            text-decoration: none;
        }

        ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        .object {
            transition: all 0.25s ease-in-out;
            -webkit-transition: all 0.25s ease-in-out; /** Chrome & Safari **/
            -moz-transition: all 0.25s ease-in-out; /** Firefox **/
            -o-transition: all 0.25s ease-in-out; /** Opera **/
        }

        /*----------------------------*/
        /* BODY SETTINGS */
        /*----------------------------*/

        body, html {
            padding: 0;
            margin: 0;
            background-color: #F4F4F4;
        }

        .cache {
            width: 100%;
            height: 100%;
            position: absolute;
            background-color: #FFF;
            z-index: 1000;
        }

        /*----------------------------*/
        /* CUSTOM SCROLLBAR  */
        /*----------------------------*/

        ::-webkit-scrollbar {
            width: 9px;
        }

        ::-webkit-scrollbar-track {
            background: #eee;
            border: thin solid lightgray;
            box-shadow: 0px 0px 3px rgba(0, 0, 0, 0.1) inset;
        }

        ::-webkit-scrollbar-thumb {
            background: #999;
            border: thin solid gray;
        }

        /*----------------------------*/
        /* HEADER BLACK TOP WITH LOGO */
        /*----------------------------*/

        #wrapper-header {
            float: left;
            width: 105%;
            height: 65px;
            background-color: #2E2D30;
            opacity: 0;
        }

        #main-header {
            position: relative;
            width: 1200px;
            left: 50%;
            margin-left: -600px;
            height: auto;
        }

        #logo img {
            height: 100%;
            width: 100%;
        }

        #bouton-ai img, #bouton-psd img, #bouton-photo img, #bouton-font img, #bouton-theme img, #bouton-premium img {
            width: 100%;
            height: 100%;
        }

        #wrapper-container {
            float: left;
            width: 100%;
            height: auto;
        }

        .container, .container-footer {
            position: relative;
            width: 1200px;
            margin-left: -600px;
            left: 50%;
        }

        #main-container-image {
            float: left;
            width: 100%;
            height: auto;
            background-color: #F4F4F4;
            margin-top: 25px;
            opacity: 0;

        }

        .work figure-single {
            float: left;
            width: 60%;
            margin-left: 7.5%;
            height: auto;
            padding: 0 !important;
            transition: all 0.3s ease-in-out;
            -webkit-transition: all 0.3s ease-in-out;
            -moz-transition: all 0.3s ease-in-out;
            -o-transition: all 0.3s ease-in-out;
            -ms-transition: all 0.3s ease-in-out;
            -webkit-box-shadow: 1px 1px 2px 0px rgba(0, 0, 0, 0.2);
            -moz-box-shadow: 1px 1px 2px 0px rgba(0, 0, 0, 0.2);
            box-shadow: 1px 1px 2px 0px rgba(0, 0, 0, 0.2);
            background-color: #FFF;
        }

        .work figure-single img {
            height: 95%;
            width: 95%;
            margin-left: 2.5%;
            margin-top: 2.5%;
        }

        #wrapper-part-info .part-info-image img {
            height: 20%;
            width: 20%;
        }

        .wrapper-text-description {
            position: absolute;
            width: 20%;
            right: 7.5%;
            height: auto;
            margin-top: 85px;
        }

        .wrapper-view, .wrapper-file, .wrapper-weight, .wrapper-desc, .wrapper-download {
            float: left;
            width: 100%;
            border-bottom: solid #E0E0E0 1px;
        }

        .wrapper-file, .wrapper-weight, .wrapper-desc, .wrapper-download {
            border-top: solid #FFF 1px;
        }

        .wrapper-morefrom {
            float: left;
            width: 100%;
            border-top: solid #FFF 1px;
        }

        .wrapper-view, .wrapper-file, .wrapper-weigh, .wrapper-download, .wrapper-morefrom {
            height: auto;;
        }

        .wrapper-desc, .wrapper-morefrom {
            height: auto;
        }

        .icon-view, .icon-file, .icon-weight, .icon-desc, .icon-download {
            float: left;
            left: 0;
            margin-right: 25px;
            font-family: "楷体";
            color: #A1A1A1;
        }

        .icon-view {
            margin-top: 10px;
        }

        .icon-file {
            margin-top: 9px;
            margin-left: 2px;
        }

        .icon-weight {
            margin-top: 8px;
            margin-left: 2px;
        }

        .icon-desc {
            margin-top: 7px;
        }

        .icon-view img, .icon-file img, .icon-weight img, .icon-desc img, .icon-download img {
            height: 100%;
            width: 100%;
        }

        .text-view, .text-file, .text-weight, .text-desc, .text-download {
            float: left;
            text-align: left;
            font-family: Helvetica, sans-serif;
            font-size: 15px;
            font-weight: 400;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            color: #A1A1A1;
        }

        .text-view, .text-file, .text-weight, .text-download {
            width: calc(100% - 49px);
            line-height: 130%;
            height: auto;
            margin-bottom: 25px;
            margin-top: 10px;
        }

        .text-desc {
            width: calc(100% - 49px);
            line-height: 130%;
            height: auto;
            margin-bottom: 25px;
            margin-top: 10px;
        }

        .text-download a {
            color: #A1A1A1;
            transition: all 0.2s ease-in-out;
            -webkit-transition: all 0.2s ease-in-out;
            -moz-transition: all 0.2s ease-in-out;
            -o-transition: all 0.2s ease-in-out;
        }

        .text-download a:hover {
            color: #666;
        }

        .text-morefrom {
            float: left;
            text-align: left;
            font-family: Helvetica, sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            font-size: 16px;
            font-weight: 600;
            color: #686868;
            width: 100%;
            margin-left: 0;
            line-height: 130%;
            height: auto;
            margin-bottom: 0;
            margin-top: 20px;
        }

        .image-morefrom-1 img, .image-morefrom-2 img, .image-morefrom-3 img, .image-morefrom-4 img {
            width: 85%;
            height: auto;
            margin-left: 7.5%;
            padding-bottom: 7.5%;
            padding-top: 7.5%;
        }

        textarea {
            font-family: Helvetica, sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            font-size: 16px;
            font-weight: 400;
            color: #999;
            width: 320px;
            height: 150px;
            background: #FFF;
            outline: none;
            border: solid 1px #DDDDDD;
            border-radius: 4px;
            padding-left: 10px;
            padding-top: 10px;
            float: left;
            margin-left: -15px;
            margin-top: -25px;
        }

        input[type=submit] {
            font-family: Helvetica, sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            font-size: 16px;
            font-weight: 600;
            color: #FFF;
            cursor: pointer;
            width: 150px;
            height: 40px;
            padding: 5px 10px;
            border-radius: 4px;
            transition: all 0.5s ease-in-out;
            -webkit-transition: all 0.5s ease-in-out; /** Chrome & Safari **/
            -moz-transition: all 0.5s ease-in-out; /** Firefox **/
            -o-transition: all 0.5s ease-in-out; /** Opera **/
            background-color: #74BDEC;
            float: left;
            border: none;
        }

        fieldset {
            border: none;
        }

        textarea {
            resize: vertical;
            max-height: 100px;
            min-height: 100px;
        }

        textarea {
            color: #999;
        }

        textarea:-moz-placeholder {
            color: #999;
        }

        textarea::-webkit-input-placeholder {
            color: #999;
        }

        textarea.placeholder {
            color: #999;
        }

        .title-item {
            float: left;
            width: 92.5%;
            margin-left: 7.5%;
            height: 68px;
            margin-bottom: 10px;
        }

        .title-icon {
            float: left;
            width: 68px;
            height: 68px;
            background: url(css/list/img/title-icon-ps.svg) no-repeat;
            margin-right: 20px;
        }

        .title-text {
            font-family: Helvetica, sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            font-size: 22px;
            font-weight: 600;
            color: #686868;
            line-height: 125%;
            height: auto;
            width: calc(100% - 88px);
            margin-top: 8px;
        }

        .title-text1 {
            font-family: Helvetica, sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            font-size: 15px;
            font-weight: 600;
            color: #686868;
            line-height: 125%;
            height: auto;
            width: calc(100% - 88px);
            margin-top: 8px;
        }

        .title-text-2 {
            font-family: Helvetica, sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            font-size: 15px;
            font-weight: 400;
            color: #A1A1A1;
            line-height: 125%;
            height: auto;
            width: calc(100% - 88px);
            margin-top: 8px;
        }

        /*----------------------------*/
        /* BIG TITLE RESSOURCE FOR THE HIDDEN MENU */
        /*----------------------------*/

        #main-premium-ressource, #main-themes, #main-psd, #main-ai, #main-font, #main-photo {
            float: left;
            width: 100%;
            min-height: 36px;

        }

        .premium-ressource, .themes, .psd, .ai, .font, .photo {
            position: relative;
            text-align: center;
            font-family: Helvetica, sans-serif;
            font-size: 16px;
            font-weight: 400;
            height: 36px;
            line-height: 36px;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        .premium-ressource a, .themes a, .psd a, .ai a, .font a, .photo a {
            transition: all 0.2s ease-in-out;
            -webkit-transition: all 0.2s ease-in-out;
            -moz-transition: all 0.2s ease-in-out;
            -o-transition: all 0.2s ease-in-out;
        }

        .premium-ressource a, .themes a, .psd a, .photo a, .font a, .ai a {
            color: #999;
        }

        .premium-ressource a:hover {
            color: #CCC;
        }

        .themes a:hover {
            color: #66CC7A;
        }

        .psd a:hover {
            color: #2B9ED8;
        }

        .photo a:hover {
            color: #56514C;
        }

        .font a:hover {
            color: #B88DFF;
        }

        .ai a:hover {
            color: #FF9000;
        }

        /*----------------------------*/
        /* THX PART AND OLDNEW   */
        /*----------------------------*/

        #wrapper-thank {
            float: left;
            width: 100%;
            height: 190px;
            background-color: #F2F2F2;
            margin-top: 40px;
        }

        #wrapper-oldnew {
            float: left;
            width: 100%;
            height: 80px;
            background-color: #F4F4F4;
            margin-top: 50px;
        }

        .thank, .oldnew {
            position: relative;
            width: 1200px;
            left: 50%;
            margin-left: -600px;
            height: 100%;
            top: 0;
        }

        .thank-text {
            float: left;
            text-align: center;
            font-family: 'Pacifico', cursive;
            font-size: 70px;
            height: 190px;
            line-height: 190px;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            color: #B3B3B3;
            font-weight: 400;
            width: 100%;
        }

        /*----------------------------*/
        /* FOOTER */
        /*----------------------------*/

        #main-container-footer {
            float: left;
            width: 100%;
            height: auto;
            background-color: #F9F9F9;
            border-top: solid #F1F1F1 1px;
            -webkit-box-shadow: 0px 0px 2px 0px rgba(0, 0, 0, 0.1);
            -moz-box-shadow: 0px 0px 2px 0px rgba(0, 0, 0, 0.1);
            box-shadow: 0px 0px 2px 0px rgba(0, 0, 0, 0.1);

        }

        #row-1f, #row-2f, #row-3f, #row-4f {
            float: left;
            width: calc(100% / 4);
            height: auto;
        }

        .text-row-1f, .text-row-2f, .text-row-3f, .text-row-4f {
            float: left;
            text-align: left;
            height: 140%;
            line-height: 140%;
            margin-left: 20px;
            width: 80%;
            text-align: left;
            font-family: Helvetica, sans-serif;
            font-size: 14px;
            font-weight: 400;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            color: #A1A1A1;
            margin-top: 80px;
        }

        .text-row-1f, .text-row-2f, .text-row-3f {
            margin-bottom: 100px;
        }

        /*----------------------------*/
        /* NEWSLETTER*/
        /*----------------------------*/

        #main_tip_newsletter {
            float: left;
            width: 100%;
            height: auto;
            margin-top: 20px;
        }

        #main_tip_search {
            float: right;
            width: 170px;
            margin-top: 13px;
            height: auto;
            margin-right: 25px;
            display: block;
        }

        #wrapper-copyright {
            float: left;
            width: 100%;
            height: 70px;
            background-color: #2E2D30;
        }

        .copyright {
            position: relative;
            width: 1200px;
            left: 50%;
            margin-left: -600px;
            height: 100%;
            top: 0;
        }

        .copy-text {
            float: left;
            text-align: left;
            font-family: 'Roboto', sans-serif;
            font-size: 15px;
            height: 70px;
            line-height: 70px;
            cursor: pointer;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            color: #666;
            margin-left: 15px;
            font-weight: 500;
        }

        .wrapper-navbouton {
            position: absolute;
            height: 100%;
            right: 0;
        }

        .google, .facebook, .dribbble, .linkin {
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            text-align: right;
            font-family: 'socialicoregular';
            font-size: 44px;
            height: 70px;
            line-height: 70px;
            float: right;
            opacity: 0.5;
            cursor: pointer;
            float: right;
            color: #666;
            opacity: 1;
        }

        .dribbble, .facebook, .linkin, .google {
            padding-right: 20px;
        }

        .dribbble, .facebook, .linkin {
            padding-right: 12px;
        }

        .linkin:hover, .google:hover, .facebook:hover, .dribbble:hover {
            color: #CCC;
            transform: scale(1.2);
        }

        /*----------------------------*/
        /* RWD */
        /*----------------------------*/

        /* Others wide screen -2 */

        @media only screen and (max-width: 2000px) {
            #main-container-menu {
                display: none;
            }
        }

        /* Others wide screen */

        @media only screen and (max-width: 1200px) {
            #main-header, .navbar, .container, .container-footer, .thank, .oldnew, .copyright {
                width: 940px;
                margin-left: -465px;
            }

            #main-container-menu {
                display: none;
            }
        }

        /* Small viewports — Old monitors, netbooks, tablets (landscape), etc. */

        @media only screen and (max-width: 965px) {
            #main-header, .navbar, .container, .container-footer, .thank, .oldnew, .copyright {
                width: 835px;
                margin-left: -417.5px;
            }

            #main-container-menu {
                display: none;
            }

            #row-1f, #row-2f, #row-3f, #row-4f {
                width: 100%;
            }

            .text-row-1f, .text-row-2f, .text-row-3f, .text-row-4f {
                text-align: center;
                width: 70%;
                margin-left: 15%;
            }

            .text-row-1f {
                margin-top: 75px;
                margin-bottom: 35px;
            }

            .text-row-4f {
                margin-top: 0;
                margin-bottom: 0;
            }

            .text-row-2f, .text-row-3f {
                margin-bottom: 35px;
                margin-top: 0;
            }

            #tip_newsletter_input {
                position: relative;
                left: 50%;
                margin-left: -112.5px;
                margin-bottom: 75px;
            }

            .work figure, .post-reply, .post-reply-2, .title-item, .post-send {
                margin-left: 15px;
            }

            .wrapper-text-description {
                right: 15px;
                width: 30%;
            }

        }

        /* Smaller viewports — more tablets, old monitors */

        @media only screen and (max-width: 860px) {
            #main-header, .navbar, .container, .container-footer, .thank, .oldnew, .copyright {
                width: 715px;
                margin-left: -357.5px;
            }

            #main-container-menu {
                display: none;
            }

            .part-info-image-single {
                margin-bottom: 11px;
            }

        }

        /* Even smaller viewports — more tablets, etc. */

        @media only screen and (max-width: 740px) {
            #main-header, .navbar, .container, .container-footer, .thank, .oldnew, .copyright {
                width: 585px;
                margin-left: -292.5px;
            }

            #wrapper-bouton-icon, #main_tip_search, #text-search {
                display: none;
            }

            #stripes {
                display: block;
            }

            #main-container-menu {
                display: block;
            }

            .work figure {
                width: calc(100% - 30px);
                margin-left: 15px;
            }

            .wrapper-text-description {
                width: calc(100% - 30px);
                float: left;
                position: relative;
                right: 0;
                margin-left: 15px;
                margin-top: 25px;
            }

            .image-morefrom-1 img, .image-morefrom-2 img, .image-morefrom-3 img, .image-morefrom-4 img {
                width: 90%;
                height: auto;
                margin-left: 5%;
                padding-bottom: 5%;
                padding-top: 5%;
            }

            .post-send, .post-reply, .post-reply-2 {
                width: calc(100% - 30px);
                margin-left: 15px;
            }
        }

        /* Mobile phones (Landscape) and Tablets (Portrait) */

        @media only screen and (max-width: 610px) {
            #main-header, .navbar, .container, .container-footer, .thank, .oldnew, .copyright {
                width: 455px;
                margin-left: -227.5px;
            }

            #wrapper-sorting {
                position: relative;
                width: 300px;
                left: 50%;
                margin-left: -165px;
            }

            .top-rated, .recent, .oldies {
                text-align: center;
                font-family: 'Roboto', sans-serif;
                font-size: 13px;
                height: 40px;
                line-height: 40px;
                margin-left: 25px;
            }

            .part-info-image-single {
                float: left;
                margin-bottom: 17px;
            }

            #wrapper-part-info .part-info-image img {
                height: 92%;
                width: 92%;
                margin-left: 4%;
            }

            .work figure img {
                height: 92%;
                width: 92%;
                margin-left: 4%;
                margin-top: 4%;
            }

        }

        /* Mobile phones (Landscape) and Tablets (Portrait) */

        @media only screen and (max-width: 480px) {
            #main-header, .navbar, .container, .container-footer, .thank, .oldnew, .copyright {
                width: 295px;
                margin-left: -147.5px;
            }

            .work figure {
                width: calc(100% - 30px);
            }

            .wrapper-navbouton {
                display: none;
            }

            .copy-text {
                text-align: center;
                width: 100%;
            }

            .thank-text {
                font-size: 50px;
            }

            .title-item {
                width: calc(100% - 30px);
                margin-left: 15px;
            }

            .title-icon {
                margin-right: 10px;
            }

            .title-text {
                font-size: 22px;
                width: 100%;
                margin-top: 8px;
            }

            .part-info-image-single {
                float: left;
                margin-bottom: 15px;
            }

            #wrapper-part-info .part-info-image img {
                height: 90%;
                width: 90%;
                margin-left: 5%;
            }

            .work figure img {
                height: 90%;
                width: 90%;
                margin-left: 5%;
                margin-top: 5%;
            }

            .name-reply-post, .name-reply-post-2 {
                width: calc(100% - 75px);
                padding-left: 10px;
            }

            .text-reply-post, .text-reply-post-2 {
                margin-left: 15px;
                width: calc(100% - 30px);
                padding-top: 0;
                padding-left: 0;
                padding-right: 0;
                padding-bottom: 25px;
                margin-top: 20px;
            }

            .post-reply-2 {
                margin-top: 25px;
            }

            #main-post-send {
                width: calc(100% - 30px);
                margin-left: 15px;
            }

            textarea {
                width: calc(100% + 15px);
            }
        }

        /* Mobile phones (iphone4/5)*/

        @media only screen and (max-width: 320px) {

        }

        <%
            request.setCharacterEncoding("UTF-8");
        %>


    </style>

</head>

<body>

<a name="ancre"></a>

<!-- CACHE -->
<div class="cache"></div>

<!-- HEADER -->

<div id="wrapper-header">
    <div id="main-header" class="object">
        <div align="center" style="margin-top: 15px;">
        </div>
    </div>
</div>

<!-- PORTFOLIO -->

<div id="wrapper-container">

    <div class="container object">

        <div id="main-container-image">

            <div class="title-item">
                <div class="title-text">{{name}}</div>
            </div>


            <div class="work">
                <figure class="white">
                    <img v-bind:src="image" style="width: 90%; height: 300px"/>
                </figure>

                <div class="wrapper-text-description">
                    <div class="wrapper-view">
                        <div class="icon-view">描述</div>
                        <div class="text-view" v-html="description">{{description}}</div>
                    </div>

                    <div class="wrapper-file">
                        <div class="icon-file">具体步骤</div>
                        <div class="text-file" v-html="method">{{method}}</div>
                    </div>

                    <div class="wrapper-weight">
                        <div class="icon-weight">所需食材</div>
                        <div class="text-weight" v-html="food">{{food}}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        var vm = new Vue({
            el: "#main-container-image",
            data: {
                name: "",
                method: "",
                food: "",
                description: "",
                image: "",
            },
            mounted: function () {
                $.ajax({
                    url: "/HEALTH/Detail/menu?name=" + '<%=request.getParameter("name")%>',
                    type: "post",
                    async: true,
                    dataType: 'json',
                    processData: false,
                    contentType: false,
                    success: function (data, textStatus) {
                        vm.name = data.name;
                        vm.description = data.description;
                        vm.food = data.food;
                        vm.method = data.method;
                        vm.image = "/HEALTH/images/menu/menu" + data.id + ".jpg";
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert(textStatus);
                    }
                });
            }
        })
    </script>


    <div id="main-container-footer">
        <div class="container-footer">
        </div>
    </div>


    <div id="wrapper-copyright">

    </div>

</div>


<!-- SCRIPT -->

<script src="https://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.scrollTo.min.js"></script>
<script type="text/javascript" src="js/jquery.localScroll.min.js"></script>
<script type="text/javascript" src="js/jquery-animate-css-rotate-scale.js"></script>
<script type="text/javascript" src="js/fastclick.min.js"></script>
<script type="text/javascript" src="js/jquery.flip.min.js"></script>
<script type="text/javascript" src="js/jquery.animate-colors-min.js"></script>
<script type="text/javascript" src="js/jquery.animate-shadow-min.js"></script>

<script>


    $(document).ready(function () {
        $.localScroll();
        $(".cache").delay(1000).fadeOut(500);

        $("#wrapper-header").delay(1500).animate({opacity: '1', width: '100%'}, 500);
        $("#wrapper-navbar").delay(2000).animate({opacity: '1', height: '60px'}, 500);

        $("#main-container-image").delay(2500).animate({opacity: '1'}, 500);

    });

    /*TRANSITION PAGE*/

    var speed = 'slow';

    $('html, body').hide();

    $(document).ready(function () {
        $('html, body').fadeIn(speed, function () {
            $('a[href], button[href]').click(function (event) {
                var url = $(this).attr('href');
                if (url.indexOf('#') == 0 || url.indexOf('javascript:') == 0) return;
                event.preventDefault();
                $('html, body').fadeOut(speed, function () {
                    window.location = url;
                });
            });
        });
    });

    /* DISABLE HOVER EFFECT WHILE YOU SCROLL FOR A SMOOTHY NAVIGATION */

    var body = document.body,
        timer;

    window.addEventListener('scroll', function () {

        clearTimeout(timer);

        if (!body.classList.contains('disable-hover'))
            body.classList.add('disable-hover')

        timer = setTimeout(function () {
            body.classList.remove('disable-hover')
        }, 200);

    }, false);

    /* BOUTON MENU */

    $(document).on('touchstart mouseover', '#stripes', function (event) {

        event.stopPropagation();
        event.preventDefault();
        if (event.handled !== true) {

            $("#stripes").stop().animate({scale: '1.2', opacity: '0.5'}, 300);

            event.handled = true;
        } else {
            return false;
        }
    });

    $(document).on('touchend mouseout', '#stripes', function (event) {

        event.stopPropagation();
        event.preventDefault();
        if (event.handled !== true) {

            $("#stripes").stop().animate({scale: '1', opacity: '1'}, 300);

            event.handled = true;
        } else {
            return false;
        }
    });

    $(document).on('touchstart mouseover', '#cross-menu', function (event) {

        event.stopPropagation();
        event.preventDefault();
        if (event.handled !== true) {

            $("#cross-menu").stop().animate({scale: '1.2', opacity: '0.5'}, 300);

            event.handled = true;
        } else {
            return false;
        }
    });

    $(document).on('touchend mouseout', '#cross-menu', function (event) {

        event.stopPropagation();
        event.preventDefault();
        if (event.handled !== true) {

            $("#cross-menu").stop().animate({scale: '1', opacity: '1'}, 300);

            event.handled = true;
        } else {
            return false;
        }
    });

    $(document).on('touchstart mouseover', '#wrapper-title-2', function (event) {

        event.stopPropagation();
        event.preventDefault();
        if (event.handled !== true) {

            $("#fleche-nav-2").stop().animate({rotate: '90deg', opacity: '1'}, 300);

            event.handled = true;
        } else {
            return false;
        }
    });

    $(document).on('touchend mouseout', '#wrapper-title-2', function (event) {

        event.stopPropagation();
        event.preventDefault();
        if (event.handled !== true) {

            $("#fleche-nav-2").stop().animate({rotate: '0deg', opacity: '0.5'}, 300);

            event.handled = true;
        } else {
            return false;
        }
    });

    /* BOUTON MENU ARROW-3 */

    $(document).on('touchstart mouseover', '#wrapper-title-3', function (event) {

        event.stopPropagation();
        event.preventDefault();
        if (event.handled !== true) {

            $("#fleche-nav-3").stop().animate({rotate: '90deg', opacity: '1'}, 300);

            event.handled = true;
        } else {
            return false;
        }
    });

    $(document).on('touchend mouseout', '#wrapper-title-3', function (event) {

        event.stopPropagation();
        event.preventDefault();
        if (event.handled !== true) {

            $("#fleche-nav-3").stop().animate({rotate: '0deg', opacity: '0.5'}, 300);

            event.handled = true;
        } else {
            return false;
        }
    });

    /* BOUTON MENU */

    $(document).on('touchstart mouseover', '#stripes', function (event) {

        event.stopPropagation();
        event.preventDefault();
        if (event.handled !== true) {

            $("#stripes").stop().animate({scale: '1.2', opacity: '0.5'}, 300);

            event.handled = true;
        } else {
            return false;
        }
    });

    $(document).on('touchend mouseout', '#stripes', function (event) {

        event.stopPropagation();
        event.preventDefault();
        if (event.handled !== true) {

            $("#stripes").stop().animate({scale: '1', opacity: '1'}, 300);

            event.handled = true;
        } else {
            return false;
        }
    });

    /* BOUTON NEXT */

    $(document).on('touchstart mouseover', '#oldnew-next', function (event) {

        event.stopPropagation();
        event.preventDefault();
        if (event.handled !== true) {

            $("#oldnew-next").stop().animate({scale: '1.2', opacity: '0.5'}, 300);

            event.handled = true;
        } else {
            return false;
        }
    });

    $(document).on('touchend mouseout', '#oldnew-next', function (event) {

        event.stopPropagation();
        event.preventDefault();
        if (event.handled !== true) {

            $("#oldnew-next").stop().animate({scale: '1', opacity: '1'}, 300);

            event.handled = true;
        } else {
            return false;
        }
    });

    /* BOUTON PREV */

    $(document).on('touchstart mouseover', '#oldnew-prev', function (event) {

        event.stopPropagation();
        event.preventDefault();
        if (event.handled !== true) {

            $("#oldnew-prev").stop().animate({scale: '1.2', opacity: '0.5'}, 300);

            event.handled = true;
        } else {
            return false;
        }
    });

    $(document).on('touchend mouseout', '#oldnew-prev', function (event) {

        event.stopPropagation();
        event.preventDefault();
        if (event.handled !== true) {

            $("#oldnew-prev").stop().animate({scale: '1', opacity: '1'}, 300);

            event.handled = true;
        } else {
            return false;
        }
    });


    /* BOUTON PREV */

    $(document).on('touchstart mouseover', '#logo', function (event) {

        event.stopPropagation();
        event.preventDefault();
        if (event.handled !== true) {

            $("#logo").stop().animate({scale: '1.1', opacity: '0.5'}, 300);

            event.handled = true;
        } else {
            return false;
        }
    });

    $(document).on('touchend mouseout', '#logo', function (event) {

        event.stopPropagation();
        event.preventDefault();
        if (event.handled !== true) {

            $("#logo").stop().animate({scale: '1', opacity: '1'}, 300);

            event.handled = true;
        } else {
            return false;
        }
    });


    /*FORMULAIRE NEWSLETTER*/

    $("form").on("submit", function (event) {
        event.preventDefault();
        $.post("/burstfly/form-burstfly-modified.asp", $("form").serialize(), function (data) {//alert(data);
        });
    });

</script>


</body>


</html>