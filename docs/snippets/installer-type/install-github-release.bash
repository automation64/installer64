# Snippet: install-github-release-3.3.0

# X_IMPORTS_PLACEHOLDER_X
# shellcheck source-path=lib/bl64 disable=SC2015
source "${INST64_BASHLIB64}/bashlib64-module-xsv.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-bsh.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-rxtx.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-api.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-vcs.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-txt.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-fmt.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-fs.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-arc.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-core.bash" ||

# X_GLOBALS_PLACEHOLDER_X
declare INST64_X_APP_NAME_CAPS_X_PLATFORM="${INST64_X_APP_NAME_CAPS_X_PLATFORM:-}"
declare INST64_X_APP_NAME_CAPS_X_TARGET=''
declare INST64_X_APP_NAME_CAPS_X_VERSION="${INST64_X_APP_NAME_CAPS_X_VERSION:-latest}"
# Installation method
declare INST64_X_APP_NAME_CAPS_X_METHOD="${INST64_X_APP_NAME_CAPS_X_METHOD:-BINARY}"

declare INST64_X_APP_NAME_CAPS_X_REPO_NAME='X_REPO_NAME_X'
declare INST64_X_APP_NAME_CAPS_X_REPO_OWNER='X_REPO_OWNER_X'

# X_STAND_ALONE_FUNCTIONS_X #
function inst64_X_APP_NAME_X_install_binary_release() {
  bl64_dbg_app_show_function
  local work_path=''
  local app_target_mode='0755'
  local app_target_owner='root'
  local app_cli_mode='0755'
  local app_cli_source="${INST64_X_APP_NAME_CAPS_X_CLI_NAME}"
  local app_work_path="${INST64_X_APP_NAME_CAPS_X_CLI_NAME}-${INST64_X_APP_NAME_CAPS_X_PLATFORM}/${app_cli_source}"

  if bl64_lib_flag_is_enabled "$INST64_SYSTEM_WIDE"; then
    INST64_X_APP_NAME_CAPS_X_CLI_PATH="${INST64_LOCAL_BIN}/${INST64_X_APP_NAME_CAPS_X_CLI_NAME}"
  else
    INST64_X_APP_NAME_CAPS_X_CLI_PATH="${INST64_X_APP_NAME_CAPS_X_TARGET}/${INST64_X_APP_NAME_CAPS_X_CLI_NAME}"
    app_target_owner="$BL64_VAR_DEFAULT"
  fi

  bl64_msg_show_task 'download application'
  work_path="$(bl64_fs_create_tmpdir)" || return $?
  bl64_rxtx_github_get_asset \
    "$INST64_X_APP_NAME_CAPS_X_REPO_OWNER" "$INST64_X_APP_NAME_CAPS_X_REPO_NAME" "$INST64_X_APP_NAME_CAPS_X_VERSION" "$INST64_X_APP_NAME_CAPS_X_PACKAGES" "${work_path}/${INST64_X_APP_NAME_CAPS_X_PACKAGES}" &&
    bl64_arc_open_tar "${work_path}/${INST64_X_APP_NAME_CAPS_X_PACKAGES}" "${work_path}" ||
    return $?

  bl64_msg_show_task 'deploy application'
  bl64_fs_dir_create "$app_target_mode" "$app_target_owner" "$app_target_owner" "$INST64_X_APP_NAME_CAPS_X_TARGET" &&
    bl64_fs_path_copy "$app_cli_mode" "$BL64_VAR_DEFAULT" "$app_target_owner" "$app_target_owner" "$INST64_X_APP_NAME_CAPS_X_TARGET" "${work_path}/${app_work_path}" ||
    return $?

  if bl64_lib_flag_is_enabled "$INST64_SYSTEM_WIDE"; then
    bl64_msg_show_task "publish application to searchable path (${INST64_X_APP_NAME_CAPS_X_CLI_PATH})"
    # shellcheck disable=SC2086
    bl64_fs_symlink_create "${INST64_X_APP_NAME_CAPS_X_TARGET}/${app_cli_source}" "$INST64_X_APP_NAME_CAPS_X_CLI_PATH" "$BL64_VAR_ON" ||
      return $?
  fi

  bl64_msg_show_task 'cleanup temporary files'
  bl64_fs_rm_tmpdir "$work_path"
  return 0
}

# X_INSTALL_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'BINARY' ]]; then
    inst64_X_APP_NAME_X_install_binary_release
  fi

# X_SELECT_PKG_PLACEHOLDER_X
  local package_prefix=''
  local package_sufix=''
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'BINARY' ]]; then
    if [[ "$INST64_X_APP_NAME_CAPS_X_VERSION" == 'latest' ]]; then
      INST64_X_APP_NAME_CAPS_X_VERSION="$(bl64_vcs_github_release_get_latest "$INST64_X_APP_NAME_CAPS_X_REPO_OWNER" "$INST64_X_APP_NAME_CAPS_X_REPO_NAME")" ||
        return $?
    fi
    package_prefix='X_PACKAGE_PREFIX_X'
    package_sufix='X_PACKAGE_SUFIX_X'
    # X_PACKAGE_NAME_PLACEHOLDER_X
  fi

# X_PREPARE_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'BINARY' ]]; then
    inst64_X_APP_NAME_X_select_platform &&
      inst64_X_APP_NAME_X_select_packages &&
      bl64_arc_setup
  fi

# X_INIT_PLACEHOLDER_X
  INST64_X_APP_NAME_CAPS_X_TARGET="${INST64_X_APP_NAME_CAPS_X_TARGET:-${INST64_OPT_ROOT}/X_APP_NAME_X}"
  bl64_fmt_check_value_in_list 'invalid installation method for the parameter INST64_X_APP_NAME_CAPS_X_METHOD' \
    "$INST64_X_APP_NAME_CAPS_X_METHOD" \
    'BINARY' ||
    return $?

  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'BINARY' ]]; then
    if bl64_lib_flag_is_enabled "$INST64_SYSTEM_WIDE"; then
      bl64_check_privilege_root ||
        return $?
    fi
    bl64_os_check_compatibility \
      # X_OS_VERSION_TAG_X
  fi

# X_PLATFORM_SELECTION_PLACEHOLDER_X #
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'BINARY' ]]; then
      # X_PLATFORM_SELECTION_PLACEHOLDER_X #
  fi
