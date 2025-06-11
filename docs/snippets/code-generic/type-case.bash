case "$BL64_OS_TYPE" in
"${BL64_OS_TYPE_LINUX}") ;;
"${BL64_OS_TYPE_MACOS}") ;;
*)
  inst64_lib_alert_incompatible_platform
  return $?
  ;;
esac
