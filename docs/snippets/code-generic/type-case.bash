case "$BL64_OS_TYPE" in
"${BL64_OS_TYPE_LINUX}") ;;
"${BL64_OS_TYPE_MACOS}") ;;
*)
  bl64_os_raise_platform_unsupported
  return $?
  ;;
esac
