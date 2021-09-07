vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO jellycat-io/jelly
  REF v0.0.1
  SHA512 630afc80626368507101d1eee3213c34294f1227d8589e091e30cf68b36f6ba10e0f9489c7ac87dac3afc266e851c1b694e8bf2dd3bf1b35b6ff1904e1df9915
  HEAD_REF main
)

vcpkg_configure_cmake(
  SOURCE_PATH "${SOURCE_PATH}"
  PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR/debug/include}")

file(
  INSTALL "${SOURCE_PATH}/LICENSE"
  DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
  RENAME copyright
)