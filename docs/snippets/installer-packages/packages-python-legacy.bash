# X_SELECT_PKG_PLACEHOLDER_X
  local version_legacy='X_LEGACY_VERSION_X'

    if bl64_os_match "${X_BL64_OS_ID_X}"; then
      bl64_msg_show_alert "fixing package version_target for compatibility to target OS (${version_legacy})"
      version_target="==${version_legacy}.*"
    elif [[ "$INST64_X_APP_NAME_CAPS_X_VERSION" == 'latest' ]]; then
