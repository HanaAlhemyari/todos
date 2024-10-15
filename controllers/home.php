    <?php

    spl_autoload_register(function ($class) {
        $class = str_replace('\\', DIRECTORY_SEPARATOR, $class);
        require_once base_path($class . '.php');
    }
    );
    use Core\Database;

    $config = require base_path( 'config.php');

    $db = new Database($config);

    $todos = $db->query("SELECT 
                        todos.id AS id,
                        todos.title AS title,
                        todos.description AS description,
                        todos.status AS status,
                        todos.created_at AS created_at,
                        todos.updated_at AS updated_at,
                        users.id AS user_id,
                        users.name AS user_name,
                        users.email AS user_email,
                        users.password AS user_password,
                        users.created_at AS user_created_at,
                        users.updated_at AS user_updated_at,
                        users.avatar AS avatar
                    FROM todos 
                    JOIN users ON todos.user_id = users.id ORDER BY created_at DESC LIMIT 2")->fetchAll();


    // تضمين ملف template الرئيسي
    view('home.template.html', ['todos' => $todos]);



    ?>
