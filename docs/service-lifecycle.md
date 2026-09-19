# Service Lifecycle

A useful lifecycle is:

`Requested → Validated → Provisioning → Active → Suspended → Terminated`

Not every product uses every state, but transitions should be explicit and auditable.

## Design Rules

- Validate ownership and authorization before mutations.
- Make provisioning idempotent.
- Persist provider identifiers.
- Record transition timestamps.
- Make retries safe.
- Separate billing state from infrastructure state.
- Require explicit confirmation for destructive actions.

## Failure Handling

If provisioning partially succeeds, record the actual provider state and reconcile instead of blindly creating another service.
