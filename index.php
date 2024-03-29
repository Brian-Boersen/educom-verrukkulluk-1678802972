
<?php
//// Allereerst zorgen dat de "Autoloader" uit vendor opgenomen wordt:
require_once("vendor/autoload.php");

require_once("lib/database.php");
require_once("lib/article.php");
require_once("lib/user.php");
require_once("lib/kitchen-type.php");
require_once("lib/ingredient.php");
require_once("lib/dish_info.php");
require_once("lib/dish.php");
require_once("lib/shopping_cart.php");


/// INIT--------------------------------------------------------------------------------------------------------------------------------------------------------
$db = new database();
$ingr = new ingredient($db->getConnection());
$dish_info = new dish_info($db->getConnection());
$dish = new dish($db->getConnection());
$cart = new shopping_cart($db->getConnection());



/// Twig koppelen:
$loader = new \Twig\Loader\FilesystemLoader("templates");
/// VOOR PRODUCTIE:
/// $twig = new \Twig\Environment($loader), ["cache" => "./cache/cc"]);

/// VOOR DEVELOPMENT:
$twig = new \Twig\Environment($loader, ["debug" => true ]);
$twig->addExtension(new \Twig\Extension\DebugExtension());


/// VERWERK -----------------------------------------------------------------------------------------------------------------------------------------


/******************************/

//Next step, iets met je data doen. Ophalen of zo

/*
URL:
http://localhost/educom-verrukkulluk-1678802972/index.php?gerecht_id=3&action=detail
http://localhost/educom-verrukkulluk-1678802972/index.php?gerecht_id=3&action=add_rating&rating=5
http://localhost/educom-verrukkulluk-1678802972/index.php?gerecht_id=1&action=toggle_favorite
http://localhost/educom-verrukkulluk-1678802972/index.php?gerecht_id=3&action=add_ingredients_to_cart
*/

$gerecht_id = isset($_GET["gerecht_id"]) ? $_GET["gerecht_id"] : "";
$action = isset($_GET["action"]) ? $_GET["action"] : "homepage";

//rating functionality
$rating = isset($_GET['rating']) ? (int)$_GET['rating'] : null;

//shopping cart
$user_id = 1;
$cart_item_id = isset($_GET["cart_item_id"]) ? $_GET["cart_item_id"] : null;
$cart_item_count = isset($_GET["cart_item_count"]) ? $_GET["cart_item_count"] : 1;

//search
$search = isset($_GET["search"]) ? $_GET["search"] : null;

switch($action) {  
    case "add_rating":{
        if(isset($rating)){             
            $dish_info->addRating($gerecht_id, $rating);
        }
        break;
    }

    case "toggle_favorite": {
        if($dish->determineFavorite($gerecht_id, $user_id) == false){
            $dish_info->addFavorite($gerecht_id, $user_id);
        }
        else{
            $dish_info->deleteFavorite($gerecht_id, $user_id);
        }
        break;
    }

    case "add_ingredients_to_cart":{
        $cart->addArticlesToCart($gerecht_id,$user_id);     
        break;
    }

    case "delete_cart_item":{
        $cart->removeItemFromCart($cart_item_id);
        break;
    }

    case "delete_all_cart_items":{
        $cart->removeAllItemsFromCart($user_id);
        break;
    }

    case "update_cart_item":{
        $cart->updateItemInCart($cart_item_id,$cart_item_count);
        break;
    }

    case "search":{
        $data = $dish->searchDishes($search);
        $template = 'homepage.html.twig';
        $title = "homepage";
        break;
    }

    case "homepage": {
        $data = $dish->selectDishes();
        $template = 'homepage.html.twig';
        $title = "homepage";
        break;
    }

    case "detail": {
        $data = $dish->selectDishes($gerecht_id);
        if($dish->determineFavorite($gerecht_id, $user_id) == true){
            $data[0]["is_favoriet"] = true;
        }
        else{
            $data[0]["is_favoriet"] = null;
        }

        $template = 'detail.html.twig';
        $title = "detail pagina";
        break;
    }

    case "cart": {
        $data = $cart->selectCart($user_id);
        $template = 'shoppingCart.html.twig';
        $title = "boodschap mandje";
        break;
    }

    /// etc
}




    /// Onderstaande code schrijf je idealiter in een layout klasse of iets dergelijks
if(isset($template)){
    /// Juiste template laden, in dit geval "homepage"
    $template = $twig->load($template);

    /// En tonen die handel!
    echo $template->render(["title" => $title, "data" => $data]);
}




?>
