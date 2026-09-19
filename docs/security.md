# Hosting Platform Security

## Core Controls

- Least-privilege service accounts
- MFA for administrative access
- Secret management
- Strong tenant boundaries
- API authentication and authorization
- Signed webhook verification
- Audit logs
- Rate limiting
- Input validation
- Safe destructive-action confirmation

## Tenant Isolation

Never allow one customer to access another customer's resources, identifiers, logs, backups, or credentials.

## Secrets

Never commit provider API tokens, SSH private keys, database passwords, customer data, internal IP inventories, or production configuration.
