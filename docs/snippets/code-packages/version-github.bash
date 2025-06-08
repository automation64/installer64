    if [[ "$INST64_CURSOR_VERSION" == 'latest' ]]; then
      INST64_CURSOR_VERSION="$(bl64_vcs_github_release_get_latest "$INST64_GH_REPO_OWNER" "$INST64_GH_REPO_NAME")" ||
        return $?
    fi
