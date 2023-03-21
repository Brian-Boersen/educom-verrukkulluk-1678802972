<?php

class kitchen_type {
    private $connection;

    public function __construct($connection) {
        $this->connection = $connection;
    }

    public function getKitchenType($kitchentype){
        $sql = "SELECT * FROM keuken_type WHERE id = $kitchentype"	
    }
}