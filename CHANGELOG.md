# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [3.21.0]

### Changed

- KubeLinter
  - Update OS compatibility list
- ArgoCD CLI
  - Update OS compatibility list

### Removed

- ArgoCD installer

## [3.20.0]

### Changed

- YAMLLint
  - Update OS compatibility list

## [3.19.0]

### Added

- Installer
  - TaskFile
  - Dagger

## [3.18.0]

### Changed

- YQ
  - Update OS compatibility list
- Batscore
  - Update OS compatibility list

## [3.17.0]

### Added

- Installer
  - FD
  - Zoxide

### Changed

- TFSec
  - Update OS compatibility list
- TFLint
  - Update OS compatibility list
- LNav
  - Update OS compatibility list

## [3.16.0]

### Changed

- Terraform
  - Update OS compatibility list

## [3.15.0]

### Added

- Installer
  - Bat

### Changed

- AWS CLI
  - Published aws_complete to searchable path

## [3.14.0]

### Added

- Installer
  - Gomplate
  - FZF
  - HTTPie
  - EZA
  - DUF
  - GPing

### Changed

- KubeConform
  - Updated OS compatibility
- KubeLinter
  - Updated OS compatibility
- ShellCheck
  - Updated OS compatibility

## [3.13.0]

### Added

- Installer
  - Docker

### Changed

- GitHub CLI
  - Update OS compatibility list

## [3.12.0]

### Fixed

- MySQL CLI
  - Replaced deprecated repo key

### Changed

- Go
  - Update OS compatibility list

### Added

- Installer64
  - added BashLib64 installation

## [3.11.0]

### Added

- Installer:
  - Act
- Cosign
  - System Wide parameter

## [3.10.0]

### Changed

- Added OS version compatibility mode to allow non-tested OS versions (same distro)
  - install-ansible
  - install-ansiblelint
  - install-argocd
  - install-argocdcli
  - install-awscli
  - install-batscore
  - install-cosign
  - install-crane
  - install-dockle
  - install-fluxcdcli
  - install-gcc
  - install-gitui
  - install-go
  - install-hadolint
  - install-helm
  - install-helm-chart-releaser
  - install-helm-chart-tester
  - install-hugo
  - install-istioctl
  - install-jekyll
  - install-jenkinsxcli
  - install-k9s
  - install-kind
  - install-krew
  - install-ksniff
  - install-kubeconform
  - install-kubectl
  - install-kubelinter
  - install-kubepug
  - install-kubescape
  - install-kubeseal
  - install-lazydocker
  - install-lnav
  - install-minikube
  - install-mkdocs
  - install-nodejs
  - install-pluto
  - install-podman
  - install-popeye
  - install-precommit
  - install-python
  - install-ruby
  - install-shellcheck
  - install-shfmt
  - install-stern
  - install-tflint
  - install-tfsec
  - install-yamllint
  - install-yq

### Fixed

- Installer64
  - Post-install error when providing relative path for target directory
  - Package download error when current directory is read-only: now use temporary writable location
- Bashlib64
  - Post-install error when providing relative path for target directory
  - Package download error when current directory is read-only: now use temporary writable location

[3.21.0]: https://github.com/automation64/installer64/compare/v3.20.0...v3.21.0
[3.20.0]: https://github.com/automation64/installer64/compare/v3.19.0...v3.20.0
[3.19.0]: https://github.com/automation64/installer64/compare/v3.18.0...v3.19.0
[3.18.0]: https://github.com/automation64/installer64/compare/v3.17.0...v3.18.0
[3.17.0]: https://github.com/automation64/installer64/compare/v3.16.0...v3.17.0
[3.16.0]: https://github.com/automation64/installer64/compare/v3.15.0...v3.16.0
[3.15.0]: https://github.com/automation64/installer64/compare/v3.14.0...v3.15.0
[3.14.0]: https://github.com/automation64/installer64/compare/v3.13.0...v3.14.0
[3.13.0]: https://github.com/automation64/installer64/compare/v3.12.0...v3.13.0
[3.12.0]: https://github.com/automation64/installer64/compare/v3.11.0...v3.12.0
[3.11.0]: https://github.com/automation64/installer64/compare/v3.10.0...v3.11.0
[3.10.0]: https://github.com/automation64/installer64/compare/v3.9.0...v3.10.0
