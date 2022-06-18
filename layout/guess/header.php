<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./assets/css/style.css">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
          crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
</head>
<body>

<?php
include_once('helper/mysql.php');
$mysql = new MysqliDb('localhost', 'root', '', 'btl_blogkcntt');
?>
<div class="container-full">
    <div class="header">
        <div class="globalnav">
            <div class="container">
                <div class="header_top">
                    <div class="label">
                        <a href="" class="ul_link_white">Trường đại học Thủy Lợi - TLU</a>
                    </div>
                    <ul class="list_top">
                        <li>(+) |</li>
                        <li>
                            <div id="dnn_dnnLogin_loginGroup" class="loginGroup">
                                <a id="dnn_dnnLogin_enhancedLoginLink" title="Login" class="LoginLink" rel="nofollow"
                                   onclick="return dnnModal.show('http://cse.tlu.edu.vn/Login?returnurl=/&amp;popUp=true',/*showReturn*/true,300,650,true,'')"
                                   href="./admin/login.php">Login</a>
                            </div>
                        </li>
                        <li>|</li>
                        <li>
                        </li>
                        <li>|</li>
                        <li class="language">
                            <span class="language-text"> Ngôn ngữ: &nbsp;&nbsp;&nbsp;&nbsp;</span>
                            <a href="#" title="Tiếng Việt" class="ui-link-white lang-vi"><img
                                        src="./assets/images/icons/icon-lang-vi.png" alt="Tiếng Việt"></a>
                            <a href="#" title="Tiếng Anh" class="ui-link-white lang-en"><img
                                        src="http://cse.tlu.edu.vn/cse/assets/images/icons/icon-lang-en.png"
                                        alt="Tiếng Anh"></a>
                        </li>
                        <form class="d-flex" role="search">
                            <input class="header_seach" type="search" placeholder="Tìm kiếm" aria-label="Search">
                            <input type="submit" name="dnn$ctr681$ViewCMSSearch$ctl00$btnSearch" value="Tìm"
                                   id="dnn_ctr681_ViewCMSSearch_ctl00_btnSearch" class="searchbutton">
                        </form>
                    </ul>
                    <div class="container_search">

                    </div>
                </div>
            </div>
        </div>
        <div class="navtop">
            <div class="container" style="margin: 0 482px; margin-top:29px;">
                <div class="header_logo">
                    <a href="#">
                        <img src="/assets/images/icons/logo.png" alt="">
                    </a>
                </div>

                <div class="header_menu">
                    <ul class="header_menu_list">
                        <li>
                            <a href="./index.php">Trang chủ</a>
                        </li>

                        <?php
                        $categories = $mysql->get('categories');
                        foreach ($categories as $category) {
                            ?>
                            <li>
                                <a href="./index.php?category=<?= $category['slug'] ?>"><?= $category['name'] ?></a>
                            </li>
                            <?php
                        }
                        ?>
                        <li id=" menu_list_contac">
                            <a href="">Liên hệ</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
