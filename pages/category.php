<?php
$categorySlug = $_GET['category'];

$cat = $mysql->where('slug', $categorySlug)->get('categories')[0];

if (!isset($cat)) {
    exit("404 Not found. Go to <a href='/'>home page</a>");
}

?>
<div class="container" style="margin: 0 482px;">
    <div class="category">
        <h1>
            Chuyên mục: <?= $cat['name'] ?>
        </h1>

        <div class="content">
            <div class="row">

                <?php
                $posts = $mysql->where('category', $cat['id'])->get('posts');

                if (count($posts) == 0 ) {
                    echo "<h3 class='category-empty'>
                ko co bai viet
    </h3>";
                }
                foreach ($posts as $category) {
                    ?>
                    <a class="col-md-4 post" href="index.php?post=<?= $category['slug'] ?>">
                        <img src=" <?= $category['image'] ?>" alt=" <?= $category['title'] ?>" style="max-width: 300px" />
                        <h3>
                            <?= $category['title'] ?>
                        </h3>

                        <p><?= $category['createdAt'] ?></p>

                    </a>
                    <?php
                }
                ?>
            </div>
        </div>
    </div>   
</div>

