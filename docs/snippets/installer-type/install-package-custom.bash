# Snippet: install-custom-package-4.2.0

# X_IMPORTS_PLACEHOLDER_X
# shellcheck source-path=lib/bl64 disable=SC2015
source "${INST64_BASHLIB64}/bashlib64-module-rxtx.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-xsv.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-api.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-vcs.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-txt.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-fmt.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-fs.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-bsh.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-arc.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-core.bash" ||

# X_GLOBALS_PLACEHOLDER_X
declare INST64_X_APP_NAME_CAPS_X_PLATFORM="${INST64_X_APP_NAME_CAPS_X_PLATFORM:-}"
declare INST64_X_APP_NAME_CAPS_X_SOURCE="${INST64_X_APP_NAME_CAPS_X_SOURCE:-X_APP_REPO_X}"
declare INST64_X_APP_NAME_CAPS_X_TARGET=''
declare INST64_X_APP_NAME_CAPS_X_VERSION="${INST64_X_APP_NAME_CAPS_X_VERSION:-X_APP_VERSION_X}"
# Installation method
declare INST64_X_APP_NAME_CAPS_X_METHOD="${INST64_X_APP_NAME_CAPS_X_METHOD:-CUSTOM}"

declare INST64_X_APP_NAME_CAPS_X_PACKAGE_URL=''
declare INST64_X_APP_NAME_CAPS_X_INSTALLER='X_INSTALLER_X'

# X_STAND_ALONE_FUNCTIONS_X #
function inst64_X_APP_NAME_X_install_custom_package() {
  bl64_dbg_app_show_function
  local work_path=''
  local app_target_mode='0755'
  local app_target_owner='root'
  local app_cli_mode='0755'
  local app_cli_source="${INST64_X_APP_NAME_CAPS_X_CLI_NAME}"

  if bl64_lib_flag_is_enabled "$INST64_SYSTEM_WIDE"; then
    INST64_X_APP_NAME_CAPS_X_CLI_PATH="${INST64_LOCAL_BIN}/${INST64_X_APP_NAME_CAPS_X_CLI_NAME}"
  else
    INST64_X_APP_NAME_CAPS_X_CLI_PATH="${INST64_X_APP_NAME_CAPS_X_TARGET}/${INST64_X_APP_NAME_CAPS_X_CLI_NAME}"
    app_target_owner="$BL64_VAR_DEFAULT"
  fi

  bl64_msg_show_task 'download application'
  work_path="$(bl64_fs_create_tmpdir)" &&
  bl64_rxtx_web_get_file \
    "${INST64_X_APP_NAME_CAPS_X_PACKAGE_URL}/${INST64_X_APP_NAME_CAPS_X_PACKAGES}" \
    "${work_path}/${INST64_X_APP_NAME_CAPS_X_PACKAGES}" \
    'YES' \
    "$app_target_mode" &&
    # X_INSTALL_DOWNLOAD_PLACEHOLDER_X
    return $?

  bl64_msg_show_task 'deploy application'
  # X_INSTALL_DEPLOYMENT_PLACEHOLDER_X

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
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'CUSTOM' ]]; then
    inst64_X_APP_NAME_X_install_custom_package
  fi

# X_SELECT_PKG_PLACEHOLDER_X
  local package_prefix=''
  local package_sufix=''
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'CUSTOM' ]]; then
    package_prefix='X_PACKAGE_PREFIX_X'
    package_sufix='X_PACKAGE_SUFIX_X'
    # X_PACKAGE_NAME_PLACEHOLDER_X
    # X_PACKAGE_URL_PLACEHOLDER_X
    [[ -z "$INST64_X_APP_NAME_CAPS_X_PACKAGE_URL" ]] && bl64_msg_show_error 'unable to determine package download URL' && return 1
  fi

# X_PREPARE_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'CUSTOM' ]]; then
    bl64_arc_setup
  fi

# X_INIT_PLACEHOLDER_X
  INST64_X_APP_NAME_CAPS_X_TARGET="${INST64_X_APP_NAME_CAPS_X_TARGET:-${INST64_OPT_ROOT}/X_APP_NAME_X}"
  bl64_fmt_list_check_membership 'invalid installation method for the parameter INST64_X_APP_NAME_CAPS_X_METHOD' \
    "$INST64_X_APP_NAME_CAPS_X_METHOD" \
    'CUSTOM' ||
    return $?

  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'CUSTOM' ]]; then
    if bl64_lib_flag_is_enabled "$INST64_SYSTEM_WIDE"; then
      bl64_check_privilege_root ||
        return $?
    fi
    bl64_os_check_compatibility \
      # X_OS_VERSION_TAG_X
  fi

  # X_PLATFORM_SELECTION_PLACEHOLDER_X #
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'CUSTOM' ]]; then
      # X_PLATFORM_SELECTION_PLACEHOLDER_X #
  fi
