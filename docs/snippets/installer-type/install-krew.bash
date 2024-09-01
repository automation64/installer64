# Snippet: install-krew-1.0.0

# X_STAND_ALONE_FUNCTIONS_X #
function inst64_X_APP_NAME_X_install_krew_package() {
  bl64_dbg_app_show_function
  bl64_msg_show_task 'deploy application to local kubectl'
  # shellcheck disable=SC2086
  bl64_k8s_run_kubectl_plugin \
    "$INST64_X_APP_NAME_CAPS_X_K8S_KUBECONFIG" \
    krew install \
    $INST64_X_APP_NAME_CAPS_X_PACKAGES
}

# X_GLOBALS_PLACEHOLDER_X
# Installation method
export INST64_X_APP_NAME_CAPS_X_METHOD="${INST64_X_APP_NAME_CAPS_X_METHOD:-KREW}"

export INST64_X_APP_NAME_CAPS_X_K8S_KUBECONFIG="${INST64_X_APP_NAME_CAPS_X_K8S_KUBECONFIG:-$BL64_VAR_DEFAULT}"
export INST64_X_APP_NAME_CAPS_X_KREW_BIN="${HOME}/.krew/bin/kubectl-krew"

# X_INSTALL_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'KREW' ]]; then
    inst64_X_APP_NAME_X_install_krew_package
  fi

# X_INIT_PLACEHOLDER_X
  bl64_os_check_version \
    "${X_BL64_OS_ID_X}" &&
    bl64_fmt_check_value_in_list 'invalid installation method for the parameter INST64_X_APP_NAME_CAPS_X_METHOD' \
      "$INST64_X_APP_NAME_CAPS_X_METHOD" \
      'KREW' &&
    bl64_check_privilege_not_root &&
    bl64_check_command "$INST64_X_APP_NAME_CAPS_X_KREW_BIN"

# X_PREPARE_PLACEHOLDER_X
  bl64_k8s_setup

# X_VERIFY_PLACEHOLDER_X
  bl64_k8s_run_kubectl_plugin "$INST64_X_APP_NAME_CAPS_X_K8S_KUBECONFIG" \
    "$INST64_X_APP_NAME_CAPS_X_CLI_NAME" --version

# X_SELECT_PKG_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'KREW' ]]; then
    INST64_X_APP_NAME_CAPS_X_PACKAGES='X_PACKAGE_LIST_X'
  fi

