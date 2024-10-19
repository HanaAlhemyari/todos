
<?php
$links = [
    'Home' => '/',
    'Blog' => '/blog',
    'Contact' => '/contact',
    'About' => '/about',
];
?>

<header class="text-gray-400 bg-gray-900 body-font dark:bg-dark-bg dark:text-dark-text">
    <div class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
        <nav class="flex lg:w-2/5 flex-wrap items-center text-base md:ml-auto">
            <?php foreach ($links as $key => $value): ?>
                <menu>
                    <a href="<?=$value?>" class="<?php echo isUrl($value) ? 'text-white lg:text-primary-700 dark:hover:text-white' : 'text-gray-700 hover:text-gray-50'; ?> block py-2 pr-4 pl-3 lg:hover:bg-transparent lg:p-0 mr-5" <?php echo isUrl($value) ? 'aria-current="page"' : ''; ?>>
                        <?= $key; ?>
                    </a>
                </menu>
            <?php endforeach; ?>
        </nav>
        <a class="flex order-first lg:order-none lg:w-1/5 title-font font-medium items-center text-white lg:items-center lg:justify-center mb-4 md:mb-0" href="/">
            <img src="/todos/imges/logo.png" alt="Logo" class="w-10 h-10 p-2 rounded-full">
            <span class="ml-3 text-xl xl:block lg:hidden">Rovaylo</span>
        </a>

        <div class="lg:w-2/5 inline-flex lg:justify-end ml-5 lg:ml-0 flex items-center">
            <div class="mr-4">
                <label for="dark-toggle-checkbox" class="inline-flex items-center space-x-4 cursor-pointer dark:text-gray-800">
                    <span>Dark</span>
                    <span class="relative">
                        <input id="dark-toggle-checkbox" type="checkbox" class="hidden peer" <?php echo isset($_COOKIE['dark-mode']) && $_COOKIE['dark-mode'] == 'true' ? 'checked' : ''; ?>>
                        <div class="w-10 h-6 rounded-full shadow-inner dark:bg-gray-600 peer-checked:dark:bg-violet-600"></div>
                        <div class="absolute inset-y-0 left-0 w-4 h-4 m-1 rounded-full shadow peer-checked:right-0 peer-checked:left-auto dark:bg-gray-100"></div>
                    </span>
                    <span>Light</span>
                </label>
            </div>

            <button onclick="window.location.href='/create'" class="inline-flex items-center bg-gray-800 border-0 py-1 px-3 focus:outline-none hover:bg-gray-700 rounded text-base mt-4 md:mt-0">
                Add new
                <svg fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="w-4 h-4 ml-1" viewBox="0 0 24 24">
                    <path d="M5 12h14M12 5l7 7-7 7"></path>
                </svg>
            </button>
        </div>
    </div>
</header>

<script>
    var themeToggleDarkIcon = document.getElementById('theme-toggle-dark-icon');
    var themeToggleLightIcon = document.getElementById('theme-toggle-light-icon');

    // Change the icons inside the button based on previous settings
    if (localStorage.getItem('color-theme') === 'dark' || (!('color-theme' in localStorage) && window.matchMedia('(prefers-color-scheme: dark)').matches)) {
        themeToggleLightIcon.classList.remove('hidden');
    } else {
        themeToggleDarkIcon.classList.remove('hidden');
    }

    var themeToggleBtn = document.getElementById('theme-toggle');

    themeToggleBtn.addEventListener('click', function() {

        // toggle icons inside button
        themeToggleDarkIcon.classList.toggle('hidden');
        themeToggleLightIcon.classList.toggle('hidden');

        // if set via local storage previously
        if (localStorage.getItem('color-theme')) {
            if (localStorage.getItem('color-theme') === 'light') {
                document.documentElement.classList.add('dark');
                localStorage.setItem('color-theme', 'dark');
            } else {
                document.documentElement.classList.remove('dark');
                localStorage.setItem('color-theme', 'light');
            }

            // if NOT set via local storage previously
        } else {
            if (document.documentElement.classList.contains('dark')) {
                document.documentElement.classList.remove('dark');
                localStorage.setItem('color-theme', 'light');
            } else {
                document.documentElement.classList.add('dark');
                localStorage.setItem('color-theme', 'dark');
            }
        }
    }
</script>
