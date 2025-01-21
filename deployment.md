# Deployment concepts
## Server Provisioning
- bare metal 
- virtual machines
## Infrastructure as code
- Write a machine-readable definition of what servers have to be provided
- Terraform for automated provisioning of server resources based on provider API
## Configuration management
- Maintaining desired state
- Configure already provisioned servers to a specific state that can support the application; NGINX configs, PostgreSQL pg_hba.conf, or firewall
## Application deployment
- copy via sftp.  But what about updating dependencies and precompiling assets? (Capistrano)
- Linux containers: Docker

