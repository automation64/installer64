# Snippet: setup-environment-2.0.0

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
  local env_file="${X_APP_NAME_X}.env"
  local destination=''
  local mode='0644'

  bl64_msg_show_task 'setup application environment'
  if bl64_lib_flag_is_enabled "$INST64_X_APP_NAME_CAPS_X_SYSTEM_WIDE"; then
    destination="${INST64_LOCAL_BIN}/${env_file}"
  else
    destination="${HOME}/.local/bin/${env_file}"
  fi
  bl64_msg_show_subtask "create shell env file (${destination})"
  printf '#!/usr/bin/env sh
#
# Installer64 / X_APP_FULL_NAME_X
#
# * Define application environment variables
#

X_SHELL_VAR_DECLARATIONS_PLACEHOLDER_X
' >"$destination" &&
    bl64_fs_run_chmod "$mode" "$destination"
}

# X_MAIN_POST_VERIFY_PLACEHOLDER_X
  inst64_X_APP_NAME_X_setup &&
