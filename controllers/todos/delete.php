<?php
use Core\Database;

$config = require "config.php";

$database = new Database($config);

$currentUser=1;

$id = $_POST['id'];
echo 'id ',$id;
$todos = $database->query("SELECT * FROM todos WHERE user_id= :id",["user_id"=>$currentUser])->fetchAll();

echo 'todos:',$todos;
echo "select todos",$todos;

if(!$todos){
    die('Todo not found');
}

authorize($todos['user_id'] === $currentUser);
echo "delete";
$todos = $database ->query("DELETE * FROM todos  WHERE  id= :id",["id"=>$id])->fetchAll();
echo"delete todo";
header('Location: /blog');

exit();
