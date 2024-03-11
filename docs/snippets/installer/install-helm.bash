# Snippet: 2.0.0
# X_STAND_ALONE_FUNCTIONS_X #
function inst64_X_APP_NAME_X_add_helm_repo() {
  bl64_dbg_app_show_function
  bl64_hlm_repo_add "$INST64_X_APP_NAME_CAPS_X_HELM_REPO" "$INST64_X_APP_NAME_CAPS_X_HELM_SOURCE"
}

function inst64_X_APP_NAME_X_install_helm_chart() {
  bl64_dbg_app_show_function
  bl64_msg_show_task 'deploy application to K8S'
    bl64_hlm_chart_upgrade \
      "$INST64_X_APP_NAME_CAPS_X_K8S_KUBECONFIG" \
      "$INST64_X_APP_NAME_CAPS_X_K8S_NAMESPACE" \
      "$INST64_X_APP_NAME_CAPS_X_PACKAGES" \
      "${INST64_X_APP_NAME_CAPS_X_HELM_REPO}/${INST64_X_APP_NAME_CAPS_X_PACKAGES}"
}

# X_GLOBALS_PLACEHOLDER_X
# Installation method
export INST64_X_APP_NAME_CAPS_X_METHOD="${INST64_X_APP_NAME_CAPS_X_METHOD:-HELM}"
# Full path to the kubectl config file with valid credentials
export INST64_X_APP_NAME_CAPS_X_K8S_KUBECONFIG="{INST64_X_APP_NAME_CAPS_X_K8S_KUBECONFIG:-${HOME}/.kube/config}"

export INST64_X_APP_NAME_CAPS_X_HELM_REPO='X_REPO_NAME_X'
export INST64_X_APP_NAME_CAPS_X_HELM_SOURCE='X_REPO_SOURCE_X'
export INST64_X_APP_NAME_CAPS_X_K8S_NAMESPACE='X_TARGET_NS_X'

# X_INSTALL_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'HELM' ]]; then
    inst64_X_APP_NAME_X_install_helm_chart
  fi

# X_INIT_PLACEHOLDER_X
  bl64_os_check_version \
    "${X_BL64_OS_ID_X}" &&
    bl64_fmt_check_value_in_list 'invalid installation method for the parameter INST64_X_APP_NAME_CAPS_X_METHOD' \
      "$INST64_X_APP_NAME_CAPS_X_METHOD" \
      'HELM' &&
    bl64_check_privilege_not_root

# X_PREPARE_PLACEHOLDER_X
  bl64_k8s_setup &&
    bl64_hlm_setup
    inst64_X_APP_NAME_X_add_helm_repo

# X_SELECT_PKG_PLACEHOLDER_X
  if [[ "$INST64_X_APP_NAME_CAPS_X_METHOD" == 'HELM' ]]; then
    INST64_X_APP_NAME_CAPS_X_PACKAGES='X_PACKAGE_LIST_X'
  fi
