# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

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

## [3.9.0]

### Added

- Installers
  - Kind
  - PreCommit
- ShellCheck
  - Added binary installation method

### Fixed

- KubeSeal
  - Replaced method for getting latest version: use tag instead of release query as the latest release may be from a different package
- Popeye
  - Default platform name

## [3.8.0]

### Added

- Installers:
  - MySQL CLI
- Helm
  - Added system-wide installation flag
- Kubectl
  - Added system-wide installation flag
  - Added support for Alpine3

### Fixed

- MongoDB CLI
  - Os compatibility check

## [3.7.0]

### Added

- Installers:
  - Minikube
  - Kube-Linter
  - Helm Chart Tester
- Helm
  - Enabled support for Alpine3

## [3.6.0]

### Added

- Installers:
  - Hugo
  - KubeSeal (Sealed Secrets CLI)
  - Hashicorp Vault CLI
  - NodeJS

## [3.5.0]

### Added

- Installers:
  - Ruby
  - GCC
  - Jekyll
  - SHFMT

## [3.4.0]

### Changed

- Python3
  - Enabled support for Alpine3
- MkDocs
  - Enabled support for Alpine3
- YQ
  - Enabled support for Alpine3, Centos7, OL7, SLES15, UB18, Deb9

## [3.3.0]

### Changed

- Enabled support for Ubuntu-22, Alpine-3, Oraclelinux-9:
  - Cosign
  - Crane
  - Dockle
  - Hadolint
  - Lazydocker

## [3.2.0]

### Added

- Installers:
  - YQ
  - Pluto
  - Kubeconform

## [3.1.0]

### Added

- Stern installer
- KubePug installer
- KSniff installer
- Popeye installer
- LNav installer

### Changed

- BashLib64: added release support

## [3.0.0]


### Changed

- ShellCheck: **breaking-change**
  - replaced parameter `INST64_SHELLCHECK_FLAG_NATIVE` for `INST64_SHELLCHECK_METHOD`
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

[3.11.0]: https://github.com/automation64/installer64/compare/v3.10.0...v3.11.0
[3.10.0]: https://github.com/automation64/installer64/compare/v3.9.0...v3.10.0
[3.9.0]: https://github.com/automation64/installer64/compare/v3.8.0...v3.9.0
[3.8.0]: https://github.com/automation64/installer64/compare/v3.7.0...v3.8.0
[3.7.0]: https://github.com/automation64/installer64/compare/v3.6.0...v3.7.0
[3.6.0]: https://github.com/automation64/installer64/compare/v3.5.0...v3.6.0
[3.5.0]: https://github.com/automation64/installer64/compare/v3.4.0...v3.5.0
[3.4.0]: https://github.com/automation64/installer64/compare/v3.3.0...v3.4.0
[3.3.0]: https://github.com/automation64/installer64/compare/v3.2.0...v3.3.0
[3.2.0]: https://github.com/automation64/installer64/compare/v3.1.0...v3.2.0
[3.1.0]: https://github.com/automation64/installer64/compare/v3.0.0...v3.1.0
[3.0.0]: https://github.com/automation64/installer64/compare/v2.0.0...v3.0.0
[2.0.0]: https://github.com/automation64/installer64/compare/v1.6.0...v2.0.0
[1.6.0]: https://github.com/automation64/installer64/compare/v1.5.0...v1.6.0
[1.5.0]: https://github.com/automation64/installer64/compare/v1.4.0...v1.5.0
[1.4.0]: https://github.com/automation64/installer64/compare/v1.3.0...v1.4.0
[1.3.0]: https://github.com/automation64/installer64/compare/v1.2.0...v1.3.0
[1.2.0]: https://github.com/automation64/installer64/compare/v1.1.0...v1.2.0
[1.1.0]: https://github.com/automation64/installer64/compare/v1.0.0...v1.1.0
[1.0.0]: https://github.com/automation64/installer64/releases/tag/v1.0.0
