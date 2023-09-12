# Script: installer64

## Overview

_Installer64_ is a collection of application installer scripts for reduced OS environments such as containers and CICD runners.
_Warning_: _Installer64_ is not inteded for regular OS environments (i.e.: VMs, etc.) where better deployment options are available (i.e.: Ansible, Chef, etc.)

### Standard directory structure

_Installer64_ is configured by default to use the following standard directory structure:

- `/opt`: base location for optional applications.
- `/opt/<APPLICATION>`: installed optional application. _Installer64_ will use this for non-os provided applications.
- `/usr/local/bin`: searchable path for executables. _Installer64_ will use this to symlink non-os provided application executables.

### Base Installer64 parameters

_Installer64_ scripts can be customized using the following parameters as shell environment variables:

- `INST64_BASHLIB64`: Bashlib64 location. Default: `/opt/bl64/bashlib64.bash`
- `INST64_DEBUG`: Enable script debugging?. Default: `NO`
- `INST64_LOCAL_BIN`: Searchable path for local executables. Default: `/usr/local/bin`
- `INST64_LOCAL_ROOT`: Linux well-known base path for local content. Default: `/usr/local`
- `INST64_OPT_ROOT`: Linux well-known base path for non-os packaged content. Default: `/opt`

Additional parameters may be available and required by each application installer.

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
- BashLib64: automation library used by installer scripts.
- Curl or Wget, Tar and GZip: used to download and unpack _Installer64_ and _BashLib64_

### Installation

- Download _Installer64_ package:
  - Select target releases: [https://github.com/automation64/installer64/releases](https://github.com/automation64/installer64/releases)
  - Download asset: `installer64-scripts.tgz`

```shell
cd /tmp &&
export TARGET_RELEASE='v1.1.0' &&
curl -LO https://github.com/automation64/installer64/releases/download/${TARGET_RELEASE}/installer64-scripts.tgz
```

- Uncompress package:

```shell
test -f /tmp/installer64-scripts.tgz &&
sudo mkdir /opt/installer64 &&
sudo chmod 755 /opt/installer64 &&
cd /opt/installer64 &&
sudo tar zxf /tmp/installer64-scripts.tgz &&
sudo chown -R root:root /opt/installer64
```

- Install _BashLib64_:

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
