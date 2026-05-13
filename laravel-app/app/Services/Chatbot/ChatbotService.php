<?php

namespace App\Services\Chatbot;

use Illuminate\Support\Facades\Log;

class ChatbotService
{
    public function __construct(
        private readonly OpenAIResponsesClient $client,
        private readonly LocalResponder $local,
    )
    {
    }

    public function reply(string $message, ?string $userName = null, ?string $sessionId = null): string
    {
        $system = $this->buildSystemPrompt($userName, $sessionId);
        $model = (string) config('chatbot.openai.model', 'gpt-4.1-mini');

        try {
            $text = $this->client->respond($model, $system, $message);
            $text = preg_replace("/\\s+$/", '', (string) $text);
            return trim($text) !== '' ? trim($text) : $this->fallback();
        } catch (\Throwable $e) {
            Log::warning('Chatbot LLM failed', [
                'error' => $e->getMessage(),
                'session_id' => $sessionId,
                'user_id' => auth()->id(),
            ]);
            $local = $this->local->reply($message);
            return $local ?: $this->fallback();
        }
    }

    private function buildSystemPrompt(?string $userName, ?string $sessionId): string
    {
        $brand = (string) config('chatbot.brand_name');
        $supportPhone = (string) config('chatbot.support_phone');
        $supportEmail = (string) config('chatbot.support_email');
        $hours = (string) config('chatbot.hours');
        $knowledge = $this->readKnowledge();

        $userLine = $userName ? "Nombre del cliente: {$userName}." : "Cliente invitado.";
        $sessionLine = $sessionId ? "Session: {$sessionId}." : '';

        return trim(implode("\n", array_filter([
            "Eres POLL-IA, el asistente oficial de {$brand}.",
            "Responde en español, tono amable y directo.",
            "Solo responde sobre: productos, pedidos, pagos, delivery, horarios, ubicación, contacto y uso de la app/web.",
            "Si falta información, pide 1-2 datos concretos (por ejemplo código de tracking o correo).",
            "Si el usuario pide algo fuera del negocio, responde que no aplica y ofrece el contacto humano.",
            "Horario: {$hours}.",
            "Soporte: {$supportPhone} / {$supportEmail}.",
            $userLine,
            $sessionLine,
            $knowledge ? "Base de conocimiento:\n{$knowledge}" : null,
        ])));
    }

    private function readKnowledge(): ?string
    {
        $path = (string) config('chatbot.knowledge_path');
        if ($path === '' || ! is_file($path)) return null;
        $content = @file_get_contents($path);
        $content = is_string($content) ? trim($content) : '';
        return $content !== '' ? $content : null;
    }

    private function fallback(): string
    {
        $brand = (string) config('chatbot.brand_name');
        $supportPhone = (string) config('chatbot.support_phone');
        $supportEmail = (string) config('chatbot.support_email');

        return "Ahora mismo no puedo responder con el asistente IA. Para ayudarte más rápido, escríbenos a {$supportPhone} o {$supportEmail} ({$brand}).";
    }
}
