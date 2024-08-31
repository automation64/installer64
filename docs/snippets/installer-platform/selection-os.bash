  # X_PLATFORM_SELECTION_PLACEHOLDER_X #
    if [[ -z "$INST64_X_APP_NAME_CAPS_X_PLATFORM" ]]; then
      if bl64_os_match "${BL64_OS_ALP}" "${BL64_OS_DEB}" "${BL64_OS_SLES}"; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='X_PLATFORM_A_X'
      else
        INST64_X_APP_NAME_CAPS_X_PLATFORM='X_PLATFORM_B_X'
      fi
    fi
