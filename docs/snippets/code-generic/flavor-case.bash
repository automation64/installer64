# shellcheck disable=SC2249
case "$BL64_OS_FLAVOR" in
  "$BL64_OS_FLAVOR_ALPINE")
    ;;
  "$BL64_OS_FLAVOR_DEBIAN")
    ;;
  "$BL64_OS_FLAVOR_FEDORA")
    ;;
  "$BL64_OS_FLAVOR_MACOS")
    ;;
  "$BL64_OS_FLAVOR_REDHAT")
    ;;
  "$BL64_OS_FLAVOR_SUSE")
    ;;
  *)
    inst64_lib_alert_incompatible_platform
    return $?
    ;;
esac
