# shellcheck disable=SC2249
case "$BL64_OS_FLAVOR" in
  "$BL64_OS_FLAVOR_X_FLAVOR_X") ;;
  *)
    bl64_os_raise_platform_unsupported
    return $?
    ;;
esac
