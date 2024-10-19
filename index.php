<?php

const BASE_PATH = __DIR__ .'/';
require BASE_PATH . 'Core/utils.php';


spl_autoload_register(function ($class) {
    $class = str_replace('\\', DIRECTORY_SEPARATOR, $class);
    require_once base_path($class . '.php');
}
);


require base_path('Core/Router.php');

$router= new Core\Router();
$routerS = require base_path('routers.php');
////echo "pre";
////var_dump($_SERVER);
////echo "/pre";
$uri =  parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
//
//


$method =$_POST['_method'] ?? $_SERVER['REQUEST_METHOD'];
//
$router->route($uri, $method);

