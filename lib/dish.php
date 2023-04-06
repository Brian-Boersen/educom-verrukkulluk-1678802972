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

    public function searchDishes($keyword = "kaas,hamburger,roll"){
        if($keyword == ""||$keyword == null){
            return [];
        }

        $dishes = $this->selectDishes();

        //convert the keyword to lowercase
        $keyword = strtolower($keyword);

        //split she keyword in words where there is a space or a comma or a dot, and put them in an array
        $keywords = preg_split("/[\s,\.]+/", $keyword);

        $searchResult = [];

        //for each word in the keywords array
        foreach($keywords as $singleKeyword){
            //check if the arrays content cotains the keyword
            $searchResult += array_filter($dishes, function($dish) use ($singleKeyword){
                //goes trough all $dish keys with a string value
                foreach($dish as $key => $value){
                    //goes trough the array, or loop once if it is not an array
                    foreach((array)$value as $subkey => $subvalue){
                        //same here, it's a tree dimensional array
                        foreach((array)$subvalue as $subsubkey => $subsubvalue){
                            //if the subsubvalue is a string
                            if(is_string($subsubvalue)){
                                //value to lowercase
                                $lowercaseSubsubvalue = strtolower($subsubvalue);
                                //if the keyword is found in the string return true
                                if(strpos($lowercaseSubsubvalue, $singleKeyword) !== false){
                                    return true;
                                }
                            }
                        } 
                    }
                }    
            });            
        }

        // //debugging
        // echo "<pre>";
        // //var_dump($keywords);
        // var_dump(array_values($searchResult));
        // echo "</pre>";

        //return the search result
        return array_values($searchResult);
    }

    //old code for search function, so unefficient
    /* //for each word in the keywords array
        foreach($keywords as $singleKeyword){
                //check if the arrays content cotains the keyword
                $searchResult += array_filter($dishes, function($dish) use ($singleKeyword){
                    //goes trough all $dish keys with a string value
                    foreach($dish as $key => $value){
                        //if key is an array go trough the array
                        if(is_array($value)){
                            foreach($value as $subkey => $subvalue){
                                //if the subvalue is a array
                                if(is_array($subvalue)){
                                    //go trough the array
                                    foreach($subvalue as $subsubkey => $subsubvalue){
                                        //if the subsubvalue is a string
                                        if(is_string($subsubvalue)){
                                            //value to lowercase
                                            $lowercaseSubsubvalue = strtolower($subsubvalue);
                                            //if the keyword is found in the string return true
                                            if(strpos($lowercaseSubsubvalue, $singleKeyword) !== false){
                                                return true;
                                            }
                                        }
                                    }
                                }
                                elseif(is_string($subvalue)){
                                    //value to lowercase
                                    $lowercasesubvalue = strtolower($subvalue);
                                    //if the keyword is found in the string return true
                                    if(strpos($lowercasesubvalue, $singleKeyword) !== false){
                                        return true;
                                    }
                                }
                            }
                        }
                        elseif(is_string($value)){
                            //value to lowercase
                            $value = strtolower($value);
                            //if the keyword is found in the string return true
                            if(strpos($value, $singleKeyword) !== false){
                                return true;
                            }
                        }
                    }
                });        
            
        }*/ 
    
    public function selectDishes($dish_id = null){
        $dishes = [];
        $sql = "SELECT * FROM gerecht";

        if(!is_null($dish_id)){
            $sql .= " where id = $dish_id";
        }

        $result = mysqli_query($this->connection,$sql);

        $ingredients = [];
        $ratings = [];
        
        while ($current_dish_id = mysqli_fetch_array($result, MYSQLI_ASSOC)){    
            $ingredients = $this->getIngredients($current_dish_id["id"]);
            $ratings = $this->getRating($current_dish_id["id"]);

            $dishes[] = [
                "id" => $current_dish_id["id"],
                "titel" => $current_dish_id["titel"],
                "keuken" => $this->getKitchen($current_dish_id["keuken_id"]),
                "type" => $this->getType($current_dish_id["type_id"]),
                "user" => $this->getUser($current_dish_id["user_id"]),
                "datum_toegevoegd" => $current_dish_id["datum_toegevoegd"],
                "korte_omschrijving" => $current_dish_id["korte_omschrijving"],
                "lange_omschrijving" => $current_dish_id["lange_omschrijving"],
                "afbeelding" => $current_dish_id["afbeelding"],
                "ingredienten" =>  $ingredients,
                "favoriet" => $this->getFavorite($current_dish_id["id"]),
                "waardering" => $ratings,
                "bereidingswijze" => $this->getPreperationSteps($current_dish_id["id"]),
                "opmerkingen" => $this->getComments($current_dish_id["id"]),
                "totaalprijs" => $this->calculateTotalPrice($ingredients),
                "calorieen" => $this->calculateCalories($ingredients),
                "gemiddelde_waardering" => $this->calculateEverageRating($ratings)
            ];
        }

        return $dishes;
    }


    public function determineFavorite($user_id, $dish_id){
        $isFavorite = false;
        
        $favorite_data = $this->getFavorite($dish_id);

        foreach ($favorite_data as $favorite){
            if($favorite["user_id"] == $user_id){
                $isFavorite = true;
            }
        }

        return  $isFavorite;
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

        if($totalRating > 0){
        $everageRating = $totalRating/$ratingCount;
        }

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