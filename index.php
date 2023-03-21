<?php

require_once("lib/database.php");
require_once("lib/article.php");
require_once("lib/user.php");
require_once("lib/kitchen-type.php");
require_once("lib/ingredient.php");
require_once("lib/dish_info.php");


/// INIT
$db = new database();
$ingr = new ingredient($db->getConnection());
$dish_info = new dish_info($db->getConnection());

/// VERWERK 
//$data = $art->selectArticle(8);
//$data = $user->selectUser(1);
//$data = $ki_type->selectKitchenType(1);
//$data = $ingr->selectIngredients(2);
$data = $dish_info->selectDischInfo(1);

/// RETURN
echo "<pre>";
var_dump($data);