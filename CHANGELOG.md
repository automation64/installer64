# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [8.0.0]

### Added

- Installers
  - CSH
  - Fish
  - GhosTTY
  - GIT
  - Hyper
  - IOTop
  - IPTrafNG
  - KSH
  - LTrace
  - NMap
  - Playwright
  - PowerShell
  - RSync
  - S-TUI
  - Screen
  - STrace
  - StressNG
  - SysStat
  - Tabby
  - Telnet
  - TMUX
  - YARN
  - ZSH
  - ZSH-Autosuggestions
  - ZSH-FZF-tab
  - ZSH-Powerlevel10k
  - ZSH-Syntax-highlighting

### Changed

- MC
  - Added remaining Linux OS support
- Installer64
  - **breaking-change** removed BashLib64 installer. Now is installed by the bootstrap script
  - Default to system wide if user is root

### Fixed

- KeePassXC
  - Typo

## [7.6.0]

### Added

- Core
  - SNAP method
- Installers
  - Slack Desktop

### Fixed

- Core
  - bootstrap: source repository typo
- Google Chrome
  - Platform name for RPM
- K9S
  - Fixed version flag

## [7.5.0]

### Added

- Installers
  - KeePassXC
  - Antigen
  - Alacritty
  - YAY
  - PDFSam
  - ZIP
  - Restic
- ArchLinux support
  - NeoVim
  - VSCode
  - AWSCLI
  - Google-Chrome
- Core
  - AUR installation method using YAY

### Changed

- Core
  - Minimum BashLib64 version: 22.12
  - Enforce system-wide for native, external and package

## [7.4.0]

## Added

- Installer
  - Grype
  - Glances

## [7.3.0]

## Added

- Installer64
  - Go installation method
- Installers
  - GoLangCI-Lint
  - CookieCutter
  - BandWhich
  - ConfTest
  - GoVulnCheck
  - Dependency-Check

## Changed

- Installer64
  - Default umask for target content

## Fixed

- Go
  - Missing GoFmt symlink

## [7.2.0]

### Added

- Installer64
  - Added emoji verbose format (requires BL64 upgrade to 22.10.0)
- Installers
  - OPA
  - HashCat
  - RustScan
  - MITMProxy
  - Open-Interpreter
  - Checkov
  - Doggo
  - DNSX
  - AMASS
  - CPPCheck
  - Nuclei
  - GoSec
  - CodeQL

## [7.1.0]

### Added

- Installer64
  - Check BashLib64 compatibility

### Fixed

- Installer64
  - Detect already installed app now skips incompatible methods
  - Version file permissions

## [7.0.0]

### Added

- Installer64
  - New method: PACKAGE, for standalone native OS package files
  - New method: EXTERNAL, for native OS packages from external repositories
- Installers
  - Midnight Commander

### Changed

- **Breaking change**: changed installation method from NATIVE to PACKAGE for standalone package installers
- **Breaking change**: changed installation method from NATIVE to EXTERNAL for external repository isntallers

## [6.13.0]

### Added

- Installer64
  - Manjaro support
- Installers
  - VSCodium

### Changed

- Java
  - Default version to 25

## [6.12.1]

### Added

- Installer64
  - CachyOS support

## [6.11.3]

### Added

- Installer64
  - ArchLinux support
  - Set verbosity format (INST64_VERBOSE with BL64 values)

### Changed

- Installer64
  - INST64_DEBUG: now uses BL64 values (NONE, ALL, LIB, APP)

## [6.10.0]

### Added

- Installer64
  - Bootstrap script for first time install
- Installers
  - RedHat Code Ready Containers
  - RedHat OpenShift CLI
  - IBM Cloud CLI

## [6.9.1]

### Added

- Installers
  - JWT-CLI
  - Auth0 Deploy CLI

### Added

- Installers
  - ClamAV
  - Auth0CLI
- Installer64
  - lib-bl64: make CLI promotion optional

## [6.7.3]

### Added

- Modules
  - Java

### Fixed

- Installer64
  - lib-bl64: Detection of PIPX on Mac
- AWSCLI
  - Platform selector for MacOS

## [6.6.0]

### Added

- Installers
  - Squid
  - Pkl
- OCI
  - PIPX support

## [6.5.0]

### Added

- Installers
  - Micro
  - SuperFile
  - VSCode
  - Google-Chrome
  - Kitty
  - OSV-Scanner
  - InfraCost
  - ProtonVPN
- Zoom
  - Ubuntu support

## [6.4.0]

### Added

- Installers
  - Caddy
  - OCI

### Changed

- Lib
  - bl64: automatically switch SYSTEM_WIDE off when app does not support system-wide install, instead of failing.

## [6.3.0]

### Added

- Installers
  - APlatform64
  - Zoom
  - Atuin
- Lib
  - bl64: flatpak method, native file package method

## [6.2.1]

### Added

- Installers
  - Overmind

### Fixed

- Installers
  - volta
- Libs
  - bash: fixed opt_root creation

### Changed

- All
  - Default API retry from 5x5 to 3x10

## [6.1.0]

### Added

- Installers
  - Gemini CLI
  - Claud Code
  - OpenAI Codex
- LibBL64
  - Allow application level system wide setting: INST64_<APP>_SYSTEM_WIDE

## [6.0.14]

### Added

- Installers
  - Bruno
  - 7Zip
  - XCodeCLI
  - KST
  - BZip2
  - XZ
- Core
  - Shared library lib-bl64
  - Shared library lib-bash

### Changed

- **breaking-change** Installers migrated to lib-bl64
  - All bashlib64 based
- **breaking-change** Installers migrated to lib-bash
  - All bash based
- Native installers
  - Added INST64_REFRESH_PACKAGE_MANAGER to control repo refresh and clean up
