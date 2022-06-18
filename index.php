<?php
include('./layout/guess/header.php');
$categoryId = isset($_GET['category']) ? $_GET['category'] : false;
$postId = isset($_GET['post']) ? $_GET['post'] : false;

if ($categoryId) {
    include_once('./pages/category.php');
}

if ($postId) {
    include_once('./pages/post.php');
}

if (!$categoryId && !$postId) {
    include_once('./pages/index.php');
}

?>


<?php
include("./layout/guess/footer.php");
?>


