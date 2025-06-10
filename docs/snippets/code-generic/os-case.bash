case "$BL64_OS_DISTRO" in
"${BL64_OS_ALM}") ;;
"${BL64_OS_ALP}") ;;
"${BL64_OS_AMZ}") ;;
"${BL64_OS_CNT}") ;;
"${BL64_OS_DEB}") ;;
"${BL64_OS_FD}") ;;
"${BL64_OS_KL}") ;;
"${BL64_OS_MACOS}") ;;
"${BL64_OS_MCOS}") ;;
"${BL64_OS_OL}") ;;
"${BL64_OS_RCK}") ;;
"${BL64_OS_RHEL}") ;;
"${BL64_OS_SLES}") ;;
"${BL64_OS_UB}") ;;
*)
  inst64_lib_alert_incompatible_platform
  return $?
  ;;
esac
