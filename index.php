<?php

require_once("lib/database.php");
require_once("lib/article.php");
require_once("lib/user.php");
require_once("lib/kitchen-type.php");
require_once("lib/ingredient.php");
require_once("lib/dish_info.php");
require_once("lib/dish.php");
require_once("lib/shopping_cart.php");


/// INIT
$db = new database();
$ingr = new ingredient($db->getConnection());
$dish_info = new dish_info($db->getConnection());
$dish = new dish($db->getConnection());
$cart = new shopping_cart($db->getConnection());

/// VERWERK 
//$data = $art->selectArticle(8);
//$data = $user->selectUser(1);
//$data = $ki_type->selectKitchenType(1);
//$data = $ingr->selectIngredients(2);
//$data = $dish->selectDishes([2,3,1]);
//$cart->addArticlesToCart(2,1);
$data = $cart->selectCart(1);

//$dish_info->addRating(2,3,2);

/// RETURN
echo "<pre>";
var_dump($data);