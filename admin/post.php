<?php
include('../layout/admin/header.php');
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);


// Create new category
if (isset($_POST['action']) && $_POST['action'] == 'create') {
    $title = $_POST['title'];
    $slug = $_POST['slug'];
    $content = $_POST['content'];
    $image = $_POST['image'];
    $category = $_POST['category'];


    if (!isset($error)) {
        $date = date('YYYY-MM-DD');
        $mysql->query("
INSERT INTO `posts`( `title`, `slug`, `content`, `image`, `category`, `createdAt`) 
VALUES ('{$title}','{$slug}','{$content}','{$image}','{$category}', NOW())
");
        echo "<script>alert('Tạo bài viết thàn công')</script>";
    }
}

if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $mysql->where('id', $id)->delete('posts');
    echo "<script>alert('Da xoa thanh cong')</script>";
}
?>


<div class="jumbotron text-center">
    <h1>Quan ly bai viet</h1>
    <p>Resize this responsive page to see the effect!</p>
</div>

<div class="container">

    <div class="panel panel-default">
        <div class="panel-heading">Create</div>
        <div class="panel-body">


            <form action="" method="post">
                <div class="form-group">
                    <label for="text">Tieu de:</label>
                    <input type="text" class="form-control" id="email" name="title">
                </div>

                <div class="form-group">
                    <label for="slug">Slug:</label>
                    <input type="text" class="form-control" id="slug" name="slug" placeholder="chuyen-muc" required>
                </div>

                <div class="form-group">
                    <label for="slug">Noi dung:</label>
                    <textarea id="summernote" name="content"></textarea>
                </div>

                <div class="form-group">
                    <label for="slug">Image:</label>
                    <input type="text" class="form-control" name="image" required>
                </div>

                <div class="form-group">
                    <label for="sel1">Chuyen muc:</label>
                    <select class="form-control" id="sel1" name="category">
                        <?php
                        $categories = $mysql->get('categories');
                        foreach ($categories as $category) {
                            ?>
                            <option value="<?= $category['id'] ?>"><?= $category["name"] ?></option>
                            <?php
                        }
                        ?>
                    </select>
                </div>
                <input type="hidden" name="action" value="create">
                <button type="submit" class="btn btn-primary">Tao bai vet</button>
            </form>


        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">List</div>
        <div class="panel-body">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>#ID</th>
                    <th>Name</th>
                    <th>Slug</th>
                    <th>category</th>
                    <th>Created At</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <?php
                $categories = $mysql->query("SELECT posts.*, categories.name FROM posts INNER JOIN categories ON posts.category = categories.id");

                foreach ($categories as $category) {
                    ?>
                    <tr>
                        <td><?= $category['id'] ?></td>
                        <td><?= $category['title'] ?></td>
                        <td><?= $category['slug'] ?></td>
                        <td><?= $category['name'] ?></td>
                        <td><?= $category['createdAt'] ?></td>
                        <td>
                            <a type="button" class="btn btn-info"
                               href="edit-post.php?id=<?= $category['id'] ?>">Sua</a>
                            <a type="button" class="btn btn-danger"
                               href="?delete=<?= $category['id'] ?>">Xoá</a>
                        </td>
                    </tr>
                    <?php
                }
                ?>
                </tbody>
            </table>
        </div>
    </div>


</div>


<?php
include_once('../layout/admin/footer.php');
?>
