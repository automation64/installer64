# Snippet: install-git-repo-1.0.0

# X_IMPORTS_PLACEHOLDER_X
# shellcheck source-path=lib/bl64 disable=SC2015
source "${INST64_BASHLIB64}/bashlib64-module-rxtx.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-api.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-vcs.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-txt.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-fmt.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-fs.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-core.bash" ||

# X_GLOBALS_PLACEHOLDER_X
export INST64_X_APP_NAME_CAPS_X_GIT_SERVER="${INST64_X_APP_NAME_CAPS_X_GIT_SERVER:-X_GIT_SERVER_X}"
export INST64_X_APP_NAME_CAPS_X_GIT_REPO="${INST64_X_APP_NAME_CAPS_X_GIT_REPO:-X_GIT_REPO_X}"
export INST64_X_APP_NAME_CAPS_X_TARGET="${INST64_X_APP_NAME_CAPS_X_TARGET:-${INST64_OPT_ROOT}/X_APP_NAME_X}"
export INST64_X_APP_NAME_CAPS_X_BRANCH="${INST64_X_APP_NAME_CAPS_X_BRANCH:-main}"
# Install system wide? Requires root privilege
export INST64_X_APP_NAME_CAPS_X_SYSTEM_WIDE="${INST64_X_APP_NAME_CAPS_X_SYSTEM_WIDE:-YES}"
# Installation method
export INST64_X_APP_NAME_CAPS_X_METHOD="${INST64_X_APP_NAME_CAPS_X_METHOD:-GIT}"

export INST64_X_APP_NAME_CAPS_X_INSTALLER=''

# X_STAND_ALONE_FUNCTIONS_X #
function inst64_X_APP_NAME_X_install_git_repo() {
  bl64_dbg_app_show_function
  local app_target_mode='0755'

  if bl64_lib_flag_is_enabled "$INST64_X_APP_NAME_CAPS_X_SYSTEM_WIDE"; then
    INST64_X_APP_NAME_CAPS_X_CLI_PATH="${INST64_LOCAL_BIN}/${INST64_X_APP_NAME_CAPS_X_CLI_NAME}"
  else
    INST64_X_APP_NAME_CAPS_X_CLI_PATH="${INST64_X_APP_NAME_CAPS_X_TARGET}/${INST64_X_APP_NAME_CAPS_X_CLI_NAME}"
    app_target_owner="$BL64_VAR_DEFAULT"
  fi

  bl64_msg_show_task 'download application'
  bl64_rxtx_git_get_dir \
    "${INST64_X_APP_NAME_CAPS_X_GIT_SERVER}/${INST64_X_APP_NAME_CAPS_X_GIT_REPO}" \
    '.' \
    "$INST64_X_APP_NAME_CAPS_X_TARGET" \
    "$BL64_VAR_ON" \
    "$INST64_X_APP_NAME_CAPS_X_BRANCH" ||
    return $?

  bl64_msg_show_task 'deploy application'
  "$INST64_X_APP_NAME_CAPS_X_INSTALLER" ||
    return $?
  if bl64_lib_flag_is_enabled "$INST64_X_APP_NAME_CAPS_X_SYSTEM_WIDE"; then
    bl64_fs_fix_permissions "$app_target_mode" "$app_target_mode" \
      "$INST64_X_APP_NAME_CAPS_X_TARGET" ||
      return $?
  fi

  if bl64_lib_flag_is_enabled "$INST64_X_APP_NAME_CAPS_X_SYSTEM_WIDE"; then
    bl64_msg_show_task "publish application to searchable path (${INST64_X_APP_NAME_CAPS_X_CLI_PATH})"
    # shellcheck disable=SC2086
    bl64_fs_create_symlink "${INST64_X_APP_NAME_CAPS_X_TARGET}/${INST64_X_APP_NAME_CAPS_X_CLI_NAME}" "$INST64_X_APP_NAME_CAPS_X_CLI_PATH" "$BL64_VAR_ON" ||
      return $?
  fi

  return 0
}

# X_INSTALL_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'GIT' ]]; then
    inst64_X_APP_NAME_X_install_git_repo
  fi

# X_SELECT_PKG_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'GIT' ]]; then
    INST64_X_APP_NAME_CAPS_X_PACKAGES="$INST64_X_APP_NAME_CAPS_X_GIT_REPO"
  fi

# X_INIT_PLACEHOLDER_X
  bl64_fmt_check_value_in_list 'invalid installation method for the parameter INST64_X_APP_NAME_CAPS_X_METHOD' \
    "$INST64_X_APP_NAME_CAPS_X_METHOD" \
    'GIT' ||
    return $?

  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'GIT' ]]; then
    if bl64_lib_flag_is_enabled "$INST64_X_APP_NAME_CAPS_X_SYSTEM_WIDE"; then
      bl64_check_privilege_root ||
        return $?
    fi
    bl64_os_check_compatibility \
      "${BL64_OS_X_OS_TAG_X}-X_OS_VERSION_X"
  fi
