<?php

require_once("lib/database.php");
require_once("lib/article.php");
require_once("lib/user.php");

/// INIT
$db = new database();
$art = new artikel($db->getConnection());
$user = new user($db->getConnection());


/// VERWERK 
$data = $art->selectArticle(8);
//$data = $user->selectUser(1);

/// RETURN
echo "<pre>";
var_dump($data);