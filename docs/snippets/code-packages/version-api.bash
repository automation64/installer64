function inst64_select_packages_version() {
  bl64_dbg_app_show_function
  local package_version=''
  package_version="$(
    bl64_api_call \
      "$INST64_WEB_REPO_URL" \
      'X_PATH_X' \
      "$BL64_API_METHOD_GET" |
      X_FILTERS_X
  )"
  if [[ -n "$package_version" ]]; then
    echo "$package_version"
  else
    bl64_msg_show_error "Unable to detect package version (${INST64_WEB_REPO_URL})"
    return $BL64_LIB_ERROR_TASK_FAILED
  fi
}
