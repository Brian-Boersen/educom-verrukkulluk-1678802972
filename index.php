<?php

require_once("lib/database.php");
require_once("lib/article.php");
require_once("lib/user.php");
require_once("lib/kitchen-type.php");
require_once("lib/ingredient.php");

/// INIT
$db = new database();
$art = new article($db->getConnection());
$user = new user($db->getConnection());
$ki_type = new kitchen_type($db->getConnection());
$ingr = new ingredient($db->getConnection());


/// VERWERK 
//$data = $art->selectArticle(8);
//$data = $user->selectUser(1);
//$data = $ki_type->selectKitchenType(1);
$data = $ingr->selectIngredient(1);

/// RETURN
echo "<pre>";
var_dump($data);