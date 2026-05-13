<?php

return [
    'brand_name' => env('COMPANY_BRAND_NAME', env('APP_NAME', 'El Dorado')),
    'support_phone' => env('COMPANY_SUPPORT_PHONE', ''),
    'support_email' => env('COMPANY_SUPPORT_EMAIL', ''),
    'hours' => env('COMPANY_HOURS', '11:00 a. m. a 10:00 p. m.'),
    'knowledge_path' => base_path('resources/chatbot/knowledge.md'),

    'openai' => [
        'api_key' => env('OPENAI_API_KEY', ''),
        'model' => env('OPENAI_MODEL', 'gpt-4.1-mini'),
        'timeout' => env('OPENAI_TIMEOUT', 25),
    ],
];

