<?php

class dish_info{
    private $connection;
    private $user;

    public function __construct($connection){
        $this->connection = $connection;
        $this->user = new user($connection);
    }

    public function addFavorite($dish_id,$user_id){
        $sql = "INSERT INTO `gerecht_info` (record_type,gerecht_id,user_id) values ('F',$dish_id,$user_id)";
        $result = mysqli_query($this->connection,$sql);      
    }   
    
    public function addRating($dish_id,$rating){
        $sql = "INSERT INTO `gerecht_info` (record_type,gerecht_id,nummeriek_veld) values ('W',$dish_id,$rating)";

        $result = mysqli_query($this->connection,$sql);      
    } 

    public function deleteFavorite($dishInfo_id, $user_id){
        $sql = "DELETE FROM gerecht_info WHERE id = $dishInfo_id and user_id = $user_id";
        $result = mysqli_query($this->connection,$sql);
    }

    public function deleteDishInfo($dishInfo_id){
        $sql = "DELETE FROM gerecht_info WHERE id = $dishInfo_id";
        $result = mysqli_query($this->connection,$sql);
    }

    public function selectDischInfo($dish_id,$rec_type = null){
        
        $sql = "SELECT * FROM gerecht_info WHERE gerecht_id = $dish_id";

        if($rec_type != null){
            $sql .= " and record_type = '$rec_type'";
        }
      
        $result = mysqli_query($this->connection,$sql);

        if(mysqli_num_rows($result) == 0){
            return [];
        }

        $gerecht_infoData = [];
        $userData = [];

        while($gerecht_infoRow = mysqli_fetch_array($result, MYSQLI_ASSOC) ){
            if($gerecht_infoRow["user_id"] != "" ){
                $userData = $this->getUser($gerecht_infoRow["user_id"]);
            }          
            $gerecht_infoData[] = $gerecht_infoRow + $userData;
        }

        return $gerecht_infoData;
    }

    private function getUser($user_id){
        return $this->user->selectUser($user_id);
    }
}