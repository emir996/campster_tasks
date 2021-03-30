<?php 

class MyClass {
	public Array $users = [];
	public Array $data = [];
	
	private $db_host;
	private $db_user;
	private $db_pass;
	private $db_name;
	
	public function connect(){
			$this->db_host = "localhost";
			$this->db_user = "root";
			$this->db_pass = "";
			$this->db_name = "post";
		
			$conn = new mysqli($this->db_host, $this->db_user, $this->db_pass, $this->db_name);
			
			if($conn -> connect_errno){
				echo "Failed to connect to MySql " . $conn->connect_error;
				exit();
			}
			
			return $conn;
		
	}
	
	public function createId($filename){
		$id = file_get_contents($filename);
		file_put_contents($filename, $id+1);
		return $id;
	}
	
	public function create_user(){
		if($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['create_user_btn'])){
			//very simple basic validation
			if(empty($_POST['name']) || empty($_POST['email'])){
				return false;
			}
			$name = $_POST['name'];
			$email = $_POST['email'];
			
			$sql = "INSERT INTO users (name, email) VALUES ('$name', '$email')";
			
			if($this->connect()->query($sql) === true){
				echo "New user created successfully";
			} else {
				echo "Error " . $sql . "<br/>" . $this->connect()->error;
			}
		}
	}
	
	public function getDataById($table, $id){
		$sql = "SELECT * FROM " . $table . " WHERE id = $id";
		
		$result = $this->connect()->query($sql);
		
		if($row = $result->num_rows < 1){
			echo "There is no given record";
			return false;
		}
		$row = $result->fetch_assoc();
				
		return $row;

	}
	
	public function getData($table){
		$sql = "SELECT * FROM " . $table;
		$data = [];
		
		$result = $this->connect()->query($sql);
		$numRows = $result->num_rows;
		if($numRows > 0){
			while($row = $result->fetch_assoc()){
				$data[] = $row;
			}
		}
		
		return $data;
		
	}
	
	public function add_post(){
		if($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['create_post_btn'])){
			if(empty($_POST['title']) || empty($_POST['content']) || empty($_POST['users'])){
				return false;
			}
			
			if(empty($this->getData('users'))){
				echo "First u must create user to create a post";
				return false;
			}
				
			$title = $_POST['title'];
			$content = $_POST['content'];
			$user = $_POST['users'];
			$date = date("Y-m-d H:i:s");
			
			$sql = "INSERT INTO posts (title, content, created_at, updated_at, user_id) VALUES ('$title', '$content', '$date', '', '$user')";
			
			if($this->connect()->query($sql) === true){
				echo "New post created successfully";
			}
		}
		
	}
	
	public function update_post(){
		if($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['update_post_btn'])){
			if(empty($_POST['title']) || empty($_POST['content']) || empty($_POST['user'])){
				return false;
			}
			
			if(empty($this->getData('users'))){
				echo "First u must create user to update a post";
				return false;
			}
			
			$id = $_POST["id"];
			$title = $_POST["title"];
			$content = $_POST["content"];
			$user = $_POST["user"];
			$date = date("Y-m-d H:i:s");
			
			$sql = "UPDATE posts SET title='$title', content='$content', updated_at='$date', user_id='$user' WHERE id = $id";
			
			if($this->connect()->query($sql) === true){
				echo "Post updated successfully";
			}
		}
	}
	
	public function add_comment(){
		if($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['create_comment_btn'])){
			if(empty($_POST['content']) || empty($_POST['posts']) || empty($_POST['users'])){
				return false;
			}
			
			if(empty($this->getData('posts'))){
				echo "First u must create post after comment";
				return false;
			}
			
			$content = $_POST['content'];
			$post = $_POST['posts'];
			$user = $_POST['users'];
			$date = date("Y-m-d H:i:s");
			
			$sql = "INSERT INTO comments (content, created_at, post_id, user_id) VALUES ('$content','$date', $post, $user)";
			
			if($this->connect()->query($sql) === true){
				echo "New comment created successfully";
			}
		}
	}
	
	public function update_comment(){
		if($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['update_comment_btn'])){
			if(empty($_POST['content'])){
				return false;
			}
			
			if(empty($this->getData('users')) || empty($this->getData('posts'))){
				echo "First u must create user or post if u want to comment";
				return false;
			}
			
			$id = $_POST["id"];
			$content = $_POST["content"];
			
			
			$sql = "UPDATE comments SET content='$content' WHERE id = $id";
			
			if($this->connect()->query($sql) === true){
				echo "Comment updated successfully";
			}
		}
	}
	
	public function get_posts($limit){
		//$sql = "SELECT * FROM posts ORDER BY created_at asc LIMIT $limit";
		
		// $sql = "SELECT posts.id as p_id, posts.title as p_title, posts.content as p_content, posts.created_at as p_created_at, posts.user_id as p_user_id, comments.title as c_title, comments.created_at as c_created_at, comments.user_id as c_user_id, comments.post_id as c_post_id from posts, users.id as u_id, users.name as u_name, users.email as u_email
		// FROM posts
		// INNER JOIN users ON p_user_id = u_id
		// INNER JOIN comments ON p_id = c_post_id
		// ";
		// $sql = "SELECT u.*, c.* FROM posts p
		// INNER JOIN comments as c ON p.id = c.post_id
		// INNER JOIN users u ON p.user_id = u.id";
		
		// $sql = "
			// SELECT posts.id as pid, comments.id as cid, posts.content as content1, comments.content as content2, posts.created_at as created_at1, comments.created_at as created_at2, posts.updated_at, posts.user_id as user_id1, comments.user_id as user_id2, comments.post_id  FROM posts
			// INNER JOIN comments ON posts.pid = comments.comments.post_id;
		// ";
		
		$sql = "SELECT posts.id as pid, posts.title, posts.content as pcontent, posts.created_at as pcreated_at, posts.updated_at, posts.user_id as puser_id , comments.id as cid, comments.content as ccontent, comments.created_at as ccreated_at, comments.post_id, comments.user_id as cuser_id, users.id as uid, users.name as puser_name,users.email FROM posts
		LEFT JOIN comments ON comments.post_id = posts.id
		LEFT JOIN users ON users.id = posts.user_id 
		ORDER BY posts.created_at DESC LIMIT $limit
		";
		$data = [];
		
		
		
		$result = $this->connect()->query($sql);
		
			while($row = $result->fetch_assoc()){
				$data[] = $row;
			}
		
		
		return $data;
		
		
	}
	
	public function __destruct(){
		$this->connect()->close();
	}
}
//print_r($_POST);
$my_class = new MyClass();
// $my_class->create_user();
// $my_class->add_post();
switch($_POST){
	case isset($_POST["create_user_btn"]):
		$my_class->create_user();
	break;
	case isset($_POST["create_post_btn"]):
		$my_class->add_post();
	break;
	case isset($_POST["create_comment_btn"]):
		$my_class->add_comment();
	break;
	case isset($_POST["update_post_btn"]):
		$my_class->update_post();
	break;
	case isset($_POST["update_comment_btn"]):
		$my_class->update_comment();
	break;
}
?>

