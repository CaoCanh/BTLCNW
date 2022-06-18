<?php
include('../layout/admin/header.php');
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
$id = $_GET['id'];
$category = $mysql->where('id', $id)->get('categories');
if (!isset($category)) {
    header('Location: admin/category.php');
}

if (isset($_POST['name'])) {
    $name = $_POST['name'];
    $slug = $_POST['slug'];
    $mysql->query("
    UPDATE `categories` SET `slug`='{$slug}',`name`='{$name}' WHERE id = {$id}
    ");

    echo "<script>alert('Da cap nhat'); window.location = '/admin/category.php';</script>";

}
?>

<div class="container">

    <div class="panel panel-default">
        <div class="panel-heading">Edit</div>
        <div class="panel-body">


            <form action="" method="post" enctype="multipart/form">
                <div class="form-group">
                    <label for="text">Tieu de:</label>
                    <input type="text" class="form-control" id="email" name="name" value="<?= $category[0]['name'] ?>">
                </div>

                <div class="form-group">
                    <label for="slug">Slug:</label>
                    <input type="text" class="form-control" id="slug" name="slug" placeholder="chuyen-muc" required
                           value="<?= $category[0]['slug'] ?>">
                </div>

                <button type="submit" class="btn btn-primary">Cap nhat</button>
            </form>


        </div>
    </div>


</div>


<?php
include_once('../layout/admin/footer.php');
?>
