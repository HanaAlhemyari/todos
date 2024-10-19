<?php


namespace Core;
class Router
{
    protected $routes = [];

    public function route($uri, $method)
    {
        foreach ($this->routes as $route) {
            if ($route['uri'] === $uri && $route['method'] === strtoupper($method)) {
                return require base_path($route['controller']);
            }
        }
        $this->abort();
    }

    // تسجيل المسار لطلبات GET
    public function get($uri, $controller)
    {
        $this->routes[] = [
            'uri' => $uri,
            'controller' => $controller,
            'method' => 'GET'
        ];
    }

    // تسجيل المسار لطلبات POST
    public function post($uri, $controller)
    {
        $this->routes[] = [
            'uri' => $uri,
            'controller' => $controller,
            'method' => 'POST'
        ];
    }

    // تسجيل المسار لطلبات DELETE
    public function delete($uri, $controller)
    {
        $this->routes[] = [
            'uri' => $uri,
            'controller' => $controller,
            'method' => 'DELETE'
        ];
    }

    // التحقق من المسار و استدعاء الـ Controller المناسب بناءً على الطريقة (GET, POST, DELETE)
    public function abort()
    {
        // إذا لم يتم العثور على المسار
        http_response_code(404);
        return view("404.template.html");
        die();
    }
}
