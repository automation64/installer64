# installer64

![License](https://img.shields.io/github/license/automation64/installer64)
![GitHub stars](https://img.shields.io/github/stars/automation64/installer64?style=social)
![GitHub forks](https://img.shields.io/github/forks/automation64/installer64?style=social)

🚀 **Streamlined Application Installation for Ephemeral Environments**

---

## 📌 Overview

**Installer64** is a collection of command-line scripts designed to quickly install applications in temporary environments like Docker containers, CI/CD runners (GitHub Actions, GitLab CI, etc.), and other short-lived systems.

It aims to provide the simplest and most efficient way to get specific tools ready within these contexts.

**⚠️ Important Note:** **Installer64** is **not** a package manager. It focuses solely on executing the most appropriate installation steps for an application in a fresh environment (e.g., downloading a binary, using a native package manager minimally, running official install scripts).

### Standard directory structure

_Installer64_ is configured by default to use the following standard directory structure:

- System-wide installations:
  - `/opt`: base destination for installations
  - `/opt/<APPLICATION>`: application installation directory.
  - `/usr/local/bin`: standard searchable path where application binaries are published to
- User-wide installations:
  - `$HOME/at64`: base destination for installations
  - `$HOME/at64/<APPLICATION>`: application installation directory.
  - `$HOME/.local/bin`: standard searchable path where application binaries are published to

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

- `INST64_<INSTALLER_NAME>_METHOD`: installation method. See `Installation methods` section for further details
- `INST64_<INSTALLER_NAME>_PLATFORM`: hardware platform (e.g.: linux_amd64, etc.)
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
1. `KREW`: application is distributed as a Krew (KubeCTL plugin) package.
1. `NATIVE`: application is distributed using OS standard packages. For example, RPM for RHEL, DEB for Debian/Ubuntu, etc.
1. `PIP`: applications is distributed as Python module. Used when `PIPX` is not available. Installation is done user-wide.
1. `PIPX`: applications is distributed as Python module. Installation is done user-wide.

---

## 📦 Installation

### Minimum Requirements

- Bash V4: used by installer scripts.
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

---

## 🚀 Usage

- Select application installer from `/opt/installer64`
- Check for required installer parameters and set as environment variables
- Run installer

```shell
INST64_PARAMETERX='VALUEY' sudo -E /opt/installer64/install-APPLICATION_NAME
```

## 🛠 Contributing

Contributions are welcome! Help us improve by submitting issues, feature requests, or pull requests.

- [Contribution Guidelines](https://github.com/automation64/installer64/blob/main/CONTRIBUTING.md)
- [Code of Conduct](https://github.com/automation64/installer64/blob/main/CODE_OF_CONDUCT.md)

---

## 📜 License

Installer64 is licensed under the [Apache-2.0 License](https://www.apache.org/licenses/LICENSE-2.0.txt).

---

## 👤 Author

- [SerDigital64](https://github.com/serdigital64)

---

🌟 **If you find this project useful, consider giving it a star!** ⭐
