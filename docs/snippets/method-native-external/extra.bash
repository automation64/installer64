function inst64_prepare_repository() {
  bl64_dbg_app_show_function
  local repository_url=''
  local repository_key=''
  local repository_apt_suite=''
  local repository_apt_component=''

  if bl64_os_is_flavor "$BL64_OS_FLAVOR_DEBIAN"; then
    repository_url="${INST64_OS_SOURCE_APT}"
    repository_key="$INST64_OS_REPO_KEY_APT"
  elif bl64_os_is_flavor "$BL64_OS_FLAVOR_FEDORA" || bl64_os_is_flavor "$BL64_OS_FLAVOR_REDHAT"; then
    repository_url="${INST64_OS_SOURCE_YUM}"
    repository_key="$INST64_OS_REPO_KEY_YUM"
  fi

  inst64_lib_pkg_repo_add \
    "$repository_url" "$repository_key" \
    "$repository_apt_suite" "$repository_apt_component"
}
