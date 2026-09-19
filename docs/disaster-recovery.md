# Disaster Recovery

## Define

- Critical control-plane components
- Critical data
- RPO
- RTO
- Backup retention
- Restore dependencies
- Recovery ownership

## Recovery Layers

1. Database
2. Application/control plane
3. Queue/workers
4. DNS and networking
5. Provider credentials/configuration
6. Customer-facing services

Test restoration in an isolated environment. A backup without a tested restore procedure is not a complete recovery plan.
