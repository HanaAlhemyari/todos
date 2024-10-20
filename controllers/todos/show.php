<?php

use Core\Database;

spl_autoload_register(function ($class) {
    $class = str_replace('\\', DIRECTORY_SEPARATOR, $class);
    require_once base_path($class . '.php');
}
);

$config = require base_path( 'config.php');


// استخدام الكلاس Database
$db = new Database($config);
$currentUser =1 ;
$id =$_GET['id'];

$todo = $db->query("SELECT 
                        todos.id AS id,
                        todos.title AS title,
                        todos.description AS description,
                        todos.status AS status,
                        todos.created_at AS created_at,
                        todos.updated_at AS updated_at,
                        users.id AS user_id,
                        users.name AS user_name,
                        users.avatar AS avatar,
                        roles.role_name AS user_role, 
                        categories.id AS category_id,
                        categories.name AS category_name,
                        COUNT(comments.id) AS comments_count,
                        COUNT(likes.id) AS like_count,
                        COUNT(views.id) AS views_count
                    FROM todos
                    JOIN users ON todos.user_id = users.id
                    LEFT JOIN roles ON users.role_id = roles.id -- الانضمام إلى جدول الأدوار
                    LEFT JOIN categories ON todos.category_id = categories.id
                    LEFT JOIN comments ON comments.todo_id = todos.id
                    LEFT JOIN likes ON likes.todo_id = todos.id
                    LEFT JOIN views ON views.todo_id = todos.id
                    WHERE todos.id = :id
                    GROUP BY todos.id, users.id, categories.id", ['id' => $id])->fetch();
if (!$todo){
    die('Todo not found');
}
//authorize($todo['user_id']=== $currentUser);
//dd($todo);
view('todos/show.template.html', ['todo' => $todo]);
