<?php 
include_once 'MyClass.php'
?>
<html>
	<body>
		<p>Create Post</p>
		
		<form action="#" method="post">
			<label for="title">Title:</label>
			<input type="text" name="title" /><br/><br/>
			<label for="content">Content:</label>
			<textarea type="text" name="content"></textarea><br/><br/>
			
			<label for="users">Choose User</label>
			<?php $users = $my_class->getData('users'); ?>
			<select name="users">
				<?php foreach($users as $user) { ?>
					<option value="<?php echo $user["id"]; ?>"><?php echo $user['name']; ?></option>
				<?php } ?>
			</select><br/><br/>
			
			<input type="submit" value="Create post" name="create_post_btn" />
		</form>
		
		<h1>Posts</h1>
		<?php $posts = $my_class->getData('posts'); 
		 foreach($posts as $post) {?>
		<h2><?php echo $post["title"]; ?><h2>
		<p><?php echo $post["content"]; ?></p>
		<small>Created at: <?php echo $post["created_at"]; ?><small><br/>
		<a href="edit_post.php?id=<?php echo $post["id"]; ?>">Edit Post</a>
		 <?php } ?>
		
	</body>
</html>