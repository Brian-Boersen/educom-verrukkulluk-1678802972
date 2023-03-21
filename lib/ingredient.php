<?php
require_once("./article.php");

class ingredient{
    private $connection;
    private $art;

    public function __construct($connection){
        $this->connection = $connection;
        $this->art = new article($connection);
    }

    public function selectIngredient($ingredient_id){
        $sql = "SELECT * FROM ingredient WHERE id = $ingredient_id";
        
        $result = mysqli_query($this->connection,$sql);
        $ingredientData = mysqli_fetch_array($result, MYSQLI_ASSOC);

        $artData = $this->art->selectArticle($ingredientData["artikel_id"]);
        
        return $ingredientData + $artData;
    }
}