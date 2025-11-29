# installer64

![License](https://img.shields.io/github/license/automation64/installer64)
![GitHub stars](https://img.shields.io/github/stars/automation64/installer64?style=social)
![GitHub forks](https://img.shields.io/github/forks/automation64/installer64?style=social)

🚀 **One-Line installers for Tools and Applications**

---

## 📌 Overview

**Installer64** is a collection of one-line installers designed to quickly deploy tools and applications in ephemeral environments (containers, CI/CD runners, etc.), and regular operating systems.

**⚠️ Important Note:** **Installer64** is **not** a package manager. It aims to provided a single step, non-interactive automated deployment experience regardless of the tool's installation method.

## 📦 Installation

### Minimum Requirements

- Bash V4: used by installer scripts.
- Sudo: most installers will require privileged execution. Used if not already running as root.
- Curl or Wget, Tar and GZip: used to download and unpack _Installer64_ and _BashLib64_

### Installation

Install directly from the repository:

```shell
curl -sL https://raw.githubusercontent.com/automation64/installer64/main/src/bootstrap | sh
```

---

## 🚀 Usage

- Select a tool installer from: `/opt/installer64`
- (Optional) Customize installation parameters.
- Run the system-wide installer:

```shell
sudo -E /opt/installer64/install-APPLICATION_NAME
```

- Or the user-wide installer:

```shell
/opt/installer64/install-APPLICATION_NAME
```

---

## 🏗️ Architecture

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

- `INST64_BASHLIB64`: Bashlib64 location. Default: `/opt/bl64`
- `INST64_CLI_PROMOTE`: Create symlink to searchable path?. Default: `YES`
- `INST64_DEBUG`: Enable script debugging?. Default: `NO`
- `INST64_LOCAL_BIN`: Searchable path for system-wide executables. Default: `/usr/local/bin`
- `INST64_LOCAL_ROOT`: Linux well-known base path for local content. Default: `/usr/local`
- `INST64_OPT_ROOT`: Linux well-known base path for non-os packaged content. Default: `/opt`
- `INST64_REFRESH_PACKAGE_MANAGER`: Refresh package manager before installation and cleanup after?. Default: `YES`
- `INST64_REPLACE_INSTALLED`: Replace if already installed?. Default: `NO`
- `INST64_SYSTEM_WIDE`: Install system wide?. Default: `YES` if running as root, `NO` otherwise.
- `INST64_USER_BIN`: Searchable path for user-wide executables. Default: `${HOME}/.local/bin`

### Installer specific parameters

Additional parameters are available depending on the installation method.

Parameter name format: `INST64_<INSTALLER_NAME>_<PARAMETER_NAME>`

Common parameters:

- `INST64_<INSTALLER_NAME>_METHOD`: Installation method.
- `INST64_<INSTALLER_NAME>_PLATFORM`: Hardware platform (e.g., linux_amd64).
- `INST64_<INSTALLER_NAME>_TARGET`: Full path to installation destination.
- `INST64_<INSTALLER_NAME>_VERSION`: Target application version in semver format (x.y.z).

### Installation Methods

_Installer64_ implements the optimal installation method for each application:

1. `AUTO`: Determine best available method
1. `BINARY`: Pre-compiled binary download
1. `BREW`: HomeBrew package
1. `CUSTOM`: Custom installer. Catch all method, when no other option is available
1. `EXTERNAL`: OS standard packages from external repository
1. `FPAK`: FlatPak package (system-wide installation)
1. `KREW`: Krew (KubeCTL plugin) package (user-wide installation)
1. `NATIVE`: OS standard packages from package repository
1. `NPM`: NodeJS module (user-wide installation)
1. `PACKAGE`: Standalone OS package file (RPM for RHEL, DEB for Debian/Ubuntu, etc.)
1. `PIP`: Python module - used when `PIPX` unavailable (user-wide installation)
1. `PIPX`: Python module (user-wide installation)

---

## 🛠 Contributing

Contributions are welcome! Help us improve by submitting issues, feature requests, or pull requests.

- [Code of Conduct](https://github.com/automation64/installer64/blob/main/CODE_OF_CONDUCT.md)

---

## ⚠️ Disclaimer

This repository is provided "as is" without any warranties. The author is not responsible for any damages or issues arising from its use. Additionally, this project is not affiliated with or endorsed by any organization or entity. Use at your own risk.

---

## 📜 License

Installer64 is licensed under the [Apache-2.0 License](https://www.apache.org/licenses/LICENSE-2.0.txt).

---

## 👤 Author

- [SerDigital64](https://github.com/serdigital64)

---

🌟 **If you find this project useful, consider giving it a star!** ⭐
