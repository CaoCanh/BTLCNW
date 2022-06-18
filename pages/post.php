<?php
$postSlug = $_GET['post'];

$post = $mysql->where('slug', $postSlug)->get('posts')[0];
if (!isset($post)) {
    exit("404 Not found. Go to <a href='/'>home page</a>");
}

?>

<article class="post" style="margin: 0 482px;">
    <h1>
        <?=$post['title']?>
    </h1>

    <div class="content" >
        <?=$post['content']?>
    </div>
</article>
