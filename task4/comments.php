<?php 
include_once 'MyClass.php'
?>
<html>
	<body>
		<p>Create comment</p>
		
		<form action="#" method="post">
			<label for="content">Content:</label>
			<textarea type="text" name="content"></textarea><br/><br/>
			
			<label for="posts">Choose post to comment</label>
			<?php $posts = $my_class->getData('posts'); ?>
			<select name="posts">
				<?php foreach($posts as $post) { ?>
					<option value="<?php echo $post["id"]; ?>"><?php echo $post['title']; ?></option>
				<?php } ?>
			</select><br/><br/>
			
			<label for="users">Choose User</label>
			<?php $users = $my_class->getData('users'); ?>
			<select name="users">
				<?php foreach($users as $user) { ?>
					<option value="<?php echo $user["id"]; ?>"><?php echo $user['name']; ?></option>
				<?php } ?>
			</select><br/><br/>
			
			<input type="submit" value="Create comment" name="create_comment_btn" />
		</form>
		
		<h1>Comments</h1>
		<?php $comments = $my_class->getData('comments'); 
		 foreach($comments as $comment) {?>
		<p><?php echo $comment["content"]; ?></p>
		<small>Created at: <?php echo $comment["created_at"]; ?><small><br/>
		<a href="edit_comment.php?id=<?php echo $comment["id"]; ?>">Edit Post</a>
		 <?php } ?>
		
	</body>
</html>