<?php


class ingredient{
    private $connection;
    private $art;

    public function __construct($connection){
        $this->connection = $connection;
        $this->art = new article($connection);
    }

    public function selectingredients($dish_id){
        $sql = "SELECT * FROM ingredient WHERE gerecht_id = $dish_id";
        
        $result = mysqli_query($this->connection,$sql);
        $ingredientData = [];

       while($ingredient = mysqli_fetch_array($result, MYSQLI_ASSOC) ){          
            $artData = $this->getArticle($ingredient["artikel_id"]);
            $ingredientData[] = $ingredient + $artData;
        }

        return $ingredientData;
    }

    private function getArticle($artikel_id){
        return $this->art->selectArticle($artikel_id);
    }
}