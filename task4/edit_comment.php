<?php
if(!isset($_GET['id'])){
	header('Location: comments.php');
}
include_once 'MyClass.php';

$users = $my_class->getData('users');
$posts = $my_class->getData('posts');
if(empty($users)){
	header('Location: comments.php');
}

$id = $_GET["id"];
$comment = $my_class->getDataById('comments', $id);
$post = $my_class->getDataById('posts', $comment["post_id"]);
$user_created_by = $my_class->getDataById('users', $comment["user_id"]);
?>

<html>

	<body>
		<form action="#" method="post">
			
			<label for="content">Content:</label>
			<textarea rows="13" cols="50" type="text" name="content"><?php echo $comment["content"]; ?></textarea><br/><br/>
			
			<label for="users">Choose Post</label>
			
			<input type="hidden" name="id" value="<?php echo $comment["id"]; ?>" />
			<input type="submit" value="Update comment" name="update_comment_btn" />
		</form>
		<p>Commented on post: <?php echo $post["title"]; ?></p>
		<p>Commented by: <?php echo $user_created_by["name"]; ?> time: <?php echo $comment["created_at"]; ?></p>
		<a href="comments.php">Back to comments</a>
	</body>
</html>