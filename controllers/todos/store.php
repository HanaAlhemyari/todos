<?php

use Core\Database;
use Core\Validatore;
spl_autoload_register(function ($class) {
    $class = str_replace('\\', DIRECTORY_SEPARATOR, $class);
    require_once base_path($class . '.php');
}
);

$config = require base_path( 'config.php');


// استخدام الكلاس Database
$db = new Database($config);
$errors=[];
//$categories=[];
$currentUser=1;

    $todo = [
        'title' => $_POST['title'],
        //'category_id' => $_POST['category_id']?? '1',  // تعديل هنا
        'description' => $_POST['description'],
        'image_url' => $_POST['image'],
        'user_id' => $currentUser,
    ];

    if (!Validatore::string($todo['title'], 1, 64)) {
        $errors['title'] = 'Tilte between 1 and 64 character is required';
    }
    if (!Validatore::string($todo['description'], 1, 120)) {
        $errors['description'] = 'description between 1 and 120 character is required';
    }

//     if (!Validatore::string($todo['category_id'], 1, 50)) {
//         $errors['category'] = 'category between 1 and 50 character is required';
//     }

    if (empty($errors)) {


try {
    $db->query('INSERT INTO todos (title, category_id, description, image_url, user_id)
                    VALUES (:title, 1, :description, :image_url, :user_id)', $todo);

    // يمكنك إضافة إشعار أو توجيه المستخدم إلى صفحة أخرى بعد الإدخال الناجح
    // echo "Article added successfully";
} catch (PDOException $e) {
    // التعامل مع الأخطاء في حال فشل الاستعلام
    $errors['database'] = 'Error while inserting data: ' . $e->getMessage();
}
    }
return view('todos/create.template.html', [
    'errors' => $errors,
    //  'categories' => $categories,
]);
die();