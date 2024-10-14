<?php
const BASE_PATH = __DIR__.'/../../';
require BASE_PATH. '/Core/utils.php';
use Core\Database;

spl_autoload_register(function ($class) {
    $class = str_replace('\\', DIRECTORY_SEPARATOR, $class);
    require_once base_path($class . '.php');
}
);

$config = require base_path( 'config.php');


// استخدام الكلاس Database
$db = new Database($config);

$id = $_GET['id'];

// جلب البيانات من قاعدة البيانات
$todo = $db->query("SELECT * FROM todos WHERE id = :id", ['id' => $id])->fetch();

view('todos/index.template.html');
