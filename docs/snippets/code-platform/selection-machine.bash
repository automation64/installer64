  # X_PLATFORM_SELECTION_PLACEHOLDER_X #
      if [[ "$BL64_OS_TYPE" == "$BL64_OS_TYPE_MACOS" && "$BL64_OS_MACHINE" == "$BL64_OS_MACHINE_ARM64" ]]; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='darwin/arm64'
      elif [[ "$BL64_OS_TYPE" == "$BL64_OS_TYPE_LINUX" && "$BL64_OS_MACHINE" == "$BL64_OS_MACHINE_AMD64" ]]; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='linux/amd64'
  

# Alternative Machine

      if [[ "$BL64_OS_TYPE" == "$BL64_OS_TYPE_MACOS" && "$BL64_OS_MACHINE" == "$BL64_OS_MACHINE_ARM64" ]]; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='Darwin_arm64'
      elif [[ "$BL64_OS_TYPE" == "$BL64_OS_TYPE_LINUX" && "$BL64_OS_MACHINE" == "$BL64_OS_MACHINE_AMD64" ]]; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='Linux_amd64'
  

# Alternative Machine

      if [[ "$BL64_OS_TYPE" == "$BL64_OS_TYPE_MACOS" && "$BL64_OS_MACHINE" == "$BL64_OS_MACHINE_ARM64" ]]; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='macOS_amd64'
      elif [[ "$BL64_OS_TYPE" == "$BL64_OS_TYPE_LINUX" && "$BL64_OS_MACHINE" == "$BL64_OS_MACHINE_AMD64" ]]; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='linux_amd64'
  

# Alternative Machine

      if [[ "$BL64_OS_TYPE" == "$BL64_OS_TYPE_MACOS" && "$BL64_OS_MACHINE" == "$BL64_OS_MACHINE_ARM64" ]]; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='darwin_arm64'
      elif [[ "$BL64_OS_TYPE" == "$BL64_OS_TYPE_LINUX" && "$BL64_OS_MACHINE" == "$BL64_OS_MACHINE_AMD64" ]]; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='linux_amd64'
  

# Alternative Machine

      if [[ "$BL64_OS_TYPE" == "$BL64_OS_TYPE_MACOS" && "$BL64_OS_MACHINE" == "$BL64_OS_MACHINE_ARM64" ]]; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='darwin-arm64'
      elif [[ "$BL64_OS_TYPE" == "$BL64_OS_TYPE_LINUX" && "$BL64_OS_MACHINE" == "$BL64_OS_MACHINE_AMD64" ]]; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='linux-amd64'
  

# Alternative Machine

      if [[ "$BL64_OS_TYPE" == "$BL64_OS_TYPE_MACOS" && "$BL64_OS_MACHINE" == "$BL64_OS_MACHINE_ARM64" ]]; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='macos-arm64'
      elif [[ "$BL64_OS_TYPE" == "$BL64_OS_TYPE_LINUX" && "$BL64_OS_MACHINE" == "$BL64_OS_MACHINE_AMD64" ]]; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='linux-x86_64'
  

# Alternative Machine

      if [[ "$BL64_OS_TYPE" == "$BL64_OS_TYPE_MACOS" && "$BL64_OS_MACHINE" == "$BL64_OS_MACHINE_ARM64" ]]; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='darwin-arm64'
      elif [[ "$BL64_OS_TYPE" == "$BL64_OS_TYPE_LINUX" && "$BL64_OS_MACHINE" == "$BL64_OS_MACHINE_AMD64" ]]; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='linux-x64'
  

# Alternative MUSL

      if [[ "$BL64_OS_TYPE" == "$BL64_OS_TYPE_MACOS" && "$BL64_OS_MACHINE" == "$BL64_OS_MACHINE_ARM64" ]]; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='aarch64-apple-darwin' 
      elif bl64_os_is_distro "${BL64_OS_ALP}" "${BL64_OS_DEB}" "${BL64_OS_SLES}" "${BL64_OS_UB}"; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='x86_64-unknown-linux-musl'
      elif bl64_os_is_distro "${BL64_OS_ALM}" "${BL64_OS_AMZ}" "${BL64_OS_CNT}" "${BL64_OS_FD}" "${BL64_OS_KL}" "${BL64_OS_OL}" "${BL64_OS_RCK}" "${BL64_OS_RHEL}"; then
        INST64_X_APP_NAME_CAPS_X_PLATFORM='x86_64-unknown-linux-gnu'
  