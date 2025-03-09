  # X_PLATFORM_SELECTION_PLACEHOLDER_X #
    if [[ -z "$INST64_X_APP_NAME_CAPS_X_PLATFORM" ]]; then
      # shellcheck disable=SC2249
      case "$BL64_OS_MACHINE" in
        "$BL64_OS_MACHINE_ARM64" ) INST64_X_APP_NAME_CAPS_X_PLATFORM='darwin/arm64';;
        "$BL64_OS_MACHINE_AMD64" ) INST64_X_APP_NAME_CAPS_X_PLATFORM='linux/amd64';;
      esac
    fi

# Alternative Machine

    if [[ -z "$INST64_X_APP_NAME_CAPS_X_PLATFORM" ]]; then
      # shellcheck disable=SC2249
      case "$BL64_OS_MACHINE" in
        "$BL64_OS_MACHINE_ARM64" ) INST64_X_APP_NAME_CAPS_X_PLATFORM='Darwin_arm64';;
        "$BL64_OS_MACHINE_AMD64" ) INST64_X_APP_NAME_CAPS_X_PLATFORM='Linux_amd64';;
      esac
    fi

# Alternative Machine

    if [[ -z "$INST64_X_APP_NAME_CAPS_X_PLATFORM" ]]; then
      # shellcheck disable=SC2249
      case "$BL64_OS_MACHINE" in
        "$BL64_OS_MACHINE_ARM64" ) INST64_X_APP_NAME_CAPS_X_PLATFORM='macOS_amd64';;
        "$BL64_OS_MACHINE_AMD64" ) INST64_X_APP_NAME_CAPS_X_PLATFORM='linux_amd64';;
      esac
    fi

# Alternative Machine

    if [[ -z "$INST64_X_APP_NAME_CAPS_X_PLATFORM" ]]; then
      # shellcheck disable=SC2249
      case "$BL64_OS_MACHINE" in
        "$BL64_OS_MACHINE_ARM64" ) INST64_X_APP_NAME_CAPS_X_PLATFORM='darwin_amd64';;
        "$BL64_OS_MACHINE_AMD64" ) INST64_X_APP_NAME_CAPS_X_PLATFORM='linux_amd64';;
      esac
    fi

# Alternative Machine

    if [[ -z "$INST64_X_APP_NAME_CAPS_X_PLATFORM" ]]; then
      # shellcheck disable=SC2249
      case "$BL64_OS_MACHINE" in
        "$BL64_OS_MACHINE_ARM64" ) INST64_X_APP_NAME_CAPS_X_PLATFORM='darwin-arm64';;
        "$BL64_OS_MACHINE_AMD64" ) INST64_X_APP_NAME_CAPS_X_PLATFORM='linux-amd64';;
      esac
    fi

# Alternative Machine

    if [[ -z "$INST64_X_APP_NAME_CAPS_X_PLATFORM" ]]; then
      # shellcheck disable=SC2249
      case "$BL64_OS_MACHINE" in
        "$BL64_OS_MACHINE_ARM64" ) INST64_X_APP_NAME_CAPS_X_PLATFORM='macos-arm64';;
        "$BL64_OS_MACHINE_AMD64" ) INST64_X_APP_NAME_CAPS_X_PLATFORM='linux-x86_64';;
      esac
    fi

# Alternative MUSL

    if [[ -z "$INST64_X_APP_NAME_CAPS_X_PLATFORM" ]]; then
      # shellcheck disable=SC2249
      case "$BL64_OS_MACHINE" in
      "$BL64_OS_MACHINE_ARM64") INST64_X_APP_NAME_CAPS_X_PLATFORM='aarch64-apple-darwin' ;;
      "$BL64_OS_MACHINE_AMD64")
        if bl64_os_is_distro "${BL64_OS_ALP}" "${BL64_OS_DEB}" "${BL64_OS_SLES}"; then
          INST64_X_APP_NAME_CAPS_X_PLATFORM='x86_64-unknown-linux-musl'
        elif bl64_os_is_distro "${BL64_OS_OL}" "${BL64_OS_FD}" "${BL64_OS_UB}" "${BL64_OS_KL}"; then
          INST64_X_APP_NAME_CAPS_X_PLATFORM='x86_64-unknown-linux-gnu'
        fi
        ;;
      esac
    fi
