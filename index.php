<?php

require_once("lib/database.php");
require_once("lib/article.php");
require_once("lib/user.php");
require_once("lib/kitchen-type.php");
require_once("lib/ingredient.php");

/// INIT
$db = new database();
$ingr = new ingredient($db->getConnection());


/// VERWERK 
//$data = $art->selectArticle(8);
//$data = $user->selectUser(1);
//$data = $ki_type->selectKitchenType(1);
$data = $ingr->selectIngredients(2);

/// RETURN
echo "<pre>";
var_dump($data);