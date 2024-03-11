# Snippet: install-external-package-3.3.0

# X_IMPORTS_PLACEHOLDER_X
# shellcheck source-path=lib/bl64 disable=SC2015
source "${INST64_BASHLIB64}/bashlib64-module-cryp.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-fs.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-pkg.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-core.bash" ||

# X_GLOBALS_PLACEHOLDER_X
# Installation method
export INST64_X_APP_NAME_CAPS_X_METHOD="${INST64_X_APP_NAME_CAPS_X_METHOD:-EXTERNAL}"
# Enable development packages?
export INST64_X_APP_NAME_CAPS_X_DEVELOPMENT="${INST64_X_APP_NAME_CAPS_X_DEVELOPMENT:-$BL64_VAR_OFF}"

export INST64_X_APP_NAME_CAPS_X_REPOSITORY_NAME='X_REPO_NAME_X'
export INST64_X_APP_NAME_CAPS_X_SOURCE_X_REPO_TYPE_CAPS_X='X_REPO_URL_X'
export INST64_X_APP_NAME_CAPS_X_REPOSITORY_KEY_X_REPO_TYPE_CAPS_X='X_KEY_URL_X'

# X_STAND_ALONE_FUNCTIONS_X #
function inst64_X_APP_NAME_X_add_repository() {
  bl64_dbg_app_show_function
  local repository_url=''
  local repository_key=''
  local repository_extra_1=''
  local repository_extra_2=''

  if bl64_os_match "${BL64_OS_X_OS_TAG_X}-X_OS_VERSION_X"; then
    # delete-me # For YUM. Remove if not used
    repository_url="${INST64_X_APP_NAME_CAPS_X_SOURCE_X_REPO_TYPE_CAPS_X}"
    repository_key="$INST64_X_APP_NAME_CAPS_X_REPOSITORY_KEY_X_REPO_TYPE_CAPS_X"
  elif bl64_os_match "${BL64_OS_X_OS_TAG_X}-X_OS_VERSION_X"; then
    # delete-me # For APT. Remove if not used
    repository_url="${INST64_X_APP_NAME_CAPS_X_SOURCE_X_REPO_TYPE_CAPS_X}"
    repository_key="$INST64_X_APP_NAME_CAPS_X_REPOSITORY_KEY_X_REPO_TYPE_CAPS_X"
    repository_extra_1='X_EXTRA1_X'
    repository_extra_2='X_EXTRA2_X'
  fi

  bl64_msg_show_task 'Add external package repository'
  bl64_pkg_repository_add "$INST64_X_APP_NAME_CAPS_X_REPOSITORY_NAME" \
    "$repository_url" "$repository_key" \
    "$repository_extra_1" "$repository_extra_2"
}

function inst64_X_APP_NAME_X_install_external_packages() {
  bl64_dbg_app_show_function
  bl64_msg_show_task 'deploy packages'
  INST64_X_APP_NAME_CAPS_X_CLI_PATH="/usr/bin/${INST64_X_APP_NAME_CAPS_X_CLI_NAME}"
  # shellcheck disable=SC2086
  bl64_pkg_deploy $INST64_X_APP_NAME_CAPS_X_PACKAGES
}

# X_INSTALL_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'EXTERNAL' ]]; then
    inst64_X_APP_NAME_X_install_external_packages
  fi

# X_SELECT_PKG_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'EXTERNAL' ]]; then
    if bl64_os_match "${BL64_OS_X_OS_TAG_X}-X_OS_VERSION_X"; then
      INST64_X_APP_NAME_CAPS_X_PACKAGES='X_OS_PACKAGE_LIST_X'
      bl64_lib_flag_is_enabled "$INST64_X_APP_NAME_CAPS_X_DEVELOPMENT" &&
        INST64_X_APP_NAME_CAPS_X_PACKAGES="${INST64_X_APP_NAME_CAPS_X_PACKAGES} X_OS_PACKAGE_LIST_X"
    fi
  fi

# X_PREPARE_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'EXTERNAL' ]]; then
    bl64_pkg_setup &&
      inst64_X_APP_NAME_X_add_repository
  fi

# X_INIT_PLACEHOLDER_X
  bl64_fmt_check_value_in_list 'invalid installation method for the parameter INST64_TERRAFORM_METHOD' \
    "$INST64_TERRAFORM_METHOD" \
    'EXTERNAL' ||
    return $?

  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'EXTERNAL' ]]; then
    bl64_check_privilege_root &&
    bl64_os_check_compatibility \
      "${BL64_OS_X_OS_TAG_X}-X_OS_VERSION_X"
  fi
