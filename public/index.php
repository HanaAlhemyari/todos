<?php
const BASE_PATH = __DIR__.'/../';
require BASE_PATH. '/Core/utils.php';

spl_autoload_register(function ($class) {
    $class = str_replace('\\', DIRECTORY_SEPARATOR, $class);
    require_once base_path($class . '.php');
}
);


require base_path('Core/router.php');
// الحصول على عنوان URL الحالي
//$url = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH); // استخدم parse_url لاستخراج المسار فقط
//$uri = parse_url($_SERVER['REQUEST_URI'])['path'];
// طباعة عنوان URL للتأكد
//echo $uri;

// التحقق من المسار وعرض الصفحة المناسبة
//if ( $uri === '/') {
//require 'controllers/home.php';
//} elseif ($uri === '/about') {
//    require 'controllers/about.php'; // عرض صفحة about.php
//} elseif ($uri === '/contact') {
//    require 'controllers/contact.php'; // عرض صفحة contact.php
//} else {
//    // إذا لم يكن هناك تطابق
    //http_response_code(404);
    //require 'views/404.template.html';}
   // ?>