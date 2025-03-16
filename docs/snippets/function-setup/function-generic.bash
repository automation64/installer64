# Snippet: setup-environment-2.0.0

# X_IMPORTS_PLACEHOLDER_X
  source "${INST64_BASHLIB64}/bashlib64-module-xsv.bash" &&
  source "${INST64_BASHLIB64}/bashlib64-module-bsh.bash" &&

# X_GLOBALS_PLACEHOLDER_X
declare INST64_X_APP_NAME_CAPS_X_ENV='X_ENV_FILE_NAME_X.env'

# X_STAND_ALONE_FUNCTIONS_X #
#######################################
# Perform post installation setup
#
# Arguments:
#   None. Parameters are imported from Globals
# Outputs:
#   Setup progress
# Returns:
#   0: setup completed ok
#   >0: unable to setup
#######################################
function inst64_X_APP_NAME_X_setup() {
  bl64_dbg_app_show_function
  local mode='0644'

  bl64_msg_show_task 'setup application environment'
  if bl64_lib_flag_is_enabled "$INST64_SYSTEM_WIDE"; then
    INST64_X_APP_NAME_CAPS_X_ENV="${INST64_LOCAL_BIN}/${INST64_X_APP_NAME_CAPS_X_ENV}"
  else
    INST64_X_APP_NAME_CAPS_X_ENV="${BL64_BSH_XDG_PATH_BIN}/${INST64_X_APP_NAME_CAPS_X_ENV}"
  fi
  bl64_msg_show_subtask "create shell env file (${INST64_X_APP_NAME_CAPS_X_ENV})"
  # shellcheck disable=SC2016
  printf '#!/usr/bin/env sh
#
# X_APP_FULL_NAME_X
#
# * Define application environment variables
#

X_SHELL_VAR_DECLARATIONS_PLACEHOLDER_X
' >"$INST64_X_APP_NAME_CAPS_X_ENV" &&
    bl64_fs_run_chmod "$mode" "$INST64_X_APP_NAME_CAPS_X_ENV" ||
    return $?

  if ! bl64_lib_flag_is_enabled "$INST64_SYSTEM_WIDE"; then
    if bl64_bsh_env_store_is_present; then
      bl64_bsh_env_store_publish "$INST64_X_APP_NAME_CAPS_X_ENV" ||
        return $?
    fi
  fi
  return 0
}

# X_MAIN_POST_VERIFY_PLACEHOLDER_X
  inst64_X_APP_NAME_X_setup &&
