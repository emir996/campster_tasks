<?php
if(!isset($_GET['id'])){
	header('Location: posts.php');
}
include_once 'MyClass.php';

$users = $my_class->getData('users');
if(empty($users)){
	header('Location: posts.php');
}

$id = $_GET["id"];

$post = $my_class->getDataById('posts',$id);
$user_created_by = $my_class->getDataById('users', $post["user_id"]);
?>
<html>

	<body>
		<form action="#" method="post">
			
			<label for="title">Title:</label>
			<input type="text" name="title" value="<?php echo $post["title"]; ?>" /><br/><br/>
			<label for="content">Content:</label>
			<textarea rows="13" cols="50" type="text" name="content"><?php echo $post["content"]; ?></textarea><br/><br/>
			
			<label for="users">Choose User</label>
			
			<select name="user">
				<?php foreach($users as $user) { ?>
					<option value="<?php echo $user["id"]; ?>"><?php echo $user['name']; ?></option>
				<?php } ?>
			</select><br/><br/>
			<input type="hidden" name="id" value="<?php echo $post["id"]; ?>" />
			<input type="submit" value="Update post" name="update_post_btn" />
		</form>
		<p>Created By: <?php echo $user_created_by["name"]; ?></p>
		<a href="posts.php">Back to posts</a>
	</body>
</html>