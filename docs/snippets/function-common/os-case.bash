case "$BL64_OS_DISTRO" in
X_CASE_X) ;;
*)
  bl64_os_raise_platform_unsupported
  return $?
  ;;
esac
