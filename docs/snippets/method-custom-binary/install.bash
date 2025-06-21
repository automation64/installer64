function inst64_install_binary() {
  bl64_dbg_app_show_function

  inst64_lib_task_binary_download &&
    bl64_rxtx_web_get_file \
      "${INST64_WEB_REPO_URL}/${INST64_WEB_REPO_PATH}/${INST64_PKG_MAIN}" \
      "${INST64_WORK_PATH_STAGING}/${INST64_PKG_MAIN}" \
      'YES' \
      "$INST64_TARGET_MODE" &&
    bl64_arc_open_tar "${INST64_WORK_PATH_STAGING}/${INST64_PKG_MAIN}" "${INST64_WORK_PATH_STAGING}" ||
    return $?

  inst64_lib_task_deploy
  "$INST64_APP_INSTALLER" ||
    return $?
  inst64_lib_task_binary_cleanup
}
