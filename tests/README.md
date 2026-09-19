# Hosting Platform Tests

Public tests should use synthetic providers and disposable environments.

## Recommended Coverage

- Product/plan validation
- Service state transitions
- Provider adapter behavior
- Provisioning idempotency
- Retry and timeout handling
- Webhook authentication and deduplication
- Billing/entitlement rules
- Tenant authorization
- Destructive-action confirmation
- Reconciliation logic

## Integration Tests

Use provider mocks or sandbox APIs. Never point public CI at production infrastructure or customer services.
