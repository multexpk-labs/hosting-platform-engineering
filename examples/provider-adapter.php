<?php

declare(strict_types=1);

/**
 * Generic provider adapter example.
 * No real provider credentials or API calls are included.
 */
final class ProviderAdapter
{
    public function __construct(private readonly string $providerName)
    {
    }

    public function create(array $request): array
    {
        if (empty($request['request_id'])) {
            throw new InvalidArgumentException('request_id is required');
        }

        return [
            'provider' => $this->providerName,
            'request_id' => $request['request_id'],
            'status' => 'accepted',
        ];
    }
}
