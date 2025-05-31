function inst64_X_APP_NAME_X_install_binary() {
  bl64_dbg_app_show_function
  local work_path=''
  local app_work_path="${INST64_CLI_NAME}"

  bl64_msg_show_task 'download application'
  work_path="$(bl64_fs_create_tmpdir)" || return $?
  bl64_rxtx_github_get_asset \
    "$INST64_GH_REPO_OWNER" "$INST64_GH_REPO_NAME" "$INST64_X_APP_NAME_CAPS_X_VERSION" "$INST64_PKG_MAIN" "${work_path}/${INST64_PKG_MAIN}" &&
    bl64_arc_open_tar "${work_path}/${INST64_PKG_MAIN}" "${work_path}" ||
    return $?

  bl64_msg_show_task 'deploy application'
  bl64_fs_dir_create "$INST64_TARGET_MODE" "$INST64_TARGET_OWNER" "$INST64_TARGET_GROUP" "$INST64_X_APP_NAME_CAPS_X_TARGET" &&
    bl64_fs_path_copy "$INST64_CLI_MODE" "$INST64_TARGET_MODE" "$INST64_TARGET_OWNER" "$INST64_TARGET_GROUP" "$INST64_X_APP_NAME_CAPS_X_TARGET" "${work_path}/${app_work_path}" &&
    echo "$INST64_X_APP_NAME_CAPS_X_VERSION" >"$INST64_STATUS_FLAG" ||
    return $?

  bl64_msg_show_task 'cleanup temporary files'
  bl64_fs_rm_tmpdir "$work_path"
  return 0
}
