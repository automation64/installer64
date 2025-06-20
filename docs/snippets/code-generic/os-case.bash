case "$BL64_OS_DISTRO" in
X_CASE_X) ;;
*)
  inst64_lib_alert_incompatible_platform
  return $?
  ;;
esac
