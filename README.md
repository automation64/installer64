# Script: installer64

## Overview

Installer64 is a collection of application installers for reduced OS environments such as containers and CICD runners.

Warning: Installer64 is not inteded for regular OS environments (i.e.: VMs, etc.) where better deployment options are available (i.e.: Ansible, Chef, etc.)

## Usage

- Select application installer from `/opt/installer64`
- Check for installer parameters and set as environment variables
- Run installer

```shell
INST64_PARAMETERX='VALUEY' sudo -E /opt/installer64/install-APPLICATION_NAME
```

## Deployment

### Requirements

- Bash
- Sudo (if not running as root)
- BashLib64

### Installation

- Download and uncompress to `/opt/installer64` the latest version of the `installer64.tgz` package from the `Releases` project section.
- Install BashLib64

```shell
sudo /opt/installer64/install-bashlib64
```

## Contributing

Help on implementing new features and maintaining the code base is welcomed.

- [Guidelines](https://github.com/automation64/installer64/blob/main/CONTRIBUTING.md)
- [Contributor Covenant Code of Conduct](https://github.com/automation64/installer64/blob/main/CODE_OF_CONDUCT.md)

### License

[Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0.txt)

### Author

- [SerDigital64](https://github.com/serdigital64)
