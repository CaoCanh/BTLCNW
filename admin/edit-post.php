<?php
include('../layout/admin/header.php');
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$id = $_GET['id'];
$post = $mysql->where('id', $id)->get('posts');
if (!isset($post)) {
    header('Location: .post.php');
}


if (isset($_POST['title'])) {

    $title = $_POST['title'];
    $slug = $_POST['slug'];
    $content = $_POST['content'];
    $image = $_POST['image'];
    $category = $_POST['category'];

    $mysql->query("
            UPDATE `posts` SET `title`='{$title}',`slug`='{$slug}',`content`='{$content}',`image`='{$image}',`category`='{$category}' WHERE  id = {$id}
    ");

    echo "<script>alert('Da cap nhat');</script>";

}
?>


<div class="jumbotron text-center">
    <h1>Sua bai viet</h1>
    <p>Resize this responsive page to see the effect!</p>
</div>

<div class="container">

    <div class="panel panel-default">
        <div class="panel-heading">Cap nhat</div>
        <div class="panel-body">


            <form action="" method="post">
                <div class="form-group">
                    <label for="text">Tieu de:</label>
                    <input type="text" class="form-control" id="email" name="title" value="<?= $post[0]['title'] ?>">
                </div>

                <div class="form-group">
                    <label for="slug">Slug:</label>
                    <input type="text" class="form-control" id="slug" name="slug" placeholder="chuyen-muc" required
                           value="<?= $post[0]['slug'] ?>">
                </div>

                <div class="form-group">
                    <label for="slug">Noi dung:</label>
                    <textarea id="summernote" name="content">
                        <?= $post[0]['content'] ?>
                    </textarea>
                </div>

                <div class="form-group">
                    <label for="slug">Image:</label>
                    <input type="text" class="form-control" name="image" required value="<?= $post[0]['title'] ?>">
                </div>

                <div class="form-group">
                    <label for="sel1">Chuyen muc:</label>
                    <select class="form-control" id="sel1" name="category">
                        <?php
                        $categories = $mysql->get('categories');
                        foreach ($categories as $category) {
                            ?>
                            <option value="<?= $category['id'] ?>" <?= $category['id'] === $post[0]['category'] ? 'selected' : '' ?>>
                                <?= $category["name"] ?>
                            </option>
                            <?php
                        }
                        ?>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Cap nhat bai vet</button>
            </form>


        </div>
    </div>


</div>


<?php
include_once('../layout/admin/footer.php');
?>
