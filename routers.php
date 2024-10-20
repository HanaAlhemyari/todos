<?php
require_once __DIR__ . '/Core/Router.php';

$router= new Core\Router();
//$router->addRoute('GET', '/blogs', '/blog');
//echo 'im hear f';
//
//$router->addRoute('GET', '/blogs/:blogID', function ($blogID) {
//    echo "My route is working with blogID => $blogID !";
//    exit;
//});

//get('/', '/controllers/home.php');
//get('/controllers/about.php', __DIR__ . '/controllers/about.php');
//get('/controllers/contact.php', __DIR__ . '/controllers/contact.php');
////get('/blog', '/blog.php');


$router->get('/', 'controllers/home.php');

$router->get('/about', 'controllers/about.php');

$router->get('/contact', 'controllers/contact.php');
$router->get('/blog', 'controllers/todos/index.php');
$router->get('/create', 'controllers/todos/create.php');

$router->get('/show', 'controllers/todos/show.php');
$router->delete('/blog', 'controllers/todos/delete.php');

$router->post('/blog', 'controllers/todos/store.php');





