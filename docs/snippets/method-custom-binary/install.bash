function inst64_install_binary() {
  bl64_dbg_app_show_function

  inst64_lib_task_download
  inst64_lib_staging_create &&
    inst64_lib_web_get_file &&
   inst64_lib_staging_open_tar ||
    return $?

  inst64_lib_task_deploy
  "$INST64_APP_INSTALLER" ||
    return $?
  inst64_lib_task_cleanup
  inst64_lib_staging_remove
}
