<?php

class shopping_cart{
    private $connection;
    private $article;
    private $ingredients;

    public function __construct($connection){
        $this->connection = $connection;
        $this->article = new article($connection);
        $this->ingredients = new ingredient($connection);
    }

    public function addArticlesToCart($dish_id,$user_id){
        $ingredients_data = $this->ingredients->selectingredients($dish_id);
     
        if(count($ingredients_data) == 0){
            return;
        }

        foreach($ingredients_data as $ingredient){
            $part_used = $ingredient["aantal"] / $ingredient["verpaking"];

            $sql = "INSERT INTO winkelmand (user_id,artikel_id,aantal,deel_in_gebruik) 
                    values ($user_id,".$ingredient["artikel_id"]."," . intval(ceil($part_used)) . ",$part_used)";

            $articleOnList = $this->articleOnList($ingredient["artikel_id"],$user_id);

            if($articleOnList != false){
                $part_used += $articleOnList["deel_in_gebruik"];

                $sql = "UPDATE winkelmand SET aantal = " . intval(ceil($part_used)) . ", deel_in_gebruik = $part_used 
                WHERE user_id = $user_id AND artikel_id = " . $ingredient["artikel_id"]; 
            }

            mysqli_query($this->connection, $sql);
        }

        return;
    }

    public function articleOnList($article_id,$user_id){
        $cart = $this->selectCart($user_id);

        foreach( $cart as $article){
            if($article["artikel_id"] == $article_id){
                return $article;
            }       
        }

        return false;
    }

    public function selectCart($user_id){
        $sql = "SELECT * FROM winkelmand WHERE user_id = $user_id";

        $result = mysqli_query($this->connection,$sql);

        $cart = [];

        while($product = mysqli_fetch_array($result, MYSQLI_ASSOC) ){          
            $artData = $this->article->selectArticle($product["artikel_id"]);
            $price = $this->calcPrice($product["aantal"],$artData["prijs"]);
            $cart[] = $product + ["totaal_prijs" => $price] + $artData;
        }

        return $cart;
    }

    public function updateItemInCart($cart_item_id,$cart_item_count){
        $sql = "UPDATE winkelmand SET aantal = $cart_item_count WHERE id = $cart_item_id";
        mysqli_query($this->connection, $sql);
    }

    public function removeItemFromCart($cart_item_id){
        $sql = "DELETE FROM winkelmand WHERE id = $cart_item_id";
        mysqli_query($this->connection, $sql);
    }

    public function removeAllItemsFromCart($user_id){
        $sql = "DELETE FROM winkelmand WHERE user_id = $user_id";
        mysqli_query($this->connection, $sql);
    }

    private function calcPrice($amount, $price){
        $total = 0;

        $total += $price * $amount;

        return round($total,2);
    }
}