# Snippet: install-os-package-2.5.0

# X_IMPORTS_PLACEHOLDER_X
# shellcheck source-path=lib/bl64 disable=SC2015
source "${INST64_BASHLIB64}/bashlib64-module-cryp.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-fs.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-pkg.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-core.bash" ||

# X_GLOBALS_PLACEHOLDER_X
# Installation method
export INST64_X_APP_NAME_CAPS_X_METHOD="${INST64_X_APP_NAME_CAPS_X_METHOD:-NATIVE}"
# Enable development packages?
export INST64_X_APP_NAME_CAPS_X_DEVELOPMENT="${INST64_X_APP_NAME_CAPS_X_DEVELOPMENT:-$BL64_VAR_OFF}"

# X_STAND_ALONE_FUNCTIONS_X #
function inst64_X_APP_NAME_X_install_os_packages() {
  bl64_dbg_app_show_function
  bl64_msg_show_task 'deploy packages'
  INST64_X_APP_NAME_CAPS_X_CLI_PATH="/usr/bin/${INST64_X_APP_NAME_CAPS_X_CLI_NAME}"
  # shellcheck disable=SC2086
  bl64_pkg_deploy $INST64_X_APP_NAME_CAPS_X_PACKAGES
}


# X_INSTALL_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'NATIVE' ]]; then
    inst64_X_APP_NAME_X_install_os_packages
  fi

# X_SELECT_PKG_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'NATIVE' ]]; then
    if bl64_os_match "${BL64_OS_X_OS_TAG_X}-X_OS_VERSION_X"; then
      INST64_X_APP_NAME_CAPS_X_PACKAGES='X_OS_PACKAGE_LIST_X'
      bl64_lib_flag_is_enabled "$INST64_X_APP_NAME_CAPS_X_DEVELOPMENT" &&
        INST64_X_APP_NAME_CAPS_X_PACKAGES="${INST64_X_APP_NAME_CAPS_X_PACKAGES} X_OS_PACKAGE_LIST_X"
    fi
  fi

# X_PREPARE_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'NATIVE' ]]; then
    bl64_pkg_setup
  fi

# X_INIT_PLACEHOLDER_X
  bl64_fmt_check_value_in_list 'invalid installation method for the parameter INST64_TERRAFORM_METHOD' \
    "$INST64_TERRAFORM_METHOD" \
    'NATIVE' ||
    return $?

  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'NATIVE' ]]; then
    bl64_check_privilege_root &&
    bl64_os_check_compatibility \
      "${BL64_OS_X_OS_TAG_X}-X_OS_VERSION_X"
  fi
