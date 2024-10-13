<?php
require '../Database.php';

$config = require '../config.php';

$db = new Database($config);

$id =$_GET['id'];

$todo = $db->query("SELECT * FROM todos where id=:id",["id"=>$id])->fetch();

//dd($todo);
require '../views/todo.template.html';
