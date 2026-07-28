# Automated Virtual Machine Template Construction Based on CI/CD using Packer

### Feature List:
- Provides mainstream operating system versions: Windows 2016/2019, CentOS 7/8, and Ubuntu 18/19/20.
- Provides GUI versions for CentOS 7/8.
- Semantic versioning with automated increments; automatically uses the `-latest` suffix in vCenter to maintain the most current template.
- Provides `ks.cfg` CD-ROM automated construction for CentOS 8 (since CentOS 8 does not support floppy disks by default) and automated upload to virtualization storage.
- All Linux system network interface names are changed to `eth0`.
- An `ops` account is automatically created on all systems for maintenance/final users.
- VMware Tools installed on all systems; GUI systems support adaptive resolution.
- Basic optimization and hardening applied to all systems.
- Latest operating system patches automatically installed on all systems.
- All systems utilize the VMware Para-virtual (pvscsi) controller and VMXNET 3 network adapter type.
- For CentOS 8-GUI: installs the latest Linux kernel (5.8.X) and configures it as the preferred boot kernel.
- Provides a Dockerfile for the `packer-gitops` container.
- Scheduled automated build tasks (once per month).
- vCenter Content Library integration.
- Custom passwords for Root, OPS, and Administrator accounts defined in CI/CD configuration files.
- Lists templates in the Content Library upon completion of the build.
- Uses Windows installation media with the latest patches to optimize Windows deployment time.

### Future Features (incoming):
- Template vulnerability scanning.
- Automated deployment of SaltStack Minion to templates.
