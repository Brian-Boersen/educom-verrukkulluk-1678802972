
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

//$data = $cart->selectCart(1);

//$dish_info->addRating(2,3,2);

/// RETURN
//echo "<pre>";
//var_dump($data);

//________________________________________________________________________________________________________________________________________________________________________________________________



/******************************/

//Next step, iets met je data doen. Ophalen of zo

/*
URL:
http://localhost/index.php?gerecht_id=3&action=detail
*/

$gerecht_id = isset($_GET["gerecht_id"]) ? $_GET["gerecht_id"] : "";
$action = isset($_GET["action"]) ? $_GET["action"] : "homepage";


switch($action) {

        case "homepage": {
            $data = $dish->selectDishes();
            $template = 'homepage.html.twig';
            $title = "homepage";
            break;
        }

        case "detail": {
            $data = $dish->selectDishes($gerecht_id);
            $template = 'detail.html.twig';
            $title = "detail pagina";
            break;
        }

        /// etc
}


/// Onderstaande code schrijf je idealiter in een layout klasse of iets dergelijks
/// Juiste template laden, in dit geval "homepage"
$template = $twig->load($template);


/// En tonen die handel!
echo $template->render(["title" => $title, "data" => $data]);
?>
