<?php

class article {

    private $connection;

    public function __construct($connection) {
        $this->connection = $connection;
    }
  
    public function selectArticle($article_id) {

        $sql = "select * from artikel where id = $article_id";
        
        $result = mysqli_query($this->connection, $sql);
        $article = mysqli_fetch_array($result, MYSQLI_ASSOC);

        $article["prijs"] = number_format($article["prijs"],2);

        return($article);
    }


}
