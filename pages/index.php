<div class="wrapper">
    <div class="container" style="margin: 0 482px;">
        <div class="row">
            <div class="col-7">
                <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active"
                                aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1"
                                aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2"
                                aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active" data-bs-interval="10000">
                            <img src="./assets/images/img/slideshow_1.jpg" style="height: 286px;" class="d-block w-100"
                                 alt="...">
                        </div>
                        <div class="carousel-item" data-bs-interval="2000">
                            <img src="./assets/images/img/slideshow_2.jpg" style="height: 286px;" class="d-block w-100"
                                 alt="...">
                        </div>
                        <div class="carousel-item">
                            <img src="./assets/images/img/slideshow_3.jpg" style="height: 286px;" class="d-block w-100"
                                 alt="...">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark"
                            data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark"
                            data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
                <div class="row" style="margin-top:20px">
                    <div class="col-4">
                        <a href="">
                            <img src="./assets/images/img/wrapper_1.jpg" style="max-width:210px; height:174px" alt="">
                            <h5 class="wrapper_content">Lời chào mừng</h5>
                        </a>
                        <a href="">
                            <img src="./assets/images/img/wrapper_3.jpg" style="max-width:210px; height:174px" alt="">
                            <h5 class="wrapper_content">Nghiên cứu khoa học</h5>
                        </a>
                    </div>
                    <div class="col-4" style="margin-left:-20px">
                        <a href="">
                            <img src="./assets/images/img/slideshow_2.jpg" style="max-width:210px; height:174px" alt="">
                            <h5 class="wrapper_content">Giảng viên</h5>
                        </a>
                        <a href="">
                            <img src="./assets/images/img/slideshow_4.jpg" style="width:210px; height:174px" alt="">
                            <h5 class="wrapper_content">Đào tạo</h5>
                        </a>
                    </div>
                    <div class="col-4" style="margin-left:-20px">
                        <a href="">
                            <img src="./assets/images/img/wrapper_5.jpg" style="max-width:272px; height:390px" alt="">
                            <h5 class="wrapper_content">Ảnh khoa CNTT</h5>
                        </a>
                    </div>
                </div>

            </div>
            <div class="col-2">
                <div class="wrapper_right_img">
                    <img src="https://scontent.xx.fbcdn.net/v/t39.30808-6/280587868_3164142950534507_6863859033883809220_n.jpg?stp=dst-jpg_p228x119&_nc_cat=111&ccb=1-7&_nc_sid=dd9801&_nc_ohc=B3ImUzqP0JsAX8fLQc0&_nc_ht=scontent.xx&edm=AA7a7sEEAAAA&oh=00_AT-OuoFUGqNcYPNz85et0NvDgDN11gtRdAiEUexIVkbq2Q&oe=62ACE542"
                         alt="">
                </div>
            </div>
        </div>

        <!-- <h1>Bài viết</h1>
        <div class="row">

            <?php
            $posts = $mysql->query("SELECT posts.*, categories.name FROM posts INNER JOIN categories ON posts.category = categories.id");

            foreach ($posts as $category) {
                ?>
                <a class="col-md-6 post" href="index.php?post=<?= $category['slug'] ?>">
                    <img src=" <?= $category['image'] ?>" alt=" <?= $category['title'] ?>" style="max-width: 300px"/>
                    <h3>
                        <?= $category['title'] ?>
                    </h3>

                    <p><?= $category['createdAt'] ?></p>

                </a>
                <?php
            }
            ?>
        </div> -->
    </div>

</div>
