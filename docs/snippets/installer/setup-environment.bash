# Snippet: setup-environment-1.0.0

# X_GLOBALS_PLACEHOLDER_X
export INST64_X_APP_NAME_CAPS_X_ENV_NAME='X_ENV_FILE_NAME_X'

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
  local destination="${INST64_LOCAL_BIN}/installer64-${INST64_X_APP_NAME_CAPS_X_ENV_NAME}.env"
  local mode='0644'

  bl64_msg_show_task 'setup environment'
  bl64_msg_show_subtask "create user setup script (${destination})"
  printf \
    '#!/usr/bin/env sh
#
# Installer64 / X_APP_FULL_NAME_X
#
# * Setup user environment variables
#

X_SHELL_VAR_DECLARATIONS_X
' >"$destination" &&
    bl64_fs_run_chmod "$mode" "$destination"
}

# X_MAIN_POST_VERIFY_PLACEHOLDER_X
  inst64_X_APP_NAME_X_setup &&
