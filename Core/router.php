 <?php
$uri = parse_url($_SERVER['REQUEST_URI'])['path'];
echo $uri;

$routers= require base_path('routers.php');
if (array_key_exists($uri,$routers)) {
    require $routers[$uri];
} else {
    http_response_code(404);
     view("404.template.html");
    die();
}
