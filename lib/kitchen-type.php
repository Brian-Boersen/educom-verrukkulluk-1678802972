<?php

class kitchen_type {
    private $connection;

    public function __construct($connection) {
        $this->connection = $connection;
    }

    public function selectKitchenType($kitchentype){
        $sql = "SELECT * FROM keuken_type WHERE id = $kitchentype";

        $result = mysqli_query($this->connection, $sql);
        $kitchenTypeData = mysqli_fetch_array($result, MYSQLI_ASSOC);

        return $kitchenTypeData;
    }
}