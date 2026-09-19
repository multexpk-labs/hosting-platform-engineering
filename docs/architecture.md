# Hosting Platform Architecture

A hosting platform is a control plane around compute, networking, storage, customers, billing, provisioning, monitoring, and support.

## Reference Architecture

`Customer → Portal/API → Authentication → Control Plane → Provider/Hypervisor → Service`

Supporting systems can include:

- Billing and invoices
- Provisioning workers
- DNS
- IP address management
- Monitoring and alerting
- Backups
- Support/ticketing
- Audit logs
- Notification services

## Control Plane vs Data Plane

The **control plane** manages desired state: products, accounts, services, provisioning requests, configuration, and lifecycle actions.

The **data plane** is the actual service delivered to the customer: VM, website, database, storage, or application.

Keep these boundaries explicit so failures in the control plane do not unnecessarily destroy or interrupt running services.
