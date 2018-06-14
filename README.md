## Tinkering with Jenkins
The focus of this code is to deploy a basic Jenkins environment into Google Cloud Platform for testing purposes.

### Provision and Build a cluster
1. Deploy the GCP template (sets up the infrastructure and VMs):
  ```
  make create-vms
  ```
  This will perform the following steps:
    2. Build infrastructure in GCP (network, subnet, firewall rules)
    2. Provision Jenkins server VM, with 2 persistent data disks and startup scripts:
        3. Install XFS tools and Docker prerequisites
        3. Format and mount data filesystems (docker, jenkins)
        3. Setup APT repository and install Docker
        3. Create systemd unit for running Jenkins server as a Docker container

1. When finished testing, you may destroy all the resources that were provisioned. To do so, run the following:
  ```
  make destroy-vms
  ```
