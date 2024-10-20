<?php

namespace Core;
use PDO;

class Database
{
    private $connection;

    public function __construct($config, $username = 'root', $password = '')
    {

        $dsn = "mysql:host={$config['host']};dbname={$config['dbname']};port={$config['port']},charset={$config['charset']}";
        $this->connection = new PDO($dsn, $username, $password
            , [PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC]);
    }

    public function query($query, $params = [])
    {
        $statement = $this->connection->prepare($query);
        $statement->execute($params);
        return $statement;
    }
}