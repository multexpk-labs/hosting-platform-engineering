# Provisioning

## Generic Workflow

`Order → Payment/Eligibility → Validate → Allocate → Create → Configure → Verify → Activate`

Provisioning should be observable and repeatable.

## Provider Adapter

Use a provider abstraction so application code does not depend directly on one provider's API.

Conceptual interface:

- create service
- fetch service
- update service
- suspend service
- terminate service
- rebuild/reinstall where supported
- retrieve usage/status

## Idempotency

Associate each provisioning request with a durable operation identifier. A retry should reconcile the existing operation rather than create an unintended duplicate.
