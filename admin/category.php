<?php
include('../layout/admin/header.php');
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);


// Create new category
if (isset($_POST['action']) && $_POST['action'] == 'create') {
    $name = $_POST['name'];
    $slug = $_POST['slug'];


    if (!isset($error)) {
        $date = date('YYYY-MM-DD');

        $data = array(
            "slug" => $slug,
            "name" => $name,
            "date" => $date,
        );
        //
        //        $id = $db->insert('users', $data);
        //
        $category = $mysql->query("INSERT INTO `categories`(`slug`, `name`, `createdAt`) VALUES ('{$slug}','{$name}', NOW())");

        echo "INSERT INTO `categories`(`slug`, `name`, `createdAt`) VALUES ('{$slug}','{$name}',NOW())";
        //        $mysql->insert('categories', );

        echo "<script>alert('Tạo chuyên mục thành công')</script>";
    }
}

if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    $mysql->where('id', $id)->delete('categories');
    echo "<script>alert('Da xoa thanh cong')</script>";
}
?>

<div class="jumbotron text-center">
    <h1>Quan ly chuyen muc</h1>
    <p>Resize this responsive page to see the effect!</p>
</div>

<div class="container">

    <div class="panel panel-default">
        <div class="panel-heading">Create</div>
        <div class="panel-body">


            <form action="" method="post">
                <div class="form-group">
                    <label for="text">Tieu de:</label>
                    <input type="text" class="form-control" id="email" name="name">
                </div>

                <div class="form-group">
                    <label for="slug">Slug:</label>
                    <input type="text" class="form-control" id="slug" name="slug" placeholder="chuyen-muc" required>
                </div>

                <input type="hidden" name="action" value="create">
                <button type="submit" class="btn btn-primary">Tao chuyen muc</button>
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
                    <th>Created At</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <?php
                $categories = $mysql->get('categories');
                foreach ($categories as $category) {
                    ?>
                    <tr>
                        <td><?= $category['id'] ?></td>
                        <td><?= $category['name'] ?></td>
                        <td><?= $category['slug'] ?></td>
                        <td><?= $category['createdAt'] ?></td>
                        <td>
                            <a type="button" class="btn btn-info"
                               href="edit-category.php?id=<?= $category['id'] ?>">Sua</a>
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
