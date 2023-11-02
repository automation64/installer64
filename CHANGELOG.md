# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [3.0.0]

### Added

- ShellCheck: support for Ubuntu-22
- KubeCTL: support for Ubuntu-22, Alpine3
- Helm: support for Ubuntu-22
- Helm Chart Releaser: support for Ubuntu-22
- IstioCTL: support for Ubuntu-22
- Krew: support for Ubuntu-22
- ArgoCD CLI: support for Ubuntu-22
- FluxCD CLI: support for Ubuntu-22
- JenkinsX CLI: support for Ubuntu-22
- Kubescape: support for Ubuntu-22
- Azure CLI: support for Ubuntu-22
- GCloud CLI: support for Ubuntu-22
- AWS CLI: support for Ubuntu-22

### Changed

- ShellCheck: **breaking-change**
  - replaced parameter `INST64_SHELLCHECK_FLAG_NATIVE` for `INST64_SHELLCHECK_METHOD`

## [2.0.0]

### Added

- Installers for:
  - FluxCD CLI
  - ArgoCD CLI
  - JenkinsX CLI
  - ArgoCD

### Changed

- **breaking-change** Updated mandatory requirements for:
  - install-awscli
  - install-batscore
  - install-cosign
  - install-crane
  - install-dockercli
  - install-dockle
  - install-gcloud
  - install-hadolint
  - install-helm
  - install-helm-chart-releaser
  - install-istioctl
  - install-k9s
  - install-krew
  - install-kubectl
  - install-kubescape
  - install-lazydocker
  - install-mkdocs
  - install-mongodbcli
  - install-podman
  - install-shellcheck
  - install-tflint
  - install-tfsec

## [1.6.0]

### Added

- GitUI installer
- Azure CLI installer
- GoLang installer
- Cosign installer
- Hadolint installer

## [1.5.0]

### Added

- Crane installer
- Dockle installer
- Hadolint installer
- Lazydocker installer
- Krew installer

### Changed

- Terraform: added Alpine support

## [1.4.0]

### Added

- GitHub CLI installer
- Trivy installer

### Changed

- TFSec, TFLint: added OS compatibility check

## [1.3.0]

### Added

- IstioCTL installer

### Changed

- Ansible: removed legacy version

## [1.2.0]

### Added

- MkDocs installer. Includes plugins and dependencies

### Fixed

- Install64: get latest release version option

## [1.1.0]

### Added

- AnsibleLint installer

### Changed

- Ansible: default to PipX install for python mode (parameter: `INST64_ANSIBLE_PIPX`)

## [1.0.0]

### Changed

- Installers migrated from Container64 project

[3.0.0]: https://github.com/automation64/installer64/compare/v2.0.0...v3.0.0
[2.0.0]: https://github.com/automation64/installer64/compare/v1.6.0...v2.0.0
[1.6.0]: https://github.com/automation64/installer64/compare/v1.5.0...v1.6.0
[1.5.0]: https://github.com/automation64/installer64/compare/v1.4.0...v1.5.0
[1.4.0]: https://github.com/automation64/installer64/compare/v1.3.0...v1.4.0
[1.3.0]: https://github.com/automation64/installer64/compare/v1.2.0...v1.3.0
[1.2.0]: https://github.com/automation64/installer64/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/automation64/installer64/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/automation64/installer64/releases/tag/v1.0.0
