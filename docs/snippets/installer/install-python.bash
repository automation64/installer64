# Snippet: install-python-4.0.0

# X_IMPORTS_PLACEHOLDER_X
# shellcheck source-path=lib/bl64 disable=SC2015
source "${INST64_BASHLIB64}/bashlib64-module-py.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-txt.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-fmt.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-fs.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-xsv.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-bsh.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-core.bash" ||

# X_GLOBALS_PLACEHOLDER_X
export INST64_X_APP_NAME_CAPS_X_VERSION="${INST64_X_APP_NAME_CAPS_X_VERSION:-latest}"
# Installation method
export INST64_X_APP_NAME_CAPS_X_METHOD="${INST64_X_APP_NAME_CAPS_X_METHOD:-PIP}"

export INST64_X_APP_NAME_CAPS_X_PIPX_BIN="${INST64_X_APP_NAME_CAPS_X_PIPX_BIN:-pipx}"

# X_STAND_ALONE_FUNCTIONS_X #
function inst64_X_APP_NAME_X_install_with_pip() {
  bl64_dbg_app_show_function

  bl64_msg_show_task 'deploy application'
  INST64_X_APP_NAME_CAPS_X_CLI_PATH="${HOME}/.local/bin/${INST64_X_APP_NAME_CAPS_X_CLI_NAME}"
  # shellcheck disable=SC2086
  bl64_fs_set_umask "$BL64_FS_UMASK_RW_USER_RO_ALL" &&
    bl64_py_pip_usr_deploy $INST64_X_APP_NAME_CAPS_X_PACKAGES ||
    return $?
  if [[ -n "$INST64_X_APP_NAME_CAPS_X_PACKAGES_POST" ]]; then
    # shellcheck disable=SC2086
    bl64_py_pip_usr_install $INST64_X_APP_NAME_CAPS_X_PACKAGES_POST ||
      return $?
  fi
  return 0
}

function inst64_X_APP_NAME_X_install_with_pipx() {
  bl64_dbg_app_show_function

  bl64_msg_show_task 'deploy application'
  INST64_X_APP_NAME_CAPS_X_CLI_PATH="${INST64_X_APP_NAME_CAPS_X_CLI_NAME}"
  # shellcheck disable=SC2086
  "$INST64_X_APP_NAME_CAPS_X_PIPX_BIN" install $INST64_X_APP_NAME_CAPS_X_PACKAGES ||
    return $?
  if [[ -n "$INST64_X_APP_NAME_CAPS_X_PACKAGES_POST" ]]; then
    # shellcheck disable=SC2086
    "$INST64_X_APP_NAME_CAPS_X_PIPX_BIN" inject $INST64_X_APP_NAME_CAPS_X_PACKAGES $INST64_X_APP_NAME_CAPS_X_PACKAGES_POST ||
      return $?
  fi
  return 0
}

# X_INSTALL_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'PIPX' ]]; then
    inst64_X_APP_NAME_X_install_with_pipx
  elif [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'PIP' ]]; then
    inst64_X_APP_NAME_X_install_with_pip
  fi

# X_SELECT_PKG_PLACEHOLDER_X
  local version_legacy='X_LEGACY_VERSION_X'
  local version_target=''

  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'PIPX' || "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'PIP' ]]; then
    # optional # if bl64_os_match "${X_BL64_OS_ID_X}"; then
    # optional #   bl64_msg_show_alert "fixing package version_target for compatibility to target OS (${version_legacy})"
    # optional #   version_target="==${version_legacy}.*"
    # optional # elif [[ "$INST64_X_APP_NAME_CAPS_X_VERSION" == 'latest' ]]; then
    if [[ "$INST64_X_APP_NAME_CAPS_X_VERSION" == 'latest' ]]; then
      version_target=''
    else
      version_target="==${INST64_X_APP_NAME_CAPS_X_VERSION}.*"
    fi
    INST64_X_APP_NAME_CAPS_X_PACKAGES="X_PYTHON_MODULE_X${version_target}"
  fi

# X_PREPARE_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'PIPX' || "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'PIP' ]]; then
    bl64_py_setup
  fi

# X_INIT_PLACEHOLDER_X
  bl64_fmt_check_value_in_list 'invalid installation method for the parameter INST64_X_APP_NAME_CAPS_X_METHOD' \
    "$INST64_X_APP_NAME_CAPS_X_METHOD" \
    'PIP' 'PIPX' ||
    return $?

  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'PIPX' || "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'PIP' ]]; then
    if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'PIPX' ]]; then
      bl64_bsh_command_is_executable "$INST64_X_APP_NAME_CAPS_X_PIPX_BIN" ||
      return $?
    fi
    bl64_check_privilege_not_root &&
      bl64_os_check_compatibility \
        "${BL64_OS_X_OS_TAG_X}-X_OS_VERSION_X"
  fi
