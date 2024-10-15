 <?php
 const BASE_PATH = __DIR__.'/../../';
 require BASE_PATH. '/Core/utils.php';
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
$currentUser=1;
 // التحقق من إرسال النموذج
 if ($_SERVER['REQUEST_METHOD'] === 'POST') {
     $todo = [
         'title' => $_POST['title'],
         'category' => $_POST['category'],
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

     if (!Validatore::string($todo['category'], 1, 50)) {
         $errors['category'] = 'category between 1 and 50 character is required';
     }

     if (empty($errors)) {

         try {
             $db->query('INSERT INTO todos (title, category, description, image_url, user_id) 
                    VALUES (:title, :category, :description, :image_url, :user_id)', $todo);

             // يمكنك إضافة إشعار أو توجيه المستخدم إلى صفحة أخرى بعد الإدخال الناجح
             // echo "Article added successfully";
         } catch (PDOException $e) {
             // التعامل مع الأخطاء في حال فشل الاستعلام
             $errors['database'] = 'Error while inserting data: ' . $e->getMessage();
         }
     }
 }
     view('todos/create.template.html',[
         'errors'=>$errors
     ]);

