  # X_PLATFORM_SELECTION_PLACEHOLDER_X #
    if [[ -z "$INST64_X_APP_NAME_CAPS_X_PLATFORM" ]]; then
      # shellcheck disable=SC2249
      case "$BL64_OS_MACHINE" in
        "$BL64_OS_MACHINE_ARM64" ) INST64_X_APP_NAME_CAPS_X_PLATFORM='darwin/arm64';;
        "$BL64_OS_MACHINE_AMD64" ) INST64_X_APP_NAME_CAPS_X_PLATFORM='linux/amd64';;
      esac
    fi
