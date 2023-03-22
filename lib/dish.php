<?php

class dish {
    private $connection;
    private $kitchen_type;
    private $user;
    private $ingredient;
    private $dish_info;

    public function __construct($connection){
        $this->connection = $connection;
        $this->kitchen_type = new kitchen_type($connection);
        $this->user = new user($connection);
        $this->ingredient = new ingredient($connection);
        $this->dish_info = new dish_info($connection);
    }

    public function selectDish($dish_id){
        $dish_data = [
            "id" => "",
            "keuken" => [],
            "type" => [],
            "user" => [],
            "datum_toegevoegd" => "",
            "titel" => "",
            "korte_omschrijving" => "",
            "lange_omschrijving" => "",
            "afbeelding" => "",
            "ingredienten" => [],
            "favoriet" => [],
            "waardering" => [],
            "bereidingswijze" => [],
            "opmerkingen" => [],
            "totaalprijs" => "",
            "calorieen" => "",
            "gemiddelde_waardering" => ""
        ];

        $sql = "SELECT * FROM gerecht where id = $dish_id";
        $result = mysqli_query($this->connection,$sql);
        $bareDishData = mysqli_fetch_array($result, MYSQLI_ASSOC);

        $dish_data["id"] = $bareDishData["id"];
        $dish_data["keuken"] = $this->getKitchen($bareDishData["keuken_id"]);
        $dish_data["type"] = $this->getType($bareDishData["type_id"]);
        $dish_data["user"] = $this->getUser($bareDishData["user_id"]);
        $dish_data["datum_toegevoegd"] = $bareDishData["datum_toegevoegd"];
        $dish_data["titel"] = $bareDishData["titel"];
        $dish_data["korte_omschrijving"] = $bareDishData["korte_omschrijving"];
        $dish_data["lange_omschrijving"] = $bareDishData["lange_omschrijving"];
        $dish_data["afbeelding"] = $bareDishData["afbeelding"];
        $dish_data["ingredienten"] = $this->getIngredients($bareDishData["keuken_id"]);
        $dish_data["favoriet"] = $this->getFavorite($bareDishData["id"]);
        $dish_data["waardering"] = $this->getRating($bareDishData["id"]);
        $dish_data["bereidingswijze"] = $this->getPreperationSteps($bareDishData["id"]);
        $dish_data["opmerkingen"] = $this->getComments($bareDishData["id"]);
        $dish_data["totaalprijs"] = $this->calculateTotalPrice($dish_data["ingredienten"]);
        $dish_data["calorieen"] = $this->calculateCalories($dish_data["ingredienten"]);
        $dish_data["gemiddelde_waardering"] = $this->calculateEverageRating($dish_data["waardering"]);
        return $dish_data;
        //return $bareDishData;
    }

    //calculations---------------------------------------------------------------------------------------------------------------------------------
    //for 4 persons
    private function calculateTotalPrice($ingredients){
        $totalPrice = 0.0;
        $artiklesNeeded = 1;
        foreach( $ingredients as $ingredient){
            $artiklesNeeded = ceil($ingredient["aantal"]/$ingredient["verpaking"]);
            $totalPrice += $artiklesNeeded * $ingredient["prijs"];
        }

        return round($totalPrice, 2);
    }

    private function calculateCalories($ingredients){
        $totalCalories = 0;
        $usedOfIngredient = 0.0;

        foreach( $ingredients as $ingredient){
            $usedOfIngredient = $ingredient["aantal"]/$ingredient["verpaking"];
            $totalCalories += $usedOfIngredient * $ingredient["calorieen"];
        }

        return round($totalCalories,0);
    }

    private function calculateEverageRating($ratings){
        $everageRating = 0;
        $ratingCount = count($ratings);
        $totalRating = 0;

        foreach($ratings as $rating){
            $totalRating += $rating["nummeriek_veld"];
        }

        $everageRating = $totalRating/$ratingCount;

        return round($everageRating,1);
    }

    //geting data--------------------------------------------------------------------------------------------------------------------
    private function getKitchen($kitchen_id){
        return $this->kitchen_type->selectKitchenType($kitchen_id);
    }

    private function getType($type_id){
        return $this->kitchen_type->selectKitchenType($type_id);
    }

    private function getUser($user_id){
        return $this->user->selectUser($user_id);
    }

    private function getIngredients($dish_id){
        return $this->ingredient->selectIngredients($dish_id);
    }

    private function getFavorite($dish_id){
        return $this->dish_info->selectDischInfo($dish_id,"F");
    }

    private function getRating($dish_id){
        return $this->dish_info->selectDischInfo($dish_id,"W");
    }

    private function getPreperationSteps($dish_id){
        return $this->dish_info->selectDischInfo($dish_id,"B");
    }

    private function getComments($dish_id){
        return $this->dish_info->selectDischInfo($dish_id,"O");
    }
}