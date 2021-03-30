<?php 

include_once 'MyClass.php';

$posts = $my_class->get_posts(10);
// echo "<pre>";
	// print_r($posts[0]);
// echo "</pre>";
// echo "<br/>";

foreach($posts as $post){
	
	$data[$post["pid"]] = [
		"naslov" => $post["title"],
		"sadrzaj" => $post["pcontent"],
		"vremeKreiranja" => $post["pcreated_at"],
		"korisnik" => [
			"imePrezime" => $post["puser_name"],
			"mejl" => $post["email"]
		],
		"komentari" => [
			$post["cid"] => [
				"sadrzaj" => $post["ccontent"],
				"imeKorisnika" => $my_class->getDataById('users',$post["cuser_id"])["name"]
			]
		]
		
		
	];
}

echo "<pre>";
print_r($data);
echo "</pre>";
?>