function inst64_X_APP_NAME_X_install_git_repo() {
  bl64_dbg_app_show_function

  bl64_msg_show_task 'download application'
  bl64_rxtx_git_get_dir \
    "${INST64_GIT_SERVER}/${INST64_GIT_REPO}" \
    '.' \
    "$INST64_X_APP_NAME_CAPS_X_TARGET" \
    "$BL64_VAR_ON" \
    "$INST64_GIT_BRANCH" ||
    return $?

  bl64_msg_show_task 'deploy application'
  if bl64_lib_flag_is_enabled "$INST64_SYSTEM_WIDE"; then
    bl64_fs_path_permission_set "$INST64_TARGET_MODE" "$INST64_TARGET_MODE" "$INST64_GH_REPO_OWNER" "$INST64_TARGET_GROUP" "$BL64_VAR_ON" \
      "$INST64_X_APP_NAME_CAPS_X_TARGET" ||
      return $?
  fi

  return 0
}
