 <?php
 $uri = str_replace('/todos/public', '', parse_url
($_SERVER['REQUEST_URI'])['path']);
 //$uri =parse_url($_SERVER['REQUEST_URI'])['path'];
 //$uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);

 // تحميل المسارات من routers.php
 $routers = require base_path('routers.php');

 // التحقق إذا كان المسار موجودًا
 if (array_key_exists($uri, $routers)) {
     $file_path = base_path($routers[$uri]);

     // تحقق إذا كان الملف موجودًا
     if (file_exists($file_path)) {
         require $file_path;
     } else {
         http_response_code(404);
         view("404.template.html");
         die();
     }
 } else {
     http_response_code(404);
     view("404.template.html");
     die();
 }
