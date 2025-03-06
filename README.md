# Script: installer64

- [Script: installer64](#script-installer64)
  - [Overview](#overview)
    - [Standard directory structure](#standard-directory-structure)
    - [Base Installer64 parameters](#base-installer64-parameters)
    - [Installer specific parameters](#installer-specific-parameters)
    - [Installation methods](#installation-methods)
  - [Usage](#usage)
  - [Deployment](#deployment)
    - [Requirements](#requirements)
    - [Installation](#installation)
  - [Contributing](#contributing)
    - [License](#license)
    - [Author](#author)

## Overview

_Installer64_ is a collection of application installer scripts for ephemeral OS environments such as containers, CICD runners, etc.
_Warning_: _Installer64_ is not inteded for regular OS environments (i.e.: VMs, etc.) where better deployment options are available (i.e.: Ansible, Chef, etc.)

### Standard directory structure

_Installer64_ is configured by default to use the following standard directory structure:

- `/opt`: base location for optional applications.
- `/opt/<APPLICATION>`: application installation directory.
- `/usr/local/bin`: used to provide easy to access sym-links to the installer application and related .env file.
- `$HOME`: base location for user-wide applications.
- `$HOME/.local/bin`: XDG standard user path. Same as `/usr/local/bin`, but user-wide.

### Base Installer64 parameters

_Installer64_ scripts can be customized using the following parameters as shell environment variables:

- `INST64_BASHLIB64`: Bashlib64 location. Default: `/opt/bl64/bashlib64.bash`
- `INST64_DEBUG`: Enable script debugging?. Default: `NO`
- `INST64_LOCAL_BIN`: Searchable path for local executables. Default: `/usr/local/bin`
- `INST64_LOCAL_ROOT`: Linux well-known base path for local content. Default: `/usr/local`
- `INST64_OPT_ROOT`: Linux well-known base path for non-os packaged content. Default: `/opt`

### Installer specific parameters

Additional parameters may be available and required by each application installer.

Parameter name format: `INST64_<INSTALLER_NAME>_<PARAMETER_NAME>`

Common parameters:

- `INST64_<INSTALLER_NAME>_DEVELOPMENT`: install development components?. Applicable to packages that separates runtime and development.
- `INST64_<INSTALLER_NAME>_METHOD`: installation method. See `Installation methods` section for further details
- `INST64_<INSTALLER_NAME>_PLATFORM`: hardware platform (e.g.: linux_amd64, etc.)
- `INST64_<INSTALLER_NAME>_REINSTALL`: for `BINARY` installation method only. Reinstall (replace) application if already present?.
- `INST64_<INSTALLER_NAME>_SOURCE`: package source URL (e.g.: GitHub repository, Distro repository, etc.)
- `INST64_<INSTALLER_NAME>_TARGET`: full path to the installation destination.
- `INST64_<INSTALLER_NAME>_VERSION`: target application version in semver format (x.y.z).

### Installation methods

_Installer64_ will implement the best available installation method for each application.
The selection criteria is based on the following priority list:

1. `BINARY`: application is distributed as a single pre-compiled binary. For example, GO based tools.
1. `CUSTOM`: last resort when no other option is available. Application is distributed as a single pre-compiled binary.
1. `EXTERNAL`: application is distributed using OS standard packages, stored in external package repository.
1. `GEM`: applications is distributed as Ruby module. Installation is done user-wide.
1. `HELM`: application is distributed as a Helm package.
1. `KREW`: application is distributed as a Krew (KubeCTL plugin) package.
1. `NATIVE`: application is distributed using OS standard packages. For example, RPM for RHEL, DEB for Debian/Ubuntu, etc.
1. `PIP`: applications is distributed as Python module. Used when `PIPX` is not available. Installation is done user-wide.
1. `PIPX`: applications is distributed as Python module. Installation is done user-wide.

## Usage

- Select application installer from `/opt/installer64`
- Check for required installer parameters and set as environment variables
- Run installer

```shell
INST64_PARAMETERX='VALUEY' sudo -E /opt/installer64/install-APPLICATION_NAME
```

## Deployment

### Requirements

- Bash: used by installer scripts.
- Sudo: most installers will require privileged execution. Used if not already running as root.
- Curl or Wget, Tar and GZip: used to download and unpack _Installer64_ and _BashLib64_

### Installation

- Download _Installer64_ package:
  - Select target releases: [https://github.com/automation64/installer64/releases](https://github.com/automation64/installer64/releases)
  - Download asset: `install-installer64`

```shell
export TARGET_RELEASE="$(curl -s "https://api.github.com/repos/automation64/installer64/releases/latest" | grep '"tag_name":' | cut -d '"' -f 4)" &&
test -n "$TARGET_RELEASE" &&
curl -LO https://github.com/automation64/installer64/releases/download/${TARGET_RELEASE}/install-installer64 &&
chmod 755 install-installer64 &&
echo "Installer ready: ./install-installer64" ||
echo 'Error: unable to download installer'
```

- Deploy _Installer64_ :

```shell
# Install on user's home (user-wide)
./install-installer64

# or, install on /opt (system-wide)
export INST64_SYSTEM_WIDE='YES'
sudo -E ./install-installer64
```

## Contributing

Help on implementing new features and maintaining the code base is welcomed.

- [Guidelines](https://github.com/automation64/installer64/blob/main/CONTRIBUTING.md)
- [Contributor Covenant Code of Conduct](https://github.com/automation64/installer64/blob/main/CODE_OF_CONDUCT.md)

### License

[Apache-2.0](https://www.apache.org/licenses/LICENSE-2.0.txt)

### Author

- [SerDigital64](https://github.com/serdigital64)
