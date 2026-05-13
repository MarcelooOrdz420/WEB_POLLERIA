<?php
require __DIR__ . '/vendor/autoload.php';
$app = require __DIR__ . '/bootstrap/app.php';
$kernel = $app->make('Illuminate\\Contracts\\Console\\Kernel');
$kernel->bootstrap();
$val = (string) config('chatbot.openai.api_key');
echo $val !== '' ? 'SET' : 'EMPTY';
