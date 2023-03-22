<?php

class dish_info{
    private $connection;
    private $user;

    public function __construct($connection){
        $this->connection = $connection;
        $this->user = new user($connection);
    }

    //input B: preperation step, O: comment, F: favorite or W: rating
    public function addDishInfo($gerecht_id,$record_type = "input B: preperation step, O: comment, F: favorite or W: rating",$user_id = null,$date = null,$num_field = null, $tekst_field = null){
        if($record_type != ("B"||"O"||"F"||"W")){ 
            echo "record_type needs to be B, O, F or W";
           return;
        }     
            $sql = "INSERT INTO `dish_info` * values ($record_type,$gerecht_id,$user_id,$date,$num_field,$tekst_field)";

            echo "id before: ".mysqli_insert_id($this->connection);

            $result = mysqli_query($this->connection,$sql);
            
            if($result == true){
                echo "id after: " . mysqli_insert_id($this->connection);
            }
    }    //input B: preperation step, O: comment, F: favorite or W: rating

    public function deleteDishInfo(){
        //????????????????????????????????????
    }

    public function selectDischInfo($gerecht_id,$rec_type = null){
        
        if($rec_type == null){
            $sql = "SELECT * FROM gerecht_info WHERE gerecht_id = $gerecht_id";
        }
        else{
            $sql = "SELECT * FROM gerecht_info WHERE gerecht_id = $gerecht_id and record_type = '$rec_type'";
        }

       
        
        $result = mysqli_query($this->connection,$sql);
        $gerecht_infoData = [];
        $userData = [];

        if(mysqli_num_rows($result) > 0){
            while($gerecht_infoRow = mysqli_fetch_array($result, MYSQLI_ASSOC) ){
                if($gerecht_infoRow["user_id"] != ""){
                    $userData = $this->getUser($gerecht_infoRow["user_id"]);
                }          
                $gerecht_infoData[] = $gerecht_infoRow + $userData;
            }
        }else{
            echo "error dish_info result empty: ";
        }


        return $gerecht_infoData;
    }

    private function getUser($user_id){
        return $this->user->selectUser($user_id);
    }
}