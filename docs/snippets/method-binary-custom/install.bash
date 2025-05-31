function inst64_X_APP_NAME_X_install_binary() {
  bl64_dbg_app_show_function
  local work_path=''
  local app_work_path="${INST64_CLI_NAME}"

  bl64_msg_show_task 'download application'
  work_path="$(bl64_fs_create_tmpdir)" || return $?
  bl64_rxtx_web_get_file \
    "${INST64_WEB_REPO_URL}/${INST64_PKG_MAIN}" \
    "${work_path}/${INST64_PKG_MAIN}" \
    'YES' \
    "$app_target_mode" &&
  bl64_arc_open_tar "${work_path}/${INST64_PKG_MAIN}" "${work_path}" ||
  return $?

  bl64_msg_show_task 'deploy application'
  "$INST64_APP_INSTALLER" ||
    return $?

  bl64_msg_show_task 'cleanup temporary files'
  bl64_fs_rm_tmpdir "$work_path"
  return 0
}
