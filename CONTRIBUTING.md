# Contributing

## Prepare Development Environment

- Prepare dev tools
  - Install GIT
- Clone GIT repository

  ```shell
  git clone https://github.com/automation64/installer64.git
  ```

- Adjust environment variables to match your configuration:

  - Copy environment definition files from templates:

  ```shell
  cp dot.local .local
  cp dot.secrets .secrets
  ```

  - Review and update content for both files to match your environment

- Download dev support scripts

  ```shell
  ./bin/dev-lib
  ```

- Load dev environment variables

  ```shell
  source bin/dev-set
  ```

## Update source code

- Add/Edit source code in: `src/`

## Test source code

- Add/update test-cases in: `test/`

## Repositories

- Project GIT repository: [https://github.com/automation64/installer64.git](https://github.com/automation64/installer64.git)
- Project Documentation: [README](README.MD)
- Release history: [CHANGELOG](CHANGELOG.md)
