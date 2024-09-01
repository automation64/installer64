# X_INSTALL_DEPLOYMENT_PLACEHOLDER_X
  bl64_fs_create_dir "$app_target_mode" "$app_target_owner" "$app_target_owner" "$INST64_X_APP_NAME_CAPS_X_TARGET" &&
    bl64_fs_path_copy "$BL64_VAR_DEFAULT" "$app_cli_mode" "$app_target_owner" "$app_target_owner" "$INST64_X_APP_NAME_CAPS_X_TARGET" "${work_path}/${app_cli_source}" ||
    return $?
