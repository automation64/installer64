# Snippet: install-ruby-1.0.0

# X_STAND_ALONE_FUNCTIONS_X #
function inst64_X_APP_NAME_X_install_with_gem() {
  bl64_dbg_app_show_function
  # shellcheck disable=SC2086
  "$INST64_X_APP_NAME_CAPS_X_GEM_BIN" \
    install \
    --no-document \
    --norc \
    $INST64_X_APP_NAME_CAPS_X_PACKAGES ||
    return $?
  "$INST64_X_APP_NAME_CAPS_X_GEM_BIN" sources --clear-all
  return 0
}

# X_GLOBALS_PLACEHOLDER_X
# Installation method
export INST64_X_APP_NAME_CAPS_X_METHOD="${INST64_X_APP_NAME_CAPS_X_METHOD:-GEM}"
export INST64_X_APP_NAME_CAPS_X_GEM_BIN="${INST64_X_APP_NAME_CAPS_X_GEM_BIN:-/usr/bin/gem}"
export INST64_X_APP_NAME_CAPS_X_GCC_BIN="${INST64_X_APP_NAME_CAPS_X_GCC_BIN:-/usr/bin/gcc}"

# X_INSTALL_PLACEHOLDER_X
  bl64_msg_show_task 'deploy application'
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'GEM' ]]; then
    inst64_X_APP_NAME_X_install_with_gem
  fi

# X_INIT_PLACEHOLDER_X
  bl64_os_check_version \
    "${X_BL64_OS_ID_X}" &&
    bl64_fmt_check_value_in_list 'invalid installation method for the parameter INST64_X_APP_NAME_CAPS_X_METHOD' \
      "$INST64_X_APP_NAME_CAPS_X_METHOD" \
      'GEM' &&
    bl64_check_privilege_not_root ||
    return $?

  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'GEM' ]]; then
    bl64_check_command "$INST64_X_APP_NAME_CAPS_X_GEM_BIN" &&
      bl64_check_command "$INST64_X_APP_NAME_CAPS_X_GCC_BIN" &&
      bl64_check_export 'GEM_HOME' 'Ruby Gem environment is not properly setup' ||
      return $?
  fi

# X_SELECT_PKG_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'GEM' ]]; then
    INST64_X_APP_NAME_CAPS_X_PACKAGES="X_GEM_PACKAGE_LIST_X"
  fi

# X_VERIFY_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'GEM' ]]; then
# example #    "${GEM_HOME}/bin/${INST64_X_APP_NAME_CAPS_X_CLI_NAME}" --version
  fi
