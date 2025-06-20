# shellcheck disable=SC2249
case "$BL64_OS_FLAVOR" in
  X_CASE_X) ;;
  *)
    inst64_lib_alert_incompatible_platform
    return $?
    ;;
esac
